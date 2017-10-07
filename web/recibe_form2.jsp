<%-- 
    Document   : recibe_form2
    Created on : 06/10/2017, 06:48:42
    Author     : Silvia
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       
         <%
        String studying =request.getParameter("select_1");
        String interest =request.getParameter("select_2");
        String  hobbie =request.getParameter("select_3");
        
        
//Crear la cookie

Cookie laCookie1 = new Cookie("form2.choose_studying", studying);
Cookie laCookie2 = new Cookie("form2.choose_interest", interest);
Cookie laCookie3 = new Cookie("form2.choose_hobbie", hobbie);
 //vida d la cookie
 
laCookie1.setMaxAge(365*24*60*60); //1año
laCookie2.setMaxAge(365*24*60*60); 
laCookie3.setMaxAge(365*24*60*60); 

//enviar a usuario

response.addCookie(laCookie1);
response.addCookie(laCookie2);
response.addCookie(laCookie3);

    %>
    
    <h3>Gracias por enviar tus preferencias</h3>
    <br><br>
   Fecha <%= new java.util.Date() %>
     <br><br>
    <a href="peferencias_form2.jsp">Ir a Lista de Ayuda semanal de acuerdo a tus prefenrencias, tomar nota, y repasar.  </a>
    </body>
</html>
