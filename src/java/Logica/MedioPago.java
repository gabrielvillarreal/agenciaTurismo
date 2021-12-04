/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Logica;

import java.io.Serializable;
import java.util.List;
import javax.persistence.*;

/**
 *
 * @author villa
 */
@Entity
public class MedioPago implements Serializable {
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id_medioPago;
    
    @Basic
    private String descripcion;
    private double porcentaje;

    public MedioPago() {
    }

    public MedioPago(int id_medioPago, String descripcion, double porcentaje, List<Venta> ventas) {
        this.id_medioPago = id_medioPago;
        this.descripcion = descripcion;
        this.porcentaje = porcentaje;
        this.ventas = ventas;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("MedioPago{id_medioPago=").append(id_medioPago);
        sb.append(", descripcion=").append(descripcion);
        sb.append(", porcentaje=").append(porcentaje);
        sb.append(", ventas=").append(ventas);
        sb.append('}');
        return sb.toString();
    }
    
    @OneToMany
    private List<Venta> ventas;

    public int getId_medioPago() {
        return id_medioPago;
    }

    public void setId_medioPago(int id_medioPago) {
        this.id_medioPago = id_medioPago;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public double getPorcentaje() {
        return porcentaje;
    }

    public void setPorcentaje(double porcentaje) {
        this.porcentaje = porcentaje;
    }

    public List<Venta> getVentas() {
        return ventas;
    }

    public void setVentas(List<Venta> ventas) {
        this.ventas = ventas;
    }
    
}
