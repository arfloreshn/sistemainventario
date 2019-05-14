package com.javarevolutions.siycp.ejb.entity;
// Generated 13/02/2014 04:39:40 PM by Hibernate Tools 3.6.0


import java.util.HashSet;
import java.util.Set;

/**
 * SeguimientoPagos generated by hbm2java
 */
public class SeguimientoPagos  implements java.io.Serializable {


     private int idSeguimientoPago;
     private Usuarios usuarios;
     private double totalDeuda;
     private Set pagoses = new HashSet(0);

    public SeguimientoPagos() {
    }

	
    public SeguimientoPagos(int idSeguimientoPago, Usuarios usuarios, double totalDeuda) {
        this.idSeguimientoPago = idSeguimientoPago;
        this.usuarios = usuarios;
        this.totalDeuda = totalDeuda;
    }
    public SeguimientoPagos(int idSeguimientoPago, Usuarios usuarios, double totalDeuda, Set pagoses) {
       this.idSeguimientoPago = idSeguimientoPago;
       this.usuarios = usuarios;
       this.totalDeuda = totalDeuda;
       this.pagoses = pagoses;
    }
   
    public int getIdSeguimientoPago() {
        return this.idSeguimientoPago;
    }
    
    public void setIdSeguimientoPago(int idSeguimientoPago) {
        this.idSeguimientoPago = idSeguimientoPago;
    }
    public Usuarios getUsuarios() {
        return this.usuarios;
    }
    
    public void setUsuarios(Usuarios usuarios) {
        this.usuarios = usuarios;
    }
    public double getTotalDeuda() {
        return this.totalDeuda;
    }
    
    public void setTotalDeuda(double totalDeuda) {
        this.totalDeuda = totalDeuda;
    }
    public Set getPagoses() {
        return this.pagoses;
    }
    
    public void setPagoses(Set pagoses) {
        this.pagoses = pagoses;
    }




}

