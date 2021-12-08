/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Persistencia;

import Logica.Empleado;
import Logica.Servicio;
import Persistencia.exceptions.NonexistentEntityException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author villa
 */
public class ControladoraPersistencia {
    
    ClienteJpaController clienteJPA = new ClienteJpaController();
    EmpleadoJpaController empleadoJPA = new EmpleadoJpaController();
    MedioPagoJpaController medioPagoJPA = new MedioPagoJpaController();
    PaqueteTuristicoJpaController paqueteTuristicoJPA = new PaqueteTuristicoJpaController();
    ServicioJpaController servicioJPA = new ServicioJpaController();
    UsuarioJpaController usuarioJPA = new UsuarioJpaController();
    VentaJpaController ventaJPA = new VentaJpaController();
    
    
    public void crearEmpleado(Empleado empleado){
        empleadoJPA.create(empleado);
    }
    
    public List<Empleado> traerEmpleados() {
        return empleadoJPA.findEmpleadoEntities();
    }

    public Empleado buscarEmpleados(int id) {
        return empleadoJPA.findEmpleado(id);
    }

    public void crearServicio(Servicio servicio) {
        servicioJPA.create(servicio);
    }

    public List<Servicio> traerServicios() {
        return servicioJPA.findServicioEntities();
    }

    public void borrarServicio(int id) {
        try {
            servicioJPA.destroy(id);
        } catch (NonexistentEntityException ex) {
            ex.printStackTrace(System.out);
        }
    }

    

    public Servicio buscarServicios(int id) {
        return servicioJPA.findServicio(id);
                
    }

    public void modificarServicio(Servicio servicio) {
        try {
            servicioJPA.edit(servicio);
        } catch (Exception ex) {
            ex.printStackTrace(System.out);
        }
    }
    
}
