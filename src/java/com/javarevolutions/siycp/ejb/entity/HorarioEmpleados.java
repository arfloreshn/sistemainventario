package com.javarevolutions.siycp.ejb.entity;
// Generated 13/02/2014 04:39:40 PM by Hibernate Tools 3.6.0


import java.util.Date;

/**
 * HorarioEmpleados generated by hbm2java
 */
public class HorarioEmpleados  implements java.io.Serializable {


     private long idHorario;
     private Usuarios usuarios;
     private Date horaRegistro;

    public HorarioEmpleados() {
    }

    public HorarioEmpleados(long idHorario, Usuarios usuarios, Date horaRegistro) {
       this.idHorario = idHorario;
       this.usuarios = usuarios;
       this.horaRegistro = horaRegistro;
    }
   
    public long getIdHorario() {
        return this.idHorario;
    }
    
    public void setIdHorario(long idHorario) {
        this.idHorario = idHorario;
    }
    public Usuarios getUsuarios() {
        return this.usuarios;
    }
    
    public void setUsuarios(Usuarios usuarios) {
        this.usuarios = usuarios;
    }
    public Date getHoraRegistro() {
        return this.horaRegistro;
    }
    
    public void setHoraRegistro(Date horaRegistro) {
        this.horaRegistro = horaRegistro;
    }




}


