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
public class PaqueteTuristico implements Serializable {
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int codigo_paquete;
    
    @Basic
    private double costo_paquete;
    
    @ManyToMany
    private List<Servicio> listaServicios;
    
    @OneToMany
    private List<Venta> venta;

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("PaqueteTuristico{codigo_paquete=").append(codigo_paquete);
        sb.append(", costo_paquete=").append(costo_paquete);
        sb.append(", listaServicios=").append(listaServicios);
        sb.append(", venta=").append(venta);
        sb.append('}');
        return sb.toString();
    }

    public PaqueteTuristico() {
    }

    public PaqueteTuristico(int codigo_paquete, double costo_paquete, List<Servicio> listaServicios, List<Venta> venta) {
        this.codigo_paquete = codigo_paquete;
        this.costo_paquete = costo_paquete;
        this.listaServicios = listaServicios;
        this.venta = venta;
    }

    public int getCodigo_paquete() {
        return codigo_paquete;
    }

    public void setCodigo_paquete(int codigo_paquete) {
        this.codigo_paquete = codigo_paquete;
    }

    public double getCosto_paquete() {
        return costo_paquete;
    }

    public void setCosto_paquete(double costo_paquete) {
        this.costo_paquete = costo_paquete;
    }

    public List<Servicio> getListaServicios() {
        return listaServicios;
    }

    public void setListaServicios(List<Servicio> listaServicios) {
        this.listaServicios = listaServicios;
    }

    public List<Venta> getVenta() {
        return venta;
    }

    public void setVenta(List<Venta> venta) {
        this.venta = venta;
    }
    
}
