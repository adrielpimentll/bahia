package com.example.secretariaescolar.dao;

import com.example.secretariaescolar.model.Usuario;

public class LoginDAO {

    private UsuarioDAO usuarioDAO = new UsuarioDAO();

    public Usuario autenticar(String login, String senha) {
        return usuarioDAO.autenticar(login, senha);
    }
}