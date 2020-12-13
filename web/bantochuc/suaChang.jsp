<%-- 
    Document   : suaChang.jsp
    Created on : Dec 4, 2020, 8:28:04 PM
    Author     : DELL
--%>

<%@page import="Model.nhanVien"%>
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
                        <p style="margin-top: 22px; font-size: x-large;">Sửa thông tin chặng đua</p>
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
                                <a class="nav-link active" href="../bantochuc/QlyChangdua.jsp">Quản lý chặng đua</a>
                            </li>
                            <li class="nav-item ">
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
            <h2>Thông tin chi tiết chặng đua
                <a href="../bantochuc/doXoaChang.jsp?id=<%=chang.getId()%>" onclick="return confirm('Bạn có chắc chắn xóa chặng này?');"> <button style="position: absolute; left: 900px; font-size: 20px;" class="btn btn-danger">Xoá chặng đua</button></a>
                
            </h2>
            <form action="../bantochuc/doLuu.jsp" method="post">
                <input name="id" type="hidden" value=<%=chang.getId()%> >

                <div class="row ">
                    <div class="col-1"></div>
                    <div class="col-5 " >
                        <table class="table table-borderless">

                            <tbody>
                                <tr>
                                    <td>Tên chặng: </td>
                                    <td>  <input type="text" name="tenChang" class="chang-input" value="<%=chang.getTenChang()%>"></td>
                                </tr>

                                <tr>
                                    <td>Vòng đua: </td>
                                    <td>  <input type="text" name ="tenVong" class="chang-input" value="<%=chang.getTenVong()%>"></td>
                                </tr>

                                <tr>
                                    <td>Đường đua: </td>
                                    <td> <input type="text"  name="duongDua" value="<%=chang.getDuongDua()%>">
                                    </td>
                                </tr>

                            </tbody>
                        </table>
                    </div>
                    <div class="col-6">
                        <table class="table table-borderless">
                            <thead>
                            <th style="width: 150px;"></th>
                            <th></th>
                            </thead>
                            <tbody>

                                <tr>

                                    <td>Ngày đua: </td>
                                    <td> <input type="date" name="ngayDua" class="chang-input" value=<%=chang.getNgayDua()%>></td>
                                </tr>
                                <tr>
                                    <td>Số vòng tối đa: </td>
                                    <td>  <input type="text" name="soVong"class="chang-input" value=<%=chang.getSoVong()%>></td>
                                </tr>
                                <tr>
                                    <td>Chiều dài 1 vòng: </td>
                                    <td>  <input type="text" name="motVong" class="chang-input" value=<%=chang.getChieuDaiVong()%>> km</td>
                                </tr>
                                <tr>
                                    <td>Ghi chú: </td>
                                    <td>  <input type="text" name="moTa" class="chang-input" value="<%=chang.getMota()%>"></td>
                                </tr>

                            </tbody>

                        </table>

                    </div>

                </div>
                <div class="col-1"></div>
                <div class="buttonDirect" style="float: right;position:  absolute;right: 150px ">
                    <button class=" btn btn-success" style="margin-left: -20px;">Lưu chỉnh sửa</button>

                </div>

            </form>
            <a href="../bantochuc/QlyChangdua.jsp" style="float: right"><button class="btn btn-primary">Huỷ chỉnh sửa</button></a>
        </div>




    </div>




</body>

</html>
