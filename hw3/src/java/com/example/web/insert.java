package com.example.web;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import com.example.dao.ProductDao;
import com.example.model.Product;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author alkis
 */
public class insert extends HttpServlet {
    private static final long serialVersionUID = 1L;
    ProductDao productDao;
    
    public void init(){
        productDao = new ProductDao();
    }
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */

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
        doPost(request, response);
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
            String pbarcode = request.getParameter("barcode");
            String pname = request.getParameter("name");
            String pcolor = request.getParameter("color");
            String pdescription = request.getParameter("description");
            Product product = productDao.getProduct(pbarcode);
            if(product != null){
                request.setAttribute("barcode", pbarcode);
                getServletContext().getRequestDispatcher("/error.jsp").forward(request, response);
            }
            else{
                Product newProduct = new Product(pbarcode, pname, pcolor, pdescription);
                productDao.saveProduct(newProduct);
                //response.sendRedirect("list");
                request.setAttribute("barcode", pbarcode);
                request.setAttribute("name", pname);
                request.setAttribute("color", pcolor);
                request.setAttribute("description", pdescription);
                getServletContext().getRequestDispatcher("/ProductPage.jsp").forward(request, response);
            }
            
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
