package Logica;

import Logica.Usuario;
import Logica.Venta;
import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.7.v20200504-rNA", date="2021-12-06T11:18:19")
@StaticMetamodel(Empleado.class)
public class Empleado_ { 

    public static volatile SingularAttribute<Empleado, Double> sueldo;
    public static volatile SingularAttribute<Empleado, Usuario> usuario;
    public static volatile ListAttribute<Empleado, Venta> listaVentas;
    public static volatile SingularAttribute<Empleado, String> cargo;
    public static volatile SingularAttribute<Empleado, Integer> id_empleado;

}