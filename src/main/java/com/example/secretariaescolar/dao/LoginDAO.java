package com.example.secretariaescolar.dao;

import com.example.secretariaescolar.util.Conexao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class LoginDAO {

    public boolean autenticar(String email, String senha, int idTipoUser) {

        String sql = """
            SELECT * 
            FROM usuario 
            WHERE email = ? 
            AND senha = ? 
            AND id_tipo_user = ?
            """;

        try (Connection conn = Conexao.conectar();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setString(1, email);
            stmt.setString(2, senha);
            stmt.setInt(3, idTipoUser);

            ResultSet rs = stmt.executeQuery();

            return rs.next(); // encontrou = login válido

        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }
}
