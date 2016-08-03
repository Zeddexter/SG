/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

import Controlador.Usuario;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author usuario
 */
public class RegistrarUsuario extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            Usuario usr = new Usuario();
            if(request.getParameter("txtcodUsuario").trim().length()!=0 )
            {
                usr.setUsuario_codigo(Integer.parseInt(request.getParameter("txtcodUsuario")));
            }
            
            usr.setUsuario_nombre(request.getParameter("txtNombres").trim());
            usr.setUsuario_apellido(request.getParameter("txtApellidos").trim());
            usr.setUsuario_user(request.getParameter("txtUsuario").trim());
            usr.setUsuario_clave(request.getParameter("txtClave").trim());
            usr.setEmail(request.getParameter("txtEmail").trim());
            //usr.setUsrcre(request.getParameter("txtusrcre").trim());
            //usr.setUsrmod(request.getParameter("txtUsrmod").trim());
            SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");
            usr.setUsrcre("JTORRES");
           // Date date = formatter.parse("28/07/2016");
           // usr.setFeccre((java.sql.Date) date);

            //if (request.getParameter("txtFeccre").trim() != null || request.getParameter("txtFeccre").trim() != "") {
            //    Date date = formatter.parse(request.getParameter("txtFeccre").trim());
            //    usr.setFeccre((java.sql.Date) date);
            //}
            //if (request.getParameter("txtFecmod").trim() != null || request.getParameter("txtFecmod").trim() != "") {
            //    Date date = formatter.parse(request.getParameter("txtFecmod").trim());
            //    usr.setFecmod(((java.sql.Date) date));
            //}
            usr.Registrar();

        } catch (Exception e) {
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
