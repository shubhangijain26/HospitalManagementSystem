

<%@page import="java.util.List"%>
<%@page import="modal.PatientAdd"%>
<%@page import="org.hibernate.Query"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@page import="org.hibernate.cfg.Configuration"%>
<%@page import="java.io.PrintWriter"%>

<html>
    
    <head>
    <title>Patient</title>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>



   <script src="patient.js"></script>
  <link rel="stylesheet" href="main.css">
  <link rel="stylesheet" href="patient.css">


    <meta name="viewport" content="width=device-width, initial-scale=1">
  </head>

    <body>
        
   

<%
    
    String id=request.getParameter("x");  
if(id==null || id.trim().equals("")){  
  
}
 
         Configuration cf = null;
        SessionFactory sf= null;
        Session sess1 = null;
        try
        {
            
        
        cf = new Configuration();
       cf.configure("cfgpacakage/hibernate.cfg.xml");
       sf=cf.buildSessionFactory();
       sess1 = sf.openSession();
       
       Transaction tx = sess1.beginTransaction();
        Query query = sess1.createQuery("from PatientAdd where pid like '%"+id+"%'");
        
        List<PatientAdd> records = query.list();
       
        
      
      out.print("<br><br><br><br>");
        
         for(PatientAdd s1: records)
           {
               
           out.print("<p>Patiend ID: "+s1.getPid()+"<p> Patient Name: "+s1.getPname()+"<p> Gender: "+s1.getPgender()+"<p>Date of Birth:"+s1.getPdob() +"<p> Email: "+s1.getPemail()+"<p> Address: "+s1.getPaddress()+"<p>Contact No:"+s1.getPcontact());
              
           }
           
            
          tx.commit();
       
        }
        catch(Exception e){e.printStackTrace();}  

        finally{
          sess1.close();
          sf.close(); 
        }

%>

 </body>
</html>