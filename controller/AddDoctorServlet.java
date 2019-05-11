
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modal.DoctorAdd;
import modal.doctorDAO;
import modal.patientDAO;

public class AddDoctorServlet extends HttpServlet {

   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
           
         String did = request.getParameter("did");
           String name = request.getParameter("dname");
           
           String gender = request.getParameter("gender");
           String email = request.getParameter("email");
           String address = request.getParameter("address");
           
           String contact = request.getParameter("pno");
           String dept = request.getParameter("dpt");
           
           
           DoctorAdd d = new DoctorAdd();
          d.setDaddress(address);
          d.setDcontact(contact);
          d.setDdept(dept);
          d.setDemail(email);
          d.setDgender(gender);
          d.setDid(did);
          d.setDname(name);
           
           doctorDAO dd = new doctorDAO();
           dd.save(d);
           
           out.print("sucess");
           
            RequestDispatcher rd=request.getRequestDispatcher("doctor.jsp");  
            rd.forward(request,response);
        
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
