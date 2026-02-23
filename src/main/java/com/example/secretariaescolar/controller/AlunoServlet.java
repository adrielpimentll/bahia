package com.example.secretariaescolar.controller;

import com.example.secretariaescolar.dao.AlunoDAO;
import com.example.secretariaescolar.model.Aluno;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/aluno")
public class AlunoServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        // Pegando dados do formulário

        String nome = request.getParameter("nome");
        String email = request.getParameter("email");
        String senha = request.getParameter("senha");
        int idTipoUser = Integer.parseInt(request.getParameter("idTipoUser"));
        String matricula = request.getParameter("matricula");
        int idTurma = Integer.parseInt(request.getParameter("idTurma"));

        // Criando o objeto Aluno
        Aluno aluno = new Aluno(matricula, idTurma, nome, email, senha, idTipoUser);

        // Chamando o DAO
        AlunoDAO alunoDAO = new AlunoDAO();
        boolean deuErro = !alunoDAO.cadastrar(aluno);

        if (deuErro){
            request.setAttribute("erro", "Erro ao cadastrar aluno.");
            request.getRequestDispatcher("pages/aluno/cadastro-index.jsp").forward(request, response);
        }
        else {
            // Redirecionando após cadastro
            response.sendRedirect("pages/aluno/lista-index.jsp");
        }


    }
}
