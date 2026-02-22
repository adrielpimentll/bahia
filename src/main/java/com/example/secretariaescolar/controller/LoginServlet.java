package com.example.secretariaescolar.controller;

import com.example.secretariaescolar.dao.LoginDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        String email = request.getParameter("username");
        String senha = request.getParameter("password");
        String cargo = request.getParameter("cargo");

        LoginDAO loginDAO = new LoginDAO();

        int idTipoUser = 0;
        String proxima = "";
        String paginaLogin = "";

        // Define tipo de usuário e páginas
        if ("aluno".equals(cargo)) {
            idTipoUser = 1;
            proxima = "pages/aluno/dashboard.jsp";
            paginaLogin = "/pages/login/index.jsp";
        }
        else if ("professor".equals(cargo)) {
            idTipoUser = 2;
            proxima = "pages/professor/dashboard.jsp";
            paginaLogin = "/pages/login/login_prof.jsp";
        }
        else if ("adm".equals(cargo)) {
            idTipoUser = 3;
            proxima = "pages/adm/dashboard.jsp";
            paginaLogin = "/pages/login/login_adm.jsp";
        }

        boolean autenticado = loginDAO.autenticar(email, senha, idTipoUser);

        if (autenticado) {

            HttpSession session = request.getSession();
            session.setAttribute("usuario", email);
            session.setAttribute("cargo", cargo);

            // Se for aluno, zera tentativas ao logar
            if ("aluno".equals(cargo)) {
                session.removeAttribute("tentativasAluno");
            }

            response.sendRedirect(proxima);

        } else {

            // Controle de tentativas apenas para ALUNO
            if ("aluno".equals(cargo)) {

                HttpSession session = request.getSession();
                Integer tentativas = (Integer) session.getAttribute("tentativasAluno");

                if (tentativas == null) {
                    tentativas = 0;
                }

                tentativas++;
                session.setAttribute("tentativasAluno", tentativas);

                if (tentativas >= 3) {
                    request.setAttribute("erro",
                            "Você errou 3 vezes. Talvez seja necessário validar sua matrícula antes de cadastrar seu email e senha. Por favor, clique em 'Cadastre-se' abaixo.");
                } else {
                    request.setAttribute("erro", "Usuário ou senha inválidos.");
                }

            } else {
                request.setAttribute("erro", "Usuário ou senha inválidos.");
            }

            request.getRequestDispatcher(paginaLogin)
                    .forward(request, response);
        }
    }
}