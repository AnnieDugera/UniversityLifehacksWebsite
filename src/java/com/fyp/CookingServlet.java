/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.fyp;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author macke
 */
@WebServlet(name = "CookingServlet", urlPatterns = {"/CookingServlet"})
public class CookingServlet extends HttpServlet {

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
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet HackServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet HackServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
    //this implemnts the functionaliy for updating, and removing hack objects
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        HackDAO kd = new HackDAO();
       ArrayList<Hack> cooks = kd.getCooking();
        Collections.sort(cooks, Collections.reverseOrder());
        
    /*    
     ArrayList<Hack> HACKTOP10 = new ArrayList <Hack>();
        //top ten only, by likes
        int n=10;
        if (hacks.size()>= 10){
        for(int i = 0; i< n; i++)
            HACKTOP10.add(hacks.get(i));
        }
        else {
        HACKTOP10 = hacks;
        }
        */
        //request, from button, creating session from session
        //session kast full time on brwser
        HttpSession session = request.getSession();
        
        //users(1); calling the obj stored on wbg and going to acess via name users
        //could be other word.  ex people etc
        session.setAttribute("cooks", cooks);
        
        response.sendRedirect("cooks.jsp");
        }
//         public class likecomparator implements Comparator<Hack>{
//
//        @Override
//        public int compare(Hack o1, Hack o2) {
//            return o1.getLike() - o2.getLike();
//                  }
//        Arrays.sort
    
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
