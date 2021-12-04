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
public class Cliente extends Persona implements Serializable{
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id_cliente;

    @OneToMany
    private List<Venta> venta;

    public Cliente(int id_cliente, List<Venta> venta, int id_persona, String nombre, String apellido, String direccion, String dni, String nacionalidad, String celular, String email, Date fecha_nac) {
        super(id_persona, nombre, apellido, direccion, dni, nacionalidad, celular, email, fecha_nac);
        this.id_cliente = id_cliente;
        this.venta = venta;
    }

    public Cliente() {
    }

    public Cliente(int id_cliente, List<Venta> venta) {
        this.id_cliente = id_cliente;
        this.venta = venta;
    }

    public int getId_cliente() {
        return id_cliente;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Cliente{id_cliente=").append(id_cliente);
        sb.append(", venta=").append(venta);
        sb.append('}');
        return sb.toString();
    }

    public void setId_cliente(int id_cliente) {
        this.id_cliente = id_cliente;
    }

    public List<Venta> getVenta() {
        return venta;
    }

    public void setVenta(List<Venta> venta) {
        this.venta = venta;
    }

    
   
}
