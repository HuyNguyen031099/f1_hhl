<%-- 
    Document   : doXoaChang.jsp
    Created on : Dec 4, 2020, 11:00:16 PM
    Author     : DELL
--%>

<%@page import="DAO.ChangduaDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            int idChang = Integer.parseInt(request.getParameter("id"));
            ChangduaDAO changDAO = new ChangduaDAO();
            changDAO.xoaChang(idChang);
            
            session.removeAttribute("dsChang");
            response.sendRedirect("QlyChangdua.jsp");
        %>
        <h1>Hello World!</h1>
    </body>
</html>
