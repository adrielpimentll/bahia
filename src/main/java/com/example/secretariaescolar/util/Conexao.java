package com.example.secretariaescolar.util;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import io.github.cdimascio.dotenv.Dotenv;

public class Conexao {

    public static Connection conectar() {

        try {
            Class.forName("org.postgresql.Driver");

            Dotenv dotenv = Dotenv.load();

            String url = dotenv.get("DB_URL");
            String usuario = dotenv.get("DB_USER");
            String senha = dotenv.get("DB_PASS");

            Connection conexao = DriverManager.getConnection(url, usuario, senha);
            System.out.println("Conectado!");
            return conexao;

        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        }
    }

    public static void desconectar(Connection conexao) {
        try {
            if (conexao != null && !conexao.isClosed()) {
                conexao.close();
                System.out.println("Desconectado!");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
