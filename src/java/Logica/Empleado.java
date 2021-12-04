/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Logica;

import java.io.Serializable;
import java.util.Date;
import java.util.List;
import javax.persistence.*;

/**
 *
 * @author villa
 */
@Entity
public class Empleado extends Persona implements Serializable{
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id_empleado;
    
    @Basic
    private String cargo;
    private double sueldo;
    
    @OneToOne
    private Usuario usuario;
    
    @OneToMany
    private List<Venta> listaVentas;
    
    
    public Empleado() {
    }

    public Empleado(int id_empleado, String cargo, double sueldo, int id_persona, String nombre, String apellido, String direccion, String dni, String nacionalidad, String celular, String email, Date fecha_nac) {
        super(id_persona, nombre, apellido, direccion, dni, nacionalidad, celular, email, fecha_nac);
        this.id_empleado = id_empleado;
        this.cargo = cargo;
        this.sueldo = sueldo;
    }

    public Empleado(int id_empleado, String cargo, double sueldo, Usuario usuario, List<Venta> listaVentas, int id_persona, String nombre, String apellido, String direccion, String dni, String nacionalidad, String celular, String email, Date fecha_nac) {
        super(id_persona, nombre, apellido, direccion, dni, nacionalidad, celular, email, fecha_nac);
        this.id_empleado = id_empleado;
        this.cargo = cargo;
        this.sueldo = sueldo;
        this.usuario = usuario;
        this.listaVentas = listaVentas;
    }

    public Empleado(int id_empleado, String cargo, double sueldo, Usuario usuario, List<Venta> listaVentas) {
        this.id_empleado = id_empleado;
        this.cargo = cargo;
        this.sueldo = sueldo;
        this.usuario = usuario;
        this.listaVentas = listaVentas;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Empleado{id_empleado=").append(id_empleado);
        sb.append(", cargo=").append(cargo);
        sb.append(", sueldo=").append(sueldo);
        sb.append(", usuario=").append(usuario);
        sb.append(", listaVentas=").append(listaVentas);
        sb.append('}');
        return sb.toString();
    }

    public int getId_empleado() {
        return id_empleado;
    }

    public void setId_empleado(int id_empleado) {
        this.id_empleado = id_empleado;
    }

    public String getCargo() {
        return cargo;
    }

    public void setCargo(String cargo) {
        this.cargo = cargo;
    }

    public double getSueldo() {
        return sueldo;
    }

    public void setSueldo(double sueldo) {
        this.sueldo = sueldo;
    }

    public Usuario getUsuario() {
        return usuario;
    }

    public void setUsuario(Usuario usuario) {
        this.usuario = usuario;
    }

    public List<Venta> getListaVentas() {
        return listaVentas;
    }

    public void setListaVentas(List<Venta> listaVentas) {
        this.listaVentas = listaVentas;
    }
    

    
}
