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
public class Servicio implements Serializable {
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int codigo_servicio;
    
    @Basic
    private String nombre;
    private String descripcion_breve;
    private String destino_servicio;
    private double costo_servicio;
    
    @Temporal(TemporalType.DATE)
    private Date fecha_servicio;
    
    @ManyToMany
    private List<PaqueteTuristico> listaPaquete;
    
       

    public Servicio() {
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Servicio{codigo_servicio=").append(codigo_servicio);
        sb.append(", nombre=").append(nombre);
        sb.append(", descripcion_breve=").append(descripcion_breve);
        sb.append(", destino_servicio=").append(destino_servicio);
        sb.append(", costo_servicio=").append(costo_servicio);
        sb.append(", fecha_servicio=").append(fecha_servicio);
        sb.append(", listaPaquete=").append(listaPaquete);
        sb.append('}');
        return sb.toString();
    }

    public Servicio(int codigo_servicio, String nombre, String descripcion_breve, String destino_servicio, double costo_servicio, Date fecha_servicio, List<PaqueteTuristico> listaPaquete) {
        this.codigo_servicio = codigo_servicio;
        this.nombre = nombre;
        this.descripcion_breve = descripcion_breve;
        this.destino_servicio = destino_servicio;
        this.costo_servicio = costo_servicio;
        this.fecha_servicio = fecha_servicio;
        this.listaPaquete = listaPaquete;
        
    }

    public int getCodigo_servicio() {
        return codigo_servicio;
    }

    public void setCodigo_servicio(int codigo_servicio) {
        this.codigo_servicio = codigo_servicio;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getDescripcion_breve() {
        return descripcion_breve;
    }

    public void setDescripcion_breve(String descripcion_breve) {
        this.descripcion_breve = descripcion_breve;
    }

    public String getDestino_servicio() {
        return destino_servicio;
    }

    public void setDestino_servicio(String destino_servicio) {
        this.destino_servicio = destino_servicio;
    }

    public double getCosto_servicio() {
        return costo_servicio;
    }

    public void setCosto_servicio(double costo_servicio) {
        this.costo_servicio = costo_servicio;
    }

    public Date getFecha_servicio() {
        return fecha_servicio;
    }

    public void setFecha_servicio(Date fecha_servicio) {
        this.fecha_servicio = fecha_servicio;
    }

    public List<PaqueteTuristico> getListaPaquete() {
        return listaPaquete;
    }

    public void setListaPaquete(List<PaqueteTuristico> listaPaquete) {
        this.listaPaquete = listaPaquete;
    }

   
    
}
