package com.example.secretariaescolar.controller;

import java.io.IOException;
import java.util.List;

import com.example.secretariaescolar.dao.AlunoDAO;
import com.example.secretariaescolar.dao.NotaDAO;
import com.example.secretariaescolar.model.Nota;
import com.example.secretariaescolar.model.Usuario;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/aluno/dashboard")
public class AlunoDashboardServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request,
                         HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession();
        Usuario usuario = (Usuario) session.getAttribute("usuario");

        if (usuario == null) {
            response.sendRedirect("../pages/login/index.jsp");
            return;
        }

        AlunoDAO alunoDAO = new AlunoDAO();
        Integer idAluno = alunoDAO.buscarIdPorUsuario(usuario.getId_user());

        NotaDAO notaDAO = new NotaDAO();
        List<Nota> notas = notaDAO.listarPorAluno(idAluno);

        request.setAttribute("notas", notas);
        request.getRequestDispatcher("/pages/aluno/dashboard.jsp")
                .forward(request, response);
    }
}