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
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Objects;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author villa
 */
public class Controladora {
    
    
    ControladoraPersistencia controlPersistencia = new ControladoraPersistencia();
    
    public int cantServicio(){
        return controlPersistencia.cantServicio();
    }
    public List<Cliente> traerClientes(){
        return controlPersistencia.traerClientes();
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

    public void crearCliente(String nombre, String apellido, String direccion, String dni, String fechaNac, String nacionalidad, String celular, String email) {
         Cliente cliente = new Cliente();
        cliente.setNombre(nombre);
        cliente.setApellido(apellido);
        cliente.setDireccion(direccion);
        cliente.setDni(dni);
        cliente.setNacionalidad(nacionalidad);
        Date fecha_Nac = new Date (fechaNac);
        cliente.setFecha_nac(fecha_Nac);
        cliente.setCelular(celular);
        cliente.setEmail(email);
        
        controlPersistencia.crearCliente(cliente);
    }

    public void borrarCliente(int id) {
        controlPersistencia.borrarCliente(id);
    }

    public void modificarCliente(int id, String nombre, String apellido, String direccion, String dni, String fechaNac, String nacionalidad, String celular, String email) {
        Cliente cliente = controlPersistencia.buscarCliente(id);
        cliente.setNombre(nombre);
        cliente.setApellido(apellido);
        cliente.setDireccion(direccion);
        cliente.setDni(dni);
        cliente.setNacionalidad(nacionalidad);
        
        SimpleDateFormat fechaCorta =  new SimpleDateFormat("dd/MM/yyyy");
        Date fecha_nac = new Date (fechaNac);
        fechaCorta.format(fecha_nac);
        
        cliente.setFecha_nac(fecha_nac);
        cliente.setCelular(celular);
        cliente.setEmail(email);
        
        controlPersistencia.modificarCliente(cliente);
    }

    public Cliente buscarCliente(int id) {
        return controlPersistencia.buscarCliente(id);
    }

    public void crearEmpleado(String nombre, String apellido, String direccion, String dni, String fechaNac, String nacionalidad, String celular, String email, String cargo, String sueldo, String nombreUsuario, String password) {
        Empleado empleado = new Empleado();
        empleado.setNombre(nombre);
        empleado.setApellido(apellido);
        empleado.setDireccion(direccion);
        empleado.setDni(dni);
        empleado.setNacionalidad(nacionalidad);
        Date fecha_Nac = new Date (fechaNac);
        empleado.setFecha_nac(fecha_Nac);
        empleado.setCelular(celular);
        empleado.setEmail(email);
        empleado.setCargo(cargo);
        Double sueldoEmpleado = Double.parseDouble(sueldo);
        empleado.setSueldo(sueldoEmpleado);
        
        //agrego los datos a Usuario
        Usuario usuario = new Usuario();
        usuario.setUsuario(nombreUsuario);
        usuario.setPassword(password);
        
        //asigno el usuario a empleado
        empleado.setUsuario(usuario);
        
        controlPersistencia.crearUsuario(usuario);
        controlPersistencia.crearEmpleado(empleado);
        
        
        
    }

    public Empleado buscarEmpleado(int id) {
        return controlPersistencia.buscarEmpleado(id);
    }

    public void modificarEmpleado(int id, String nombre, String apellido, String direccion, String dni, String fechaNac, String nacionalidad, String celular, String email,String cargo, String sueldo, String nombreUsuario, String password, int idUsuario) {
        Empleado empleado = controlPersistencia.buscarEmpleado(id);
        empleado.setNombre(nombre);
        empleado.setApellido(apellido);
        empleado.setDireccion(direccion);
        empleado.setDni(dni);
        empleado.setNacionalidad(nacionalidad);
        
        SimpleDateFormat fechaCorta =  new SimpleDateFormat("dd/MM/yyyy");
        Date fecha_nac = new Date (fechaNac);
        fechaCorta.format(fecha_nac);
        
        empleado.setFecha_nac(fecha_nac);
        empleado.setCelular(celular);
        empleado.setEmail(email);
        empleado.setCargo(cargo);
        Double sueldoEmpleado = Double.parseDouble(sueldo);
        empleado.setSueldo(sueldoEmpleado);
        Usuario usuario = controlPersistencia.buscarUsuario(idUsuario);
        usuario.setUsuario(nombreUsuario);
        usuario.setPassword(password);
        controlPersistencia.modificarUsuario(usuario);
        
        
        controlPersistencia.modificarEmpleado(empleado);
    }

    public void borrarEmpleado(int id) {
        controlPersistencia.borrarEmpleado(id);
    }
    
    public Usuario buscarUsuario(int id){
        return controlPersistencia.buscarUsuario(id);
    }

    public void crearPaquete(List idServicio, String costoPaquete) {
        PaqueteTuristico paquete = new PaqueteTuristico();
        
        Double costo = Double.parseDouble(costoPaquete);
        paquete.setCosto_paquete(costo);
        
        paquete.setListaServicios(idServicio);
        
        controlPersistencia.crearPaquete(paquete);
        
    }

    public Servicio buscarServicio(int parseInt) {
        return controlPersistencia.buscarServicios(parseInt);
    }
    
     public List<PaqueteTuristico> buscarPaquetes() {
        return controlPersistencia.buscarPaquetes();
    }

    public void borrarPaquete(int id) {
        controlPersistencia.borrarPaquete(id);
    }

    public PaqueteTuristico buscarPaquete(int id) {
        return controlPersistencia.buscarPaquete(id);
    }

    public void modificarPaquete(int id, String costoPaquete) {
        PaqueteTuristico paq = controlPersistencia.buscarPaquete(id);
        
        
        Servicio sv = controlPersistencia.buscarServicios(id);
        
    }

    public boolean verificarAutenticacion(String nombreUsuario, String password){
        
        List<Usuario> listaUsuarios = controlPersistencia.buscarUsuarios();
        
        if(listaUsuarios != null){
            for(Usuario usuario: listaUsuarios){
                if(usuario.getUsuario().equalsIgnoreCase(nombreUsuario) && usuario.getPassword().equals(password) ){
                    return true;
                }
            }
        }
        return false;
    }
    
    public List<Venta> traerVentas(){
        return controlPersistencia.traerVentas();
    }

    public void crearVenta( String idServicio, String idPaquete, String servOPaq, String idCliente, String idEmpleado, String medioPago, String fechaVenta) {
        
        Empleado empleado = controlPersistencia.buscarEmpleado(Integer.parseInt(idEmpleado));
        Cliente cliente = controlPersistencia.buscarCliente(Integer.parseInt(idCliente));
        
        Venta venta = new Venta();
        venta.setCliente(cliente);
        venta.setEmpleado(empleado);
        if(servOPaq=="servicio"){
            Servicio servicio = controlPersistencia.buscarServicios(Integer.parseInt(idServicio));
            venta.setServicio(servicio);
        }else{
            PaqueteTuristico paquete = controlPersistencia.buscarPaquete(Integer.parseInt(idPaquete));
            venta.setPaqueteTuristico(paquete);
        }
        
        venta.setMedioPago(medioPago);
        SimpleDateFormat fecVenta = new SimpleDateFormat("dd/MM/yyyy");
        Date fv = new Date();
        try {
            fv = fecVenta.parse(fechaVenta);
        } catch (ParseException ex) {
            ex.printStackTrace(System.out);
        }
        
        venta.setFecha_venta(fv);
        
        controlPersistencia.crearVenta(venta);
        
        
        
        
    }

    
   
}
