package com.example.secretariaescolar.controller;

import com.example.secretariaescolar.dao.AlunoDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;

@WebServlet("/cadastro")
public class VerificarMatriculaServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        String matricula = request.getParameter("matricula");

        if (matricula == null || matricula.trim().isEmpty()) {
            request.setAttribute("erro", "Por favor, informe a matrícula.");
            request.getRequestDispatcher("/pages/login/cadastrar.jsp")
                    .forward(request, response);
            return;
        }

        AlunoDAO alunoDAO = new AlunoDAO();

        boolean podeCadastrar = alunoDAO.podeCadastrarLogin(matricula);

        if (podeCadastrar) {

            HttpSession session = request.getSession();
            session.setAttribute("matriculaCadastro", matricula);

            response.sendRedirect("pages/login/criar_login.jsp");

        } else {

            request.setAttribute("erro",
                    "Esta matrícula já possui login cadastrado. " +
                            "Por favor, clique em 'Voltar' e faça o login.");

            request.getRequestDispatcher("/pages/login/cadastrar.jsp")
                    .forward(request, response);
        }
    }
}