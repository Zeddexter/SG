package Controlador;

import java.sql.*;

/**
 *
 * @autor Archivo: Usuario.java Creado: 6/5/2009 02:35:26 PM
 */
public class Usuario {

    private int usuario_Codigo;
    private String usuario_Nombre;
    private String usuario_Apellido;
    private String usuario_User;
    private String usuario_Clave;
    private String email;
    private String usrcre;
    private String usrmod;
    private String feccre;
    private String fecmod;

    /**
     * Crea un nueva instancia de la clase usuario
     */
    public Usuario() {

    }

    /**
     * Metodo usado para verificar si un usuario esta registrado en la Base de
     * Datos con su User y Clave de forma correcta
     *
     * @param user Que viene a ser el user del Usuario
     * @param clave Que viene a ser la clave del Usuario
     */
    public Usuario verificarUsuario(String user, String clave) {
        Usuario u = null;
        Connection cn = null;
        PreparedStatement pr = null;
        ResultSet rs = null;
        try {
            cn = Conexion.getConexion();
            String sql = "SELECT * FROM Usuario WHERE usuario=? AND clave=?";
            pr = cn.prepareStatement(sql);
            pr.setString(1, user);
            pr.setString(2, clave);
            rs = pr.executeQuery();
            while (rs.next()) {
                u = new Usuario();
                u.setUsuario_codigo(rs.getInt("coduser"));
                u.setUsuario_nombre(rs.getString("nombres"));
                u.setUsuario_apellido(rs.getString("apellidos"));
                u.setUsuario_user(rs.getString("usuario"));
                u.setUsuario_clave(rs.getString("clave"));
                u.setEmail(rs.getString("email"));
                break;
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
            u = null;
        } finally {
            try {
                rs.close();
                pr.close();
                rs.close();
            } catch (SQLException ex) {

            }
        }
        return u;
    }

    public boolean Registrar() throws SQLException {
        boolean registro = false;
        try {
            
            Connection cn = null;
            CallableStatement proc = null;
            cn = Conexion.getConexion();
            proc = cn.prepareCall("{ call setsg_usuarios(?,?,?,?,?,?,?)}");
           // proc.setInt(1, usuario_Codigo);
            proc.setString(1, usuario_Nombre);
            proc.setString(2, usuario_Apellido);
            proc.setString(3, usuario_User);
            proc.setString(4, usuario_Clave);
            proc.setString(5,usrcre);
            proc.setString(6, usrmod);
            proc.setString(7, email);
            proc.executeUpdate();
            registro = true;
            return registro;
        } catch (Exception e) {
              System.err.println("Error!");
            System.err.println(e.getMessage());
        }

        return registro;
    }

    /**
     * Metodos GET de la clase usuario
     */
    public int getUsuario_codigo() {
        return this.usuario_Codigo;
    }

    public String getUsuario_nombre() {
        return this.usuario_Nombre;
    }

    public String getUsuario_apellido() {
        return this.usuario_Apellido;
    }

    public String getUsuario_user() {
        return this.usuario_User;
    }

    public String getUsuario_clave() {
        return this.usuario_Clave;
    }

    public String getEmail() {
        return this.email;
    }

    /**
     * Metodos SET de la clase usuario
     */
    public void setUsuario_codigo(int usuario_Codigo) {
        this.usuario_Codigo = usuario_Codigo;
    }

    public void setUsuario_nombre(String usuario_Nombre) {
        this.usuario_Nombre = usuario_Nombre;
    }

    public void setUsuario_apellido(String usuario_Apellido) {
        this.usuario_Apellido = usuario_Apellido;
    }

    public void setUsuario_user(String usuario_User) {
        this.usuario_User = usuario_User;
    }

    public void setUsuario_clave(String usuario_Clave) {
        this.usuario_Clave = usuario_Clave;
    }

    public void setEmail(String Email) {
        this.email = Email;
    }

    /**
     * @return the usrcre
     */
    public String getUsrcre() {
        return usrcre;
    }

    /**
     * @return the usrmod
     */
    public String getUsrmod() {
        return usrmod;
    }

    /**
     * @return the feccre
     */
    public String getFeccre() {
        return feccre;
    }

    /**
     * @return the fecmod
     */
    public String getFecmod() {
        return fecmod;
    }

    /**
     * @param usrmod the usrmod to set
     */
    public void setUsrmod(String usrmod) {
        this.usrmod = usrmod;
    }

    /**
     * @param feccre the feccre to set
     */
    public void setFeccre(String feccre) {
        this.feccre = feccre;
    }

    /**
     * @param fecmod the fecmod to set
     */
    public void setFecmod(String fecmod) {
        this.fecmod = fecmod;
    }

    /**
     * @param usrcre the usrcre to set
     */
    public void setUsrcre(String usrcre) {
        this.usrcre = usrcre;
    }

}
