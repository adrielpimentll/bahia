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
        String matricula = (String) session.getAttribute("matriculaCadastro");

        if (matricula == null) {
            response.sendRedirect("pages/login/cadastrar.jsp");
            return;
        }

        UsuarioDAO usuarioDAO = new UsuarioDAO();
        boolean atualizado = usuarioDAO.cadastrarInfos(matricula, email, senha);

        if (atualizado) {

            session.removeAttribute("matriculaCadastro");

            response.sendRedirect("pages/login/index.jsp");

        } else {

            request.setAttribute("erro",
                    "Esta matrícula já possui login cadastrado. " +
                            "Por favor, clique em 'Voltar' e faça o login.");

            request.getRequestDispatcher("/pages/login/criar_login.jsp")
                    .forward(request, response);
        }
    }
}