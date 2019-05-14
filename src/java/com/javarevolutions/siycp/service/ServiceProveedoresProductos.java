/**
 * Todos los Derechos Reservados © 2013 Java Revolutions.
 * Sistema de Inventarios y Control de Pedidos.
 * Este software contiene información propiedad exclusiva de Java Revolutions considerada Confidencial.
 * Queda totalmente prohibido su uso o divulgación en forma parcial o total.
 * ----------------------------------------------------------------------------
 * Nombre de Aplicacion: Sistema de Inventarios y Control de Pedidos
 * Nombre de archivo: ServiceProveedoresProductos.java
 * Fecha de creacion : Noviembre, 2013
 * @author : Sergio Alberto Cortés Rios
 * @version 1.0
 *
 * Bitácora de modificaciones:
 * CR/Defecto 		Fecha 			Autor 			Descripción del cambio
 * ----------------------------------------------------------------------------
**/

package com.javarevolutions.siycp.service;

import com.javarevolutions.siycp.dominio.DominioProveedoresProductos;
import com.javarevolutions.siycp.ejb.session.SessionBeanProveedoresProductos;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;

public class ServiceProveedoresProductos implements IfaceProveedoresProductos {
    @Autowired
    private SessionBeanProveedoresProductos ejbProveedoresProductos;
    
    @Override
    public List<DominioProveedoresProductos> getLista() throws Exception {
        return ejbProveedoresProductos.getProveedoresProductos();
    }
    
    @Override
    public List getListaPagination(Object obj) throws Exception {
        return ejbProveedoresProductos.getProveedoresProductosPagination((DominioProveedoresProductos)obj);
    }

    @Override
    public int getRowCount() throws Exception {
        return ejbProveedoresProductos.getRowCountBProveedoresProductos();
    }
    
    @Override
    public Object getById(Object obj) {
        return ejbProveedoresProductos.getById((DominioProveedoresProductos)obj);
    }

    @Override
    public Object save(Object obj) {
        return ejbProveedoresProductos.save((DominioProveedoresProductos)obj);
    }

    @Override
    public Object update(Object obj) {
        return ejbProveedoresProductos.update((DominioProveedoresProductos)obj);
    }

    @Override
    public Object delete(Object obj) {
        return ejbProveedoresProductos.delete((DominioProveedoresProductos)obj);
    }
    
    @Override
    public Object deleteAll(List lista) {
        return ejbProveedoresProductos.deleteAll(lista);
    }
}
