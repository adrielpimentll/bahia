package com.example.secretariaescolar.controller;

import com.example.secretariaescolar.dao.UsuarioDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;

@WebServlet("/cadastrar")
public class CadastroServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        String email = request.getParameter("email");
        String senha = request.getParameter("password");

        HttpSession session = request.getSession();
        Integer idUser = (Integer) session.getAttribute("idUserCadastro");

        if (idUser == null) {
            response.sendRedirect("pages/login/cadastrar.jsp");
            return;
        }

        // Precisamos da matrícula novamente
        // então o ideal é guardar ela na sessão na tela anterior
        String matricula = (String) session.getAttribute("matriculaCadastro");

        UsuarioDAO usuarioDAO = new UsuarioDAO();
        boolean atualizado = usuarioDAO.cadastrarInfos(matricula, email, senha);

        if (atualizado) {
            session.removeAttribute("idUserCadastro");
            session.removeAttribute("matriculaCadastro");

            response.sendRedirect("pages/login/login.jsp");
        } else {
            request.setAttribute("erro", "Erro ao finalizar cadastro.");
            request.getRequestDispatcher("/pages/login/criar_login.jsp")
                    .forward(request, response);
        }
    }
}