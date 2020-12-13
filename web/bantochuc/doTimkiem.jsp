<%-- 
    Document   : doTimkiem
    Created on : Dec 4, 2020, 7:45:00 PM
    Author     : DELL
--%>

<%@page import="DAO.ChangduaDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Model.Changdua"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            int idGiai = Integer.parseInt(request.getParameter("giaidua"));
            String ten = (String) request.getParameter("tenchang");
            ArrayList<Changdua> dsChang = (new ChangduaDAO()).SearchChang(idGiai, ten);
            session.setAttribute("dsChang", dsChang);
            session.setAttribute("Giai", idGiai);
            session.setAttribute("timKiem", ten);
            String action = (String) request.getParameter("action");
            if(action.equals("suaChang"))
            response.sendRedirect("QlyChangdua.jsp");
            else if(action.equals("nhapKQ"))
            response.sendRedirect("QlyKqChang.jsp");
        %>


    </body>
</html>
