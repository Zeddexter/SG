/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import java.util.List;
import java.sql.*;
import java.util.ArrayList;
import java.util.Vector;

import java.util.Date;

/**
 *
 * @author usuario
 */
public class Opciones {
    private int codop;
    private String descripcion;
    private String nombre;
    private String usrcre;
    private String usrmod;
    private Date feccre;
    private Date fecmod;


public Vector<Opciones> listaOpciones()
{
        Vector<Opciones> lp=new Vector<Opciones>();
        Connection cn=null;
        PreparedStatement pr=null;
        ResultSet rs=null;
        try{
            cn=Conexion.getConexion();
            String sql="SELECT * FROM Opciones";
            pr=cn.prepareStatement(sql);
            rs=pr.executeQuery();
            while(rs.next()){
                Opciones opcion=new Opciones();
                opcion.setCodop(rs.getInt("codop"));
                opcion.setDescripcion(rs.getString("descripcion"));
                opcion.setNombre(rs.getString("nombre"));
                opcion.setUsrcre(rs.getString("usrcre"));
                lp.add(opcion);
            }
        }catch(SQLException ex){
            ex.printStackTrace();
            lp=null;
        }finally{
            try{
                rs.close();
                pr.close();
                cn.close();
            }catch(SQLException ex){
                ex.printStackTrace();
            }
        }
        return lp;
}

    /**
     * @return the codop
     */
    public int getCodop() {
        return codop;
    }

    /**
     * @param codop the codop to set
     */
    public void setCodop(int codop) {
        this.codop = codop;
    }

    /**
     * @return the descripcion
     */
    public String getDescripcion() {
        return descripcion;
    }

    /**
     * @param descripcion the descripcion to set
     */
    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    /**
     * @return the nombre
     */
    public String getNombre() {
        return nombre;
    }

    /**
     * @param nombre the nombre to set
     */
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    /**
     * @return the usrcre
     */
    public String getUsrcre() {
        return usrcre;
    }

    /**
     * @param usrcre the usrcre to set
     */
    public void setUsrcre(String usrcre) {
        this.usrcre = usrcre;
    }

    /**
     * @return the usrmod
     */
    public String getUsrmod() {
        return usrmod;
    }

    /**
     * @param usrmod the usrmod to set
     */
    public void setUsrmod(String usrmod) {
        this.usrmod = usrmod;
    }

    /**
     * @return the feccre
     */
    public Date getFeccre() {
        return feccre;
    }

    /**
     * @param feccre the feccre to set
     */
    public void setFeccre(Date feccre) {
        this.feccre = feccre;
    }

    /**
     * @return the fecmod
     */
    public Date getFecmod() {
        return fecmod;
    }

    /**
     * @param fecmod the fecmod to set
     */
    public void setFecmod(Date fecmod) {
        this.fecmod = fecmod;
    }
}