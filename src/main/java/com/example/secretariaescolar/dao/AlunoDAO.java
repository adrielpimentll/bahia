package com.example.secretariaescolar.dao;

import java.beans.Statement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.spi.DirStateFactory.Result;

import com.example.secretariaescolar.model.Aluno;
import com.example.secretariaescolar.model.Usuario;
import com.example.secretariaescolar.util.Conexao;

public class AlunoDAO {
    // cadastrar(Aluno): Insere o nome, matrícula, email(login ) e senha.
    public boolean cadastrar(Aluno aluno) {
        UsuarioDAO usuarioDAO = new UsuarioDAO();

        int idGerado = usuarioDAO.inserir(aluno);

        if (idGerado > 0) {
            aluno.setId_user(idGerado);
            String sql = "INSERT INTO Aluno (id_user, matricula, id_turma) VALUES (?, ?, ?)";

            try (Connection conn = Conexao.conectar();
                    PreparedStatement pstmt = conn.prepareStatement(sql)) {

                pstmt.setInt(1, aluno.getId_user());
                pstmt.setString(2, aluno.getMatricula());
                pstmt.setInt(3, aluno.getIdTurma());

                pstmt.executeUpdate();
                System.out.println("Aluno cadastrado com sucesso! ID Usuario: " + idGerado);

                return true; // Sucesso
            } catch (SQLException e) {
                System.err.println("Erro ao inserir na tabela Aluno: " + e.getMessage());
                return false; // Erro
            }
        } else {
            System.err.println("Erro: Não foi possível criar a base de Usuário.");
            return false; // Erro
        }
    }
    // buscarPorMatricula(matricula): Método essencial para o professor encontrar o
    // aluno.

    public Integer buscarIdPorMatricula(String matricula) {

        String sql = """
                SELECT id_aluno
                FROM aluno
                WHERE matricula = ?
                """;

        try (Connection conn = Conexao.conectar();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setString(1, matricula);

            ResultSet rs = stmt.executeQuery();

            if (rs.next()) {
                return rs.getInt("id_aluno"); // já é o id_user
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return null;
    }

    // listarTodos(): Para o caso de listagens gerais.
    public List<Aluno> listarTodos() {
        List<Aluno> listaAlunos = new ArrayList<>();
        String sql = "SELECT u.id_user, u.nome, u.login, a.matricula " +
                "FROM Usuario u " +
                "INNER JOIN Aluno a ON u.id_user = a.id_user";

        try (Connection conn = Conexao.conectar();
                PreparedStatement pstmt = conn.prepareStatement(sql);
                ResultSet rset = pstmt.executeQuery()) {
            while (rset.next()) {
                Aluno aluno = new Aluno();
                aluno.setId_user(rset.getInt("id_user"));
                aluno.setNome(rset.getString("nome"));
                aluno.setLogin(rset.getString("login"));
                aluno.setMatricula(rset.getString("matricula"));
                listaAlunos.add(aluno);
            }
        } catch (SQLException e) {
            System.err.println("Erro ao listar os alunos: " + e.getMessage());
        }
        return listaAlunos;
    }
}