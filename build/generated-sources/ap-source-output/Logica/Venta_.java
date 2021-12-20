package Logica;

import Logica.Cliente;
import Logica.Empleado;
import Logica.PaqueteTuristico;
import Logica.Servicio;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.7.v20200504-rNA", date="2021-12-19T19:53:46")
@StaticMetamodel(Venta.class)
public class Venta_ { 

    public static volatile SingularAttribute<Venta, Integer> num_venta;
    public static volatile SingularAttribute<Venta, String> MedioPago;
    public static volatile SingularAttribute<Venta, Cliente> cliente;
    public static volatile SingularAttribute<Venta, PaqueteTuristico> paqueteTuristico;
    public static volatile SingularAttribute<Venta, Servicio> servicio;
    public static volatile SingularAttribute<Venta, Empleado> empleado;
    public static volatile SingularAttribute<Venta, Date> fecha_venta;

}