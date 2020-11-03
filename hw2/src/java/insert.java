/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author alkis
 */
public class insert extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    public void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            String pbarcode = request.getParameter("barcode");
            String pname = request.getParameter("name");
            String pcolor = request.getParameter("color");
            String pdescription = request.getParameter("description");
            
            request.setAttribute("successful",true);
            request.setAttribute("jbarcode", pbarcode);
            request.setAttribute("jname", pname);
            request.setAttribute("jcolor", pcolor);
            request.setAttribute("jdescription", pdescription);
            
            MyDb db = new MyDb();
            Connection con = db.getCon();
            Statement stmt = con.createStatement();
            
            String selectQuery = "SELECT * FROM product WHERE barcode='"+pbarcode+"'";
            ResultSet rs = stmt.executeQuery(selectQuery);
            
            if(rs.next()){
                RequestDispatcher rd = request.getRequestDispatcher("error.jsp");
                rd.forward(request, response);
            }
            else{      
                stmt.executeUpdate("insert into product (barcode,name,color,description) values('"+pbarcode+"','"+pname+"','"+pcolor+"','"+pdescription+"')");                
                RequestDispatcher rd = request.getRequestDispatcher("ProductPage.jsp");
                rd.forward(request, response);
            }
            //response.sendRedirect("ProductPage.jsp");
        } catch (SQLException ex) {
            Logger.getLogger(insert.class.getName()).log(Level.SEVERE, null, ex);
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
    public void doGet(HttpServletRequest request, HttpServletResponse response)
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
    public void doPost(HttpServletRequest request, HttpServletResponse response)
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
