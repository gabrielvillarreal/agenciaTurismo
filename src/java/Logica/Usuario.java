/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Logica;

import java.io.Serializable;
import javax.persistence.*;

/**
 *
 * @author villa
 */
@Entity
public class Usuario implements Serializable {
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id_usuario;
    
    @Basic
    private String usuario;
    private String password;
    
    public Usuario() {
    }

    public Usuario(int id_usuario, String usuario, String password) {
        this.id_usuario = id_usuario;
        this.usuario = usuario;
        this.password = password;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Usuario{id_usuario=").append(id_usuario);
        sb.append(", usuario=").append(usuario);
        sb.append(", password=").append(password);
        sb.append('}');
        return sb.toString();
    }

    public int getId_usuario() {
        return id_usuario;
    }

    public void setId_usuario(int id_usuario) {
        this.id_usuario = id_usuario;
    }

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    
}
