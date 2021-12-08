package Logica;

import Logica.Venta;
import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.7.v20200504-rNA", date="2021-12-06T11:18:19")
@StaticMetamodel(MedioPago.class)
public class MedioPago_ { 

    public static volatile SingularAttribute<MedioPago, String> descripcion;
    public static volatile ListAttribute<MedioPago, Venta> ventas;
    public static volatile SingularAttribute<MedioPago, Double> porcentaje;
    public static volatile SingularAttribute<MedioPago, Integer> id_medioPago;

}