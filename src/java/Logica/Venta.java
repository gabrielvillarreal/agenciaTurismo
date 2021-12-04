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

    public Venta(int num_venta, Date fecha_venta) {
        this.num_venta = num_venta;
        this.fecha_venta = fecha_venta;
    }

    public Venta() {
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Venta{num_venta=").append(num_venta);
        sb.append(", fecha_venta=").append(fecha_venta);
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
    
    
}
