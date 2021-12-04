/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Logica;

import Persistencia.ControladoraPersistencia;
import java.util.Date;

/**
 *
 * @author villa
 */
public class Controladora {
    
    ControladoraPersistencia controlPersist = new ControladoraPersistencia();
    
    public void crearEmpleado(){
        
        Date fecnac = new Date (1990,9,30);
        
        Empleado empleado = new Empleado(1, "vendedor", 35000, 1, "daniel", "lopez", "colon 223", "25485988", "argentino", "3541387598", "daniel_lopez@gmail.com", fecnac);
        
        controlPersist.crearEmpleado(empleado);
        
    }
    
}
