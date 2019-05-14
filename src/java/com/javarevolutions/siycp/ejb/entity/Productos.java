package com.javarevolutions.siycp.ejb.entity;
// Generated 13/02/2014 04:39:40 PM by Hibernate Tools 3.6.0


import java.util.HashSet;
import java.util.Set;

/**
 * Productos generated by hbm2java
 */
public class Productos  implements java.io.Serializable {


     private Long idProducto;
     private TiposMedidas tiposMedidas;
     private Usuarios usuarios;
     private String nombre;
     private String descripcion;
     private float costo;
     private Float precioGeneral;
     private Float precioIntermedio;
     private Float precioEspecial;
     private String tipo;
     private Long cantidad;
     private Set proveedoresProductoses = new HashSet(0);
     private Set pedidosProductoses = new HashSet(0);
     private Set ventasProductoses = new HashSet(0);
     private Set inventarioses = new HashSet(0);

    public Productos() {
    }

	
    public Productos(TiposMedidas tiposMedidas, Usuarios usuarios, String nombre, String descripcion, float costo, String tipo) {
        this.tiposMedidas = tiposMedidas;
        this.usuarios = usuarios;
        this.nombre = nombre;
        this.descripcion = descripcion;
        this.costo = costo;
        this.tipo = tipo;
    }
    public Productos(TiposMedidas tiposMedidas, Usuarios usuarios, String nombre, String descripcion, float costo, Float precioGeneral, Float precioIntermedio, Float precioEspecial, String tipo, Long cantidad, Set proveedoresProductoses, Set pedidosProductoses, Set ventasProductoses, Set inventarioses) {
       this.tiposMedidas = tiposMedidas;
       this.usuarios = usuarios;
       this.nombre = nombre;
       this.descripcion = descripcion;
       this.costo = costo;
       this.precioGeneral = precioGeneral;
       this.precioIntermedio = precioIntermedio;
       this.precioEspecial = precioEspecial;
       this.tipo = tipo;
       this.cantidad = cantidad;
       this.proveedoresProductoses = proveedoresProductoses;
       this.pedidosProductoses = pedidosProductoses;
       this.ventasProductoses = ventasProductoses;
       this.inventarioses = inventarioses;
    }
   
    public Long getIdProducto() {
        return this.idProducto;
    }
    
    public void setIdProducto(Long idProducto) {
        this.idProducto = idProducto;
    }
    public TiposMedidas getTiposMedidas() {
        return this.tiposMedidas;
    }
    
    public void setTiposMedidas(TiposMedidas tiposMedidas) {
        this.tiposMedidas = tiposMedidas;
    }
    public Usuarios getUsuarios() {
        return this.usuarios;
    }
    
    public void setUsuarios(Usuarios usuarios) {
        this.usuarios = usuarios;
    }
    public String getNombre() {
        return this.nombre;
    }
    
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
    public String getDescripcion() {
        return this.descripcion;
    }
    
    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }
    public float getCosto() {
        return this.costo;
    }
    
    public void setCosto(float costo) {
        this.costo = costo;
    }
    public Float getPrecioGeneral() {
        return this.precioGeneral;
    }
    
    public void setPrecioGeneral(Float precioGeneral) {
        this.precioGeneral = precioGeneral;
    }
    public Float getPrecioIntermedio() {
        return this.precioIntermedio;
    }
    
    public void setPrecioIntermedio(Float precioIntermedio) {
        this.precioIntermedio = precioIntermedio;
    }
    public Float getPrecioEspecial() {
        return this.precioEspecial;
    }
    
    public void setPrecioEspecial(Float precioEspecial) {
        this.precioEspecial = precioEspecial;
    }
    public String getTipo() {
        return this.tipo;
    }
    
    public void setTipo(String tipo) {
        this.tipo = tipo;
    }
    public Long getCantidad() {
        return this.cantidad;
    }
    
    public void setCantidad(Long cantidad) {
        this.cantidad = cantidad;
    }
    public Set getProveedoresProductoses() {
        return this.proveedoresProductoses;
    }
    
    public void setProveedoresProductoses(Set proveedoresProductoses) {
        this.proveedoresProductoses = proveedoresProductoses;
    }
    public Set getPedidosProductoses() {
        return this.pedidosProductoses;
    }
    
    public void setPedidosProductoses(Set pedidosProductoses) {
        this.pedidosProductoses = pedidosProductoses;
    }
    public Set getVentasProductoses() {
        return this.ventasProductoses;
    }
    
    public void setVentasProductoses(Set ventasProductoses) {
        this.ventasProductoses = ventasProductoses;
    }
    public Set getInventarioses() {
        return this.inventarioses;
    }
    
    public void setInventarioses(Set inventarioses) {
        this.inventarioses = inventarioses;
    }




}


