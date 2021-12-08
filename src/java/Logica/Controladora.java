/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Logica;

import Persistencia.ControladoraPersistencia;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author villa
 */
public class Controladora {
    
    
    ControladoraPersistencia controlPersistencia = new ControladoraPersistencia();
    public void crearEmpleado(){
        
        Date fecnac = new Date (1990,9,30);
       
        
        
        Empleado empleado = new Empleado(1, "vendedor", 90000,  1, "juna", "alvarez", "fcolnf 98", "23232332", "argnetgino", "2313113455", "sdfmsadfmiiosdf.com", fecnac);
        
        controlPersistencia.crearEmpleado(empleado);
        
    }
    public List<Empleado> traerEmpleados(){
        return controlPersistencia.traerEmpleados();
    }

    
    
    public Empleado buscarEmpleados(int id){
        return controlPersistencia.buscarEmpleados(id);
    }
    
    
    public static synchronized java.util.Date deStringToDate(String fecha){
        //funcion para convertir un String a Date
        
        DateFormat df = new SimpleDateFormat("dd-MM-yyyy"); //formato guion
        Date fechaEnviar = null;
        try{
            fechaEnviar = df.parse(fecha);
            return fechaEnviar;
        } catch (ParseException ex){
            ex.printStackTrace();
            return null;
        }
    }

    public void crearServicio(String nombre, String descripcion, String destino, Double costo, String fecha) {
        
        
        
        Servicio servicio = new Servicio();
        servicio.setNombre(nombre);
        servicio.setDescripcion_breve(descripcion);
        servicio.setDestino_servicio(destino);
        servicio.setCosto_servicio(costo);
        Date fecha_servicio = new Date (fecha);
        servicio.setFecha_servicio(fecha_servicio);
        
        controlPersistencia.crearServicio(servicio);
        
        
        
    }
    
     public List<Servicio> traerServicios(){
        return controlPersistencia.traerServicios();
    }

    public void borrarServicio(int id) {
        controlPersistencia.borrarServicio(id);
    }

    public void modificarServicio(int id, String nombre, String descripcion, String destino, Double costo, String fecha) {
       
        Servicio servicio = controlPersistencia.buscarServicios(id);
        servicio.setDescripcion_breve(descripcion);
        servicio.setCosto_servicio(costo);
        servicio.setDestino_servicio(destino);
        
        /*DateFormat df = new SimpleDateFormat("dd/MM/yyyy");
        Date fecha_servicio;
        try {
            fecha_servicio = df.parse(fecha);
        } catch (ParseException ex) {
            Logger.getLogger(Controladora.class.getName()).log(Level.SEVERE, null, ex);
        }
        fecha_servicio = deStringToDate(fecha);*/
        SimpleDateFormat fechaCorta =  new SimpleDateFormat("dd/MM/yyyy");
        Date fecha_servicio = new Date (fecha);
        fechaCorta.format(fecha_servicio);
        
        servicio.setFecha_servicio(fecha_servicio);
        servicio.setNombre(nombre);
        
        controlPersistencia.modificarServicio(servicio);
        
    }

    public Servicio buscarServicios(int id) {
        return controlPersistencia.buscarServicios(id);
    }
}
