<%-- 
    Document   : doLuu
    Created on : Dec 4, 2020, 9:24:15 PM
    Author     : DELL
--%>

<%@page import="DAO.ChangduaDAO"%>
<%@page import="Model.Changdua"%>
<%@page import="java.sql.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>

    <body>

        <%
            request.setCharacterEncoding("UTF-8");
            if(request.getParameter("id")!=null){
            int idChang = Integer.parseInt(request.getParameter("id"));
            String tenChang = (String) request.getParameter("tenChang");
            String tenVong = (String) request.getParameter("tenVong");
            String duongDua = (String) request.getParameter("duongDua");
            Date ngayDua = Date.valueOf(request.getParameter("ngayDua"));
            int soVong = Integer.parseInt(request.getParameter("soVong"));
            double chieudai1vong = Double.parseDouble(request.getParameter("motVong"));
            String moTa = (String) request.getParameter("moTa");
            int idGiai = (int) session.getAttribute("Giai");

            Changdua chang = new Changdua(idChang, idGiai, tenChang, tenVong, duongDua, ngayDua, soVong, chieudai1vong, moTa);
            ChangduaDAO changDAO = new ChangduaDAO();
            changDAO.luuSua(chang);
            }
            else{
            String tenChang = (String) request.getParameter("tenChang");
            String tenVong = (String) request.getParameter("tenVong");
            String duongDua = (String) request.getParameter("duongDua");
            Date ngayDua = Date.valueOf(request.getParameter("ngayDua"));
            int soVong = Integer.parseInt(request.getParameter("soVong"));
            double chieudai1vong = Double.parseDouble(request.getParameter("motVong"));
            String moTa = (String) request.getParameter("moTa");
            int idGiai = (int) session.getAttribute("Giai");
            
            Changdua chang = new Changdua(idGiai, tenChang, tenVong, duongDua, ngayDua, soVong, chieudai1vong, moTa);
             ChangduaDAO changDAO = new ChangduaDAO();
            changDAO.themChang(chang);
            }

            session.removeAttribute("dsChang");

            response.sendRedirect("QlyChangdua.jsp");


        %>
        <h1>Hello World!</h1>
    </body>
</html>
