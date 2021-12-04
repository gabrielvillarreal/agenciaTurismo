/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Persistencia;

import Logica.Empleado;

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
    
}
