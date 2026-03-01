package com.example.secretariaescolar.controller;

import com.example.secretariaescolar.dao.ProfessorDAO;
import com.example.secretariaescolar.model.Disciplina;
import com.example.secretariaescolar.model.Professor;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/professor")
public class ProfessorServlet extends HttpServlet {

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Pegar o id_user
        String idUserStr = request.getParameter("id_professor");

        if (idUserStr == null || idUserStr.isBlank()) {
            request.setAttribute("erro", "ID do usuário não foi inserido.");
            request.getRequestDispatcher("pages/professor/professor.jsp").forward(request, response);
        }

        int id_user;
        try {
            id_user = Integer.parseInt(idUserStr);
        } catch (NumberFormatException e) {
            request.setAttribute("erro", "ID do usuário inválido.");
            request.getRequestDispatcher("pages/professor/professor.jsp").forward(request, response);
            return;
        }

        // Buscar professor
        ProfessorDAO professorDAO = new ProfessorDAO();
        Professor professor = professorDAO.buscaPorUsuario(id_user);

        if (professor == null) {
            request.setAttribute("erro", "Professor não encontrado para esse usuário.");
            request.getRequestDispatcher("pages/professor/professor.jsp").forward(request, response);
        }

        // Buscar por disciplina do professor
        Disciplina disciplina = professorDAO.getDisciplina(professor.getId_professor());


        // Mandar dados pro JSP
        request.setAttribute("professor", professor);
        request.setAttribute("disciplina", disciplina);

        // Mostrar página
        request.getRequestDispatcher("pages/professor/professor.jsp").forward(request, response);
    }
}