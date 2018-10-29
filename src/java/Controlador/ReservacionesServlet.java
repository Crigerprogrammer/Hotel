/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Modelo.Reservacion;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ReservacionesServlet extends HttpServlet {

 
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            String fecha1= request.getParameter("fecha_ingreso");
            String fecha2= request.getParameter("fecha_salida");
            int idHabitacion= Integer.parseInt(request.getParameter("habitacionHotelPerteneciente"));  
            String idCliente = request.getParameter("nitcliente"); 
            int idTarifa= Integer.parseInt(request.getParameter("tarifaperteneciente"));  
            
            //int idTarifa= Integer.parseInt(request.getParameter("tarifaperteneciente"));
            //int idCliente= Integer.parseInt(request.getParameter("nitcliente"));
            Reservacion rn = new Reservacion();
            rn.insertar_nueva_reservacion(fecha1, fecha2, idHabitacion, idCliente, idTarifa);
            String direccionPagina="http://localhost:8080/Hotel/cnreservacion.jsp";//aqui se debe cambiar la direccion para redireccionar
            request.getSession().setAttribute("direccion", direccionPagina); 
            request.getRequestDispatcher("/confirmacionInsercion.jsp").forward(request, response);;
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
