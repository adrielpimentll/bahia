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

        AlunoDAO alunoDAO = new AlunoDAO();
        Integer idUser = alunoDAO.buscarIdPorMatricula(matricula);

        if (idUser != null) {

            HttpSession session = request.getSession();
            session.setAttribute("idUserCadastro", idUser);
            session.setAttribute("matriculaCadastro", matricula);

            response.sendRedirect("pages/login/criar_login.jsp");

        } else {

            request.setAttribute("erro", "Matrícula não encontrada.");
            request.getRequestDispatcher("/pages/login/cadastrar.jsp")
                    .forward(request, response);
        }
    }
}
