<%-- 
    Document   : doLuuKQ
    Created on : Dec 5, 2020, 10:42:50 PM
    Author     : DELL
--%>

<%@page import="java.util.Comparator"%>
<%@page import="java.util.Collections"%>
<%@page import="java.sql.Time"%>
<%@page import="DAO.thidauDAO"%>
<%@page import="Model.Thidau"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Model.Changdua"%>
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
            
       ArrayList<Thidau> listTD = (ArrayList < Thidau > )session.getAttribute("dsThidau");
       for(int i = 0;i<listTD.size();i++){
           
           int sv = Integer.parseInt(request.getParameter(new String("sovonght"+listTD.get(i).getId()))); 
           Time ht = Time.valueOf(request.getParameter(new String("thoigian"+listTD.get(i).getId())));
           int landung = Integer.parseInt(request.getParameter(new String("solandung"+listTD.get(i).getId())));
           String ghichu = request.getParameter(new String("ghichu"+listTD.get(i).getId()));
           listTD.get(i).setSoVongHt(sv);
           listTD.get(i).setThoigian(ht);
           listTD.get(i).setSoLanDung(landung);
           listTD.get(i).setGhiChu(ghichu);
           
       }
       
       thidauDAO tDAO = new thidauDAO();
       Collections.sort(listTD, Comparator.comparing(Thidau::getThoigian));
       Collections.reverse(listTD);
       Collections.sort(listTD, Comparator.comparing(Thidau::getSoVongHt));
       Collections.reverse(listTD);
        for(int i = 0;i<listTD.size();i++){
           
         
           listTD.get(i).setXepHang(i+1);
           listTD.get(i).setDiem();
           tDAO.luuKQ(listTD.get(i));
       }
       session.setAttribute("dsThidau", listTD);
       response.sendRedirect("hienThiKQ.jsp");
        %>
    </body>
</html>
