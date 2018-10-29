/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Modelo.Llamada;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LlamadasServlet extends HttpServlet {

 
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            int llamada= Integer.parseInt(request.getParameter("telefono"));
            int tarifa= Integer.parseInt(request.getParameter("duracion"));
            int idHabitacion= Integer.parseInt(request.getParameter("habitacionHotelPerteneciente"));  
            int idTarifa= Integer.parseInt(request.getParameter("tarifaperteneciente"));  
            String idCliente = request.getParameter("nitcliente"); 
            //int idTarifa= Integer.parseInt(request.getParameter("tarifaperteneciente"));
            //int idCliente= Integer.parseInt(request.getParameter("nitcliente"));
            Llamada ll = new Llamada();
            ll.insertar_nueva_llamada(llamada, tarifa, idHabitacion, idTarifa, idCliente);
            String direccionPagina="http://localhost:8080/Hotel/cnllamada.jsp";//aqui se debe cambiar la direccion para redireccionar
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
