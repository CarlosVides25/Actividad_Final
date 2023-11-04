<%-- 
    Document   : datos
    Created on : 25/10/2023, 10:31:56 p. m.
    Author     : Carlos Vides
--%>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <style>
           html {height: 100%;}
           body {background-image: linear-gradient(#FFFFFF, rgb(12,183,242));}
        </style>
        <h1 style="font-size:50px" align="center">Datos Registrados <font></h1>
        
        
        <% 

             String nomb=request.getParameter("nombre");
             String correo=request.getParameter("correo");
             String ser=request.getParameter("elegir_s");
             String cel=request.getParameter("cel");
             
             Connection cnx=null;
             Statement ste=null;
             ResultSet res=null;
            
            Class.forName("com.mysql.jdbc.Driver");
            cnx=DriverManager.getConnection("jdbc:mysql://localhost/datos?user=root&password=");
            
            ste=cnx.createStatement(); 
            ste.executeUpdate("insert into datos values('"+nomb+"','"+correo+"','"+ser+"','"+cel+"')");

          
         %> 
         <table border="1" width="600">
             <tr>
                 <th>Nombres y apellidos</th> <th>Correo Electronico</th><th>Servicio que solicita</th>
                 <th>Celular</th>
         <%
            
            Class.forName("com.mysql.jdbc.Driver");
            cnx=DriverManager.getConnection("jdbc:mysql://localhost/datos?user=root&password=");
            
            ste=cnx.createStatement();
            res=ste.executeQuery("select * from datos");
            
            while(res.next()){
                     %>
                     
             <tr>
                 <th><%=res.getString(1)%></th>
                 <th><%=res.getString(2)%></th>
                 <th><%=res.getString(3)%></th>
                 <th><%=res.getString(4)%></th>
             </tr>
                 
                     <%
                         }
                     ste.close();
                      res.close();
                     cnx.close();

         %> 
             
         </table>
      <button style="font-size: 25px" name="Volver" value="Volver" onClick="location.href='Solicitud de servicio.html'">Volver</button>
    </body>
</html>
