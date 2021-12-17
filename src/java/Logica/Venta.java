/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Logica;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.*;

/**
 *
 * @author villa
 */
@Entity
public class Venta implements Serializable {
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int num_venta;
    
    @Temporal(TemporalType.DATE)
    private Date fecha_venta;
    
    @Basic
    private String MedioPago;

    @ManyToOne
    private Cliente cliente;
    
    @ManyToOne
    private Empleado empleado;
    
    @ManyToOne
    private PaqueteTuristico paqueteTuristico;
    
    @ManyToOne
    private Servicio servicio;

    public Venta() {
    }

    public Venta(int num_venta, Date fecha_venta, String MedioPago, Cliente cliente, Empleado empleado, PaqueteTuristico paqueteTuristico, Servicio servicio) {
        this.num_venta = num_venta;
        this.fecha_venta = fecha_venta;
        this.MedioPago = MedioPago;
        this.cliente = cliente;
        this.empleado = empleado;
        this.paqueteTuristico = paqueteTuristico;
        this.servicio = servicio;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Venta{num_venta=").append(num_venta);
        sb.append(", fecha_venta=").append(fecha_venta);
        sb.append(", MedioPago=").append(MedioPago);
        sb.append(", cliente=").append(cliente);
        sb.append(", empleado=").append(empleado);
        sb.append(", paqueteTuristico=").append(paqueteTuristico);
        sb.append(", servicio=").append(servicio);
        sb.append('}');
        return sb.toString();
    }

    public int getNum_venta() {
        return num_venta;
    }

    public void setNum_venta(int num_venta) {
        this.num_venta = num_venta;
    }

    public Date getFecha_venta() {
        return fecha_venta;
    }

    public void setFecha_venta(Date fecha_venta) {
        this.fecha_venta = fecha_venta;
    }

    public String getMedioPago() {
        return MedioPago;
    }

    public void setMedioPago(String MedioPago) {
        this.MedioPago = MedioPago;
    }

    public Cliente getCliente() {
        return cliente;
    }

    public void setCliente(Cliente cliente) {
        this.cliente = cliente;
    }

    public Empleado getEmpleado() {
        return empleado;
    }

    public void setEmpleado(Empleado empleado) {
        this.empleado = empleado;
    }

    public PaqueteTuristico getPaqueteTuristico() {
        return paqueteTuristico;
    }

    public void setPaqueteTuristico(PaqueteTuristico paqueteTuristico) {
        this.paqueteTuristico = paqueteTuristico;
    }

    public Servicio getServicio() {
        return servicio;
    }

    public void setServicio(Servicio servicio) {
        this.servicio = servicio;
    }
    
}
