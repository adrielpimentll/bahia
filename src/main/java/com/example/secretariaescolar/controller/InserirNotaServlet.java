package com.example.secretariaescolar.controller;

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

import java.io.IOException;

@WebServlet("/professor/inserir-nota")
public class InserirNotaServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        int idAluno = Integer.parseInt(request.getParameter("idAluno"));
        double valor = Double.parseDouble(request.getParameter("valor"));
        String titulo = request.getParameter("titulo");

        HttpSession session = request.getSession();
        Usuario usuario = (Usuario) session.getAttribute("usuario");

        ProfessorDAO professorDAO = new ProfessorDAO();
        Professor professor =
                professorDAO.buscaPorUsuario(usuario.getId_user());

        Nota nota = new Nota();
        nota.setTitulo(titulo);
        nota.setValor(valor);
        nota.setSemestre("1");
        nota.setId_aluno(idAluno);
        nota.setId_professor(professor.getId_professor());
        nota.setId_disciplina(professor.getId_disciplina());

        NotaDAO notaDAO = new NotaDAO();
        notaDAO.inserir(nota);

        response.sendRedirect("dashboard");
    }
}