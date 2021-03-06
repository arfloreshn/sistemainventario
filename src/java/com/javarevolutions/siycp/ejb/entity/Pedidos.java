package com.javarevolutions.siycp.ejb.entity;
// Generated 13/02/2014 04:39:40 PM by Hibernate Tools 3.6.0


import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * Pedidos generated by hbm2java
 */
public class Pedidos  implements java.io.Serializable {


     private Long idPedido;
     private Usuarios usuarios;
     private Date fechaPedido;
     private Date fechaModificacion;
     private Date horaPedido;
     private String condiciones;
     private Set pedidosProductoses = new HashSet(0);

    public Pedidos() {
    }

	
    public Pedidos(Usuarios usuarios, Date fechaPedido, Date horaPedido) {
        this.usuarios = usuarios;
        this.fechaPedido = fechaPedido;
        this.horaPedido = horaPedido;
    }
    public Pedidos(Usuarios usuarios, Date fechaPedido, Date fechaModificacion, Date horaPedido, String condiciones, Set pedidosProductoses) {
       this.usuarios = usuarios;
       this.fechaPedido = fechaPedido;
       this.fechaModificacion = fechaModificacion;
       this.horaPedido = horaPedido;
       this.condiciones = condiciones;
       this.pedidosProductoses = pedidosProductoses;
    }
   
    public Long getIdPedido() {
        return this.idPedido;
    }
    
    public void setIdPedido(Long idPedido) {
        this.idPedido = idPedido;
    }
    public Usuarios getUsuarios() {
        return this.usuarios;
    }
    
    public void setUsuarios(Usuarios usuarios) {
        this.usuarios = usuarios;
    }
    public Date getFechaPedido() {
        return this.fechaPedido;
    }
    
    public void setFechaPedido(Date fechaPedido) {
        this.fechaPedido = fechaPedido;
    }
    public Date getFechaModificacion() {
        return this.fechaModificacion;
    }
    
    public void setFechaModificacion(Date fechaModificacion) {
        this.fechaModificacion = fechaModificacion;
    }
    public Date getHoraPedido() {
        return this.horaPedido;
    }
    
    public void setHoraPedido(Date horaPedido) {
        this.horaPedido = horaPedido;
    }
    public String getCondiciones() {
        return this.condiciones;
    }
    
    public void setCondiciones(String condiciones) {
        this.condiciones = condiciones;
    }
    public Set getPedidosProductoses() {
        return this.pedidosProductoses;
    }
    
    public void setPedidosProductoses(Set pedidosProductoses) {
        this.pedidosProductoses = pedidosProductoses;
    }




}


