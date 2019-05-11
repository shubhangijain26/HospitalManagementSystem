
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modal.SignInDAO;
import modal.UserHosp;


public class LoginServlet extends HttpServlet {

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        String email=request.getParameter("email");
        String password=request.getParameter("pwd");
        String utype=request.getParameter("utype");
        
        UserHosp u = new UserHosp();
        u.setEmail(email);
        u.setPass(password);
        u.setUsertype(utype);
        
        SignInDAO sd = new SignInDAO();
        UserHosp ch = sd.check(u);
        
        if(ch==null)
        {
            response.sendRedirect("newhtml.html");
        }
        
        else
        {
            if(!(ch.getUsertype().equals(u.getUsertype())&&ch.getPass().equals(u.getPass())))
              {
                  response.sendRedirect("newhtml.html");
              }
              else
              {
              if(ch.getUsertype().equals("Doctor"))
              {
                  RequestDispatcher rd = request.getRequestDispatcher("AddDocForm.html");
                  rd.forward(request,response);
              }
              if(ch.getUsertype().equals("Patient"))
              {
                  RequestDispatcher rd = request.getRequestDispatcher("PatientForm.html");
                  rd.forward(request,response);
              }
              if(ch.getUsertype().equals("Admin"))
              {
                  RequestDispatcher rd = request.getRequestDispatcher("manager.html");
                  rd.forward(request,response);
              }
              }
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
