/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Persistencia;

import Logica.Cliente;
import Logica.Empleado;
import Logica.PaqueteTuristico;
import Logica.Servicio;
import Logica.Usuario;
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

    public List<Cliente> traerClientes() {
        return clienteJPA.findClienteEntities();
    }
    public void crearCliente(Cliente cliente){
        try{
            clienteJPA.create(cliente);
        }catch (Exception ex){
            ex.printStackTrace(System.out);
        }
        
    }

    public int cantServicio() {
        return servicioJPA.getServicioCount();
    }

    public void borrarCliente(int id) {
        try {
            clienteJPA.destroy(id);
        } catch (NonexistentEntityException ex) {
            ex.printStackTrace(System.out);
        }
    }

    public void modificarCliente(Cliente cliente) {
        try {
            clienteJPA.edit(cliente);
        } catch (Exception ex) {
            ex.printStackTrace(System.out);
        }
    }


    public Cliente buscarCliente(int id) {
        return clienteJPA.findCliente(id);
    }

    public void crearUsuario(Usuario usuario) {
        usuarioJPA.create(usuario);
    }

    public void modificarEmpleado(Empleado empleado) {
        try {
            empleadoJPA.edit(empleado);
        } catch (Exception ex) {
            ex.printStackTrace(System.out);
        }
    }

    public Empleado buscarEmpleado(int id) {
        return empleadoJPA.findEmpleado(id);
    }

    public void borrarEmpleado(int id) {
        try {
            empleadoJPA.destroy(id);
        } catch (NonexistentEntityException ex) {
            ex.printStackTrace(System.out);
        }
    }

    public Usuario buscarUsuario(int id) {
        return usuarioJPA.findUsuario(id);
    }

    public void modificarUsuario(Usuario usuario) {
        try {
            usuarioJPA.edit(usuario);
        } catch (Exception ex) {
            ex.printStackTrace(System.out);
        }
    }

    public void crearPaquete(PaqueteTuristico paquete) {
        paqueteTuristicoJPA.create(paquete);
    }

    public List<PaqueteTuristico> buscarPaquetes() {
        return  paqueteTuristicoJPA.findPaqueteTuristicoEntities();
    }

    public void borrarPaquete(int id) {
        try {
            paqueteTuristicoJPA.destroy(id);
        } catch (NonexistentEntityException ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public PaqueteTuristico buscarPaquete(int id) {
        return paqueteTuristicoJPA.findPaqueteTuristico(id);
    }

    
}
