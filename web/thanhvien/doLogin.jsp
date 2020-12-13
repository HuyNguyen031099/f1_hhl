<%-- 
    Document   : doLogin
    Created on : Dec 6, 2020, 7:19:20 PM
    Author     : DELL
--%>

<%@page import="DAO.thanhvienDAO"%>
<%@page import="Model.nhanVien"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String usrn = request.getParameter("username");
            String pwd = request.getParameter("password");
            nhanVien nv = new nhanVien();
            nv.setUsrn(usrn);
            nv.setPwd(pwd);
            thanhvienDAO tvDAO = new thanhvienDAO();
            boolean kq = tvDAO.KtraDN(nv);
            if (kq && (nv.getVaitro().equalsIgnoreCase("bantochuc"))) {
                session.setAttribute("bantochuc", nv);
                response.sendRedirect("../bantochuc/admin.jsp");
            } else {
                response.sendRedirect("../thanhvien/login.jsp?err=fail");
            }


        %>
    </body>
</html>
