
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modal.PatientAdd;
import modal.patientDAO;

public class AddPatientServlet extends HttpServlet {

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        String pid = request.getParameter("pid");
           String name = request.getParameter("pname");
           String birth = request.getParameter("dob");
           
           String gender = request.getParameter("gender");
           String email = request.getParameter("email");
           String address = request.getParameter("address");
           
           String contact = request.getParameter("pno");
           String bed = request.getParameter("bno");
           String allergies = request.getParameter("allergies");
           
           String med = request.getParameter("medications");
           String history = request.getParameter("history");
           String summary = request.getParameter("cSummary");
           
           
           PatientAdd p = new PatientAdd();
           p.setPaddress(address);
           p.setPallergies(allergies);
           p.setPbed(bed);
           p.setPcontact(contact);
           p.setPdob(birth);
           p.setPemail(email);
           p.setPgender(gender);
           p.setPhistory(history);
           p.setPid(pid);
           p.setPmed(med);
           p.setPname(name);
           p.setPsummary(summary);
           
           patientDAO pd = new patientDAO();
           pd.save(p);
           
           out.print("sucess");
           
            RequestDispatcher rd=request.getRequestDispatcher("patient.jsp");  
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
