package com.javarevolutions.siycp.ejb.entity;
// Generated 13/02/2014 04:39:40 PM by Hibernate Tools 3.6.0



/**
 * Accesoriosxproducto generated by hbm2java
 */
public class Accesoriosxproducto  implements java.io.Serializable {


     private Long idAccesorioxproducto;
     private long idProducto;
     private long idAccesorio;

    public Accesoriosxproducto() {
    }

    public Accesoriosxproducto(long idProducto, long idAccesorio) {
       this.idProducto = idProducto;
       this.idAccesorio = idAccesorio;
    }
   
    public Long getIdAccesorioxproducto() {
        return this.idAccesorioxproducto;
    }
    
    public void setIdAccesorioxproducto(Long idAccesorioxproducto) {
        this.idAccesorioxproducto = idAccesorioxproducto;
    }
    public long getIdProducto() {
        return this.idProducto;
    }
    
    public void setIdProducto(long idProducto) {
        this.idProducto = idProducto;
    }
    public long getIdAccesorio() {
        return this.idAccesorio;
    }
    
    public void setIdAccesorio(long idAccesorio) {
        this.idAccesorio = idAccesorio;
    }




}


