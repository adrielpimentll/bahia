package com.example.secretariaescolar.controller;

import com.example.secretariaescolar.dao.ObservacaoDAO;
import com.example.secretariaescolar.dao.ProfessorDAO;
import com.example.secretariaescolar.model.Observacao;
import com.example.secretariaescolar.model.Professor;
import com.example.secretariaescolar.model.Usuario;
import com.example.secretariaescolar.util.Conexao;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.Connection;
import java.time.LocalDate;

@WebServlet("/professor/enviar-observacao")
public class EnviarObservacaoServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        int idAluno = Integer.parseInt(request.getParameter("idAluno"));
        String mensagem = request.getParameter("mensagem");

        HttpSession session = request.getSession();
        Usuario usuario = (Usuario) session.getAttribute("usuario");

        ProfessorDAO professorDAO = new ProfessorDAO();
        Professor professor =
                professorDAO.buscaPorUsuario(usuario.getId_user());

        Observacao obs = new Observacao();
        obs.setMensagem(mensagem);
        obs.setData(LocalDate.now());
        obs.setId_aluno(idAluno);
        obs.setId_professor(professor.getId_professor());
        obs.setId_disciplina(professor.getId_disciplina());

        try (Connection conn = Conexao.conectar()) {
            ObservacaoDAO dao = new ObservacaoDAO(conn);
            dao.salvar(obs);
        }
        catch (Exception e) {
            e.printStackTrace();
            throw new ServletException("Erro ao salvar observação", e);
        }

        response.sendRedirect("dashboard");
    }
}
