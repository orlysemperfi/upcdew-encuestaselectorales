/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package edu.upc.pc02.controller;

import edu.upc.pc02.dao.Cuenta;
import edu.upc.pc02.dao.Cliente;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Owner
 */
public class HolaServlet extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            /* TODO output your page here
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet HolaServlet</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet HolaServlet at " + request.getContextPath () + "</h1>");
            out.println("</body>");
            out.println("</html>");
            */
        } finally { 
            out.close();
        }
    } 

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {




    } 

    /** 
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {

      
        String numerotarjeta=request.getParameter("numerotarjeta");
        String pin=request.getParameter("pin");

       
        Cliente cliente = new Cliente();
        cliente.setNumerotarjeta(numerotarjeta);
        cliente.setPin(pin);
        cliente.setNombrecliente("Chriss");
        cliente.getCuentas().add(new Cuenta(1,"Soles"));
        cliente.getCuentas().add(new Cuenta(2,"Dolares"));

       
       Cliente cliente1 = new Cliente();
        cliente1.setNumerotarjeta(numerotarjeta);
        cliente1.setPin(pin);
        cliente1.setNombrecliente("Gab");
        cliente1.getCuentas().add(new Cuenta(1,"Soles"));
        cliente1.getCuentas().add(new Cuenta(2,"Dolares"));


         Cliente cliente2 = new Cliente();
        cliente2.setNumerotarjeta(numerotarjeta);
        cliente2.setPin(pin);
        cliente2.setNombrecliente("Chriss");
        cliente2.getCuentas().add(new Cuenta(1,"Soles"));
        cliente2.getCuentas().add(new Cuenta(2,"Dolares"));

        ArrayList<Cliente> clientes = new ArrayList<Cliente>();

        clientes.add(cliente);
        clientes.add(cliente1);
        clientes.add(cliente2);



        System.out.println(numerotarjeta +' '+ pin);

        //subir a sesssion
        HttpSession session = request.getSession();
        session.setAttribute("cliente3",cliente);
        Cliente cliente3 = (Cliente)session.getAttribute("cliente3");
        

        request.setAttribute("cliente", cliente);
        request.setAttribute("clientes", clientes);


        getServletContext().setAttribute("aaa", request);

        //donde quieres que vaya y le le doy
        request.getRequestDispatcher("ciente.jsp").forward(request, response);


    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
