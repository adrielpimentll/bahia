package com.example.secretariaescolar.controller;

import java.io.IOException;
import java.util.List;

import com.example.secretariaescolar.dao.NotaDAO;
import com.example.secretariaescolar.dao.ProfessorDAO;
import com.example.secretariaescolar.model.Nota;
import com.example.secretariaescolar.model.Professor;
import com.example.secretariaescolar.model.Usuario;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/professor/dashboard")
public class ProfessorDashboardServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request,
                         HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession();
        Usuario usuario = (Usuario) session.getAttribute("usuario");

        if (usuario == null) {
            response.sendRedirect("../pages/login/login_prof.jsp");
            return;
        }

        ProfessorDAO professorDAO = new ProfessorDAO();
        Professor professor = professorDAO.buscaPorUsuario(usuario.getId_user());

        NotaDAO notaDAO = new NotaDAO();
        List<Nota> notas =
                notaDAO.listarPorDisciplina(professor.getId_disciplina());

        request.setAttribute("notas", notas);
        request.getRequestDispatcher("/pages/professor/dashboard.jsp")
                .forward(request, response);
    }
}