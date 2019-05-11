<%@page import="java.util.List"%>
<%@page import="org.hibernate.Criteria"%>
<%@page import="modal.PatientAdd"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@page import="org.hibernate.cfg.Configuration"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        
    </head>
    <body>
        <%
            Configuration cf = null;
            SessionFactory sf = null;
            Session ses = null;
            List<PatientAdd> record = null;
            try
            {
                cf = new Configuration();
                cf.configure("cfgpacakage/hibernate.cfg.xml");
                sf = cf.buildSessionFactory();
                ses = sf.openSession();
                Transaction tx = ses.beginTransaction();
                
                Criteria criteria = ses.createCriteria(PatientAdd.class);
                record = criteria.list();
                
                out.print("<center><table id='ptable'>");
                out.print("<tr> <th>Patient ID</th> <th>Patient Name</th> <th>Date Of Birth</th> <th>Gender</th> <th>Address</th> </tr>");
                
                for(PatientAdd p : record )
                {
                    out.print("<tr> <td>"+p.getPid()+"</td> <td>"+p.getPname()+"</td> <td>"+p.getPdob()+"</td> <td>"+p.getPgender()+"</td> <td>"+p.getPaddress()+"</td> </tr>");
                }
                out.print("</table></center>");
            }
            catch(Exception e)
            {
                e.printStackTrace();
            }
            finally
            {
                ses.close();
                sf.close();
            }
        %>
    </body>
</html>