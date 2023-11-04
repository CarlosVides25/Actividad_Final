<%-- 
    Document   : Cotizacion
    Created on : 10/10/2023, 8:51:55 p. m.
    Author     : Carlos Vides
--%>

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
           body {background-image: url('Iconos/man-in-sportwear-isolated-free-png.png'), linear-gradient(#FFFFFF, rgb(12,183,242)); 
                      background-repeat: no-repeat; }
        </style>
         <h1 align="Right">  <font face="Arial"> Cotizacion</font> <img src="Iconos/857418.png" width="70"> </h1>
         
         <%
             
             double pre=Double.parseDouble(request.getParameter("elegir"));
             String color=request.getParameter("elegir_c");
             String tamaño=request.getParameter("elegir_t");
             int cant=Integer.parseInt(request.getParameter("txt"));
             double total= cant*pre;
         %>
        <div style="font-size: 25px" align="right">Producto: <%=pre%><font><br><div>
        <div style="font-size: 25px" align="right">Color: <%=color%><font><br><div>
        <div style="font-size: 25px" align="right">Tamaño: <%=tamaño%><font><br><div>
        <div style="font-size: 25px" align="right">Cantidad: <%=cant%><font><br><div>
        <div style="font-size: 25px" align="right">Total: <%=total%><font><br><div>
         
         <div style="font-size: 25px" align="right"><a href="servicios.html"> Volver <font></a></div>
         <div style="font-size: 25px" align="right"><a href="Pagina principal.html"> Volver a Menu<font></a></div>
    </body>
</html>
