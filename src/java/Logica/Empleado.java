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
public class Empleado  {
    
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id_empleado;
    
    @Basic
    private String cargo;
    private double sueldo;
    private String nombre;
    private String apellido;
    private String direccion;
    private String dni;
    private String nacionalidad;
    private String celular;
    private String email;
    
    @Temporal(TemporalType.DATE)
    private Date fecha_nac;
    
    @OneToOne
    private Usuario usuario;
    
    @OneToMany
    private List<Venta> listaVentas;

    public Empleado() {
    }

    public Empleado(int id_empleado, String cargo, double sueldo, String nombre, String apellido, String direccion, String dni, String nacionalidad, String celular, String email, Date fecha_nac, Usuario usuario, List<Venta> listaVentas) {
        this.id_empleado = id_empleado;
        this.cargo = cargo;
        this.sueldo = sueldo;
        this.nombre = nombre;
        this.apellido = apellido;
        this.direccion = direccion;
        this.dni = dni;
        this.nacionalidad = nacionalidad;
        this.celular = celular;
        this.email = email;
        this.fecha_nac = fecha_nac;
        this.usuario = usuario;
        this.listaVentas = listaVentas;
    }

    public int getId_empleado() {
        return id_empleado;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Empleado{id_empleado=").append(id_empleado);
        sb.append(", cargo=").append(cargo);
        sb.append(", sueldo=").append(sueldo);
        sb.append(", nombre=").append(nombre);
        sb.append(", apellido=").append(apellido);
        sb.append(", direccion=").append(direccion);
        sb.append(", dni=").append(dni);
        sb.append(", nacionalidad=").append(nacionalidad);
        sb.append(", celular=").append(celular);
        sb.append(", email=").append(email);
        sb.append(", fecha_nac=").append(fecha_nac);
        sb.append(", usuario=").append(usuario);
        sb.append(", listaVentas=").append(listaVentas);
        sb.append('}');
        return sb.toString();
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

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public String getDni() {
        return dni;
    }

    public void setDni(String dni) {
        this.dni = dni;
    }

    public String getNacionalidad() {
        return nacionalidad;
    }

    public void setNacionalidad(String nacionalidad) {
        this.nacionalidad = nacionalidad;
    }

    public String getCelular() {
        return celular;
    }

    public void setCelular(String celular) {
        this.celular = celular;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Date getFecha_nac() {
        return fecha_nac;
    }

    public void setFecha_nac(Date fecha_nac) {
        this.fecha_nac = fecha_nac;
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
