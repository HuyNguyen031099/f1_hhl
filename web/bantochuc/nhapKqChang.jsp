<%-- 
    Document   : suaChang.jsp
    Created on : Dec 4, 2020, 8:28:04 PM
    Author     : DELL
--%>

<%@page import="Model.nhanVien"%>
<%@page import="DAO.DoiduaDAO"%>
<%@page import="Model.Taydua"%>
<%@page import="DAO.thidauDAO"%>
<%@page import="Model.Thidau"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Model.Changdua"%>
<%@page import="Model.Changdua"%>
<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">

    <head>
        <title>Dashboard</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="../css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="../styles.css">
        <link rel="icon" href="../images/favicon.ico" type="image/x-icon" />

        <script type="text/javascript">
            function openPage(pageURL) {
                window.location.href = pageURL;

            }

        </script>
        <style>
            body{
                font-family:Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;
                margin-left: 50px;
            }
            .nav-link {
                color: white;
                font-weight: bold;
                font-size: 15px;
            }

            .table {
                font-size: large;
                float: left;
            }

            .table tr {
                pointer-events: auto;
            }



            .times {
                font-size: large;
                font-weight: 600;
                margin-left: 80px;
            }

            .day-input {
                margin-left: 20px;
                border: 1px gray solid;

            } 
            .day-input :focus{

                border: 2px blue ;

            } 



        </style>
        <%
            nhanVien nv = (nhanVien) session.getAttribute("bantochuc");
            if (nv == null) {
                response.sendRedirect("../thanhvien/login.jsp?err=timeout");
            }
        %>
    </head>
    <%
        ArrayList<Changdua> dsChang = (ArrayList< Changdua>) session.getAttribute("dsChang");
        int index = Integer.parseInt(request.getParameter("index"));
        Changdua chang = dsChang.get(index);
        ArrayList<Thidau> listTD = (new thidauDAO()).getDsThidau(chang.getId());
        session.setAttribute("dsThidau", listTD);
        DoiduaDAO doiDAO = new DoiduaDAO();

    %>
    <body>
        <div class="menu-header fixed-top">
            <div class="header  ">
                <div class="row bg-light">
                    <div class="col-1 ">
                        <img style="height: 50px;width:70px ;;margin: 12px 0;opacity: .9;" src="../images/fia_logo.png"
                             alt="Logo">
                    </div>
                    <div class="col-9 align-content-center ">
                        <p style="margin-top: 22px; font-size: x-large;">Nhập kết quả chặng</p>
                    </div>
                    <div class="col-2">
                        <a href="../">
                            <button class="btn bg-info" style="color: white; margin-top: 25px;">Logout</button>
                        </a>
                    </div>
                </div>
            </div>
            <div class="menu">
                <nav class="navbar navbar-expand-md bg-dark navbar-dark">
                    <a class="navbar-brand" href="../bantochuc/admin.jsp">
                        <img src="../images/f1Logo(light).png" alt="Logo" style=" width:100px;">
                    </a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="collapsibleNavbar">
                        <ul class="navbar-nav">
                            <li class="nav-item">
                                <a class="nav-link" href="../bantochuc/QlyChangdua.jsp">Quản lý chặng đua</a>
                            </li>
                            <li class="nav-item active">
                                <a class="nav-link" href="../bantochuc/QlyKqChang.jsp">Quản lý kết quả chặng đua</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">Đăng ký tay đua vào chặng </a>
                            </li>
                        </ul>
                    </div>
                </nav>
                <br>
            </div>
        </div>

        <div class="container-fluid" style="margin-top: 150px;">
            <h1>Chặng <%=chang.getTenChang()%> -<%=chang.getTenVong()%></h1>
            <%if (listTD != null) {%>
            <h3>Danh sách thi đấu
            </h3>
            <form action="../bantochuc/doLuuKQ.jsp" method="post">

                
                <table class=" table table-bordered">
                    <thead>
                    <th>Thứ tự </th>
                    <th style="width: 150px;"> Tay đua</th>
                    <th style="width: 150px;">Đội đua</th>
                    <th >Số vòng hoàn thành</th>
                    <th>Thời gian hoàn thành</th>
                    <th>Số lần dừng</th>

                    <th>Ghi chú</th>

                    </thead>


                    <tbody>
                        <%for (int i = 0; i < listTD.size(); i++) {%>
                        <tr>
                            <td> <%=(i + 1)%> </td>    
                            <td><%=listTD.get(i).getTaydua().getTen()%></td>
                            <td><%=doiDAO.getTenDoi(listTD.get(i).getTaydua().getIdDoi())%></td>
                            <td><input style="width: 150px;" type="text" name="sovonght<%=listTD.get(i).getId()%>" value="<%=listTD.get(i).getSoVongHt()%>"></td>
                            <td><input style="width: 150px;" type="text" name="thoigian<%=listTD.get(i).getId()%>"value="<%=listTD.get(i).getThoigian()%>"></td>
                            <td><input style="width: 100px;" type="text" name="solandung<%=listTD.get(i).getId()%>"value="<%=listTD.get(i).getSoLanDung()%>"></td>
                            <%if(listTD.get(i).getGhiChu()==null) listTD.get(i).setGhiChu(""); %>
                            <td><input style="width: 100px;" type="text" name="ghichu<%=listTD.get(i).getId()%>"value="<%=listTD.get(i).getGhiChu() %>"></td>

                            <td></td>

                        </tr>
                        <%}%>
                    </tbody>
                </table>
                <button type="submit">Lưu</button>
            </form>
            <%} else{%>
            <h4><-Chưa có danh sách thi đấu-></h4>
           <%}%>






        </div>




    </body>

</html>
