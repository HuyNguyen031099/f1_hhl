<%-- 
    Document   : admin
    Created on : Dec 4, 2020, 8:24:30 PM
    Author     : DELL
--%>

<%@page import="Model.nhanVien"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
            }</script>
        <style>
            .nav-link {
                color: white;
                font-weight: bold;
                font-size: 15px;
            }

            .td-check {
                margin-left: 50px;
            }

            .blank_row {
                height: 50px !important;
                /* overwrites any other rules */
            }

            body {
                padding-top: 150px;
            }

            .menu-left {
                font-size: 17px;
                background-color: #343a40;
                margin-top: -200x;

            }

            .menuL {
                margin-top: 150px;
                width: 225px;

            }

            .menuL ul li a:hover {
                color: #7386D5;
                background: #fff;
                width: 210px;
            }

            .menuL ul li a {
                padding: 10px;
                font-size: 1.1em;
                display: block;
                text-decoration: none;
                color: white;
            }
        </style>
        <%
            nhanVien nv = (nhanVien) session.getAttribute("bantochuc");
            if (nv == null) {
                response.sendRedirect("../thanhvien/login.jsp?err=timeout");
            }
        %>
    </head>

    <body>
        <div class="body">
            <div class="menu-header fixed-top">
                <div class="header  ">
                    <div class="row bg-light">
                        <div class="col-1 ">
                            <img style="height: 50px;width:70px ;margin: 12px 0;opacity: .9;" src="../images/fia_logo.png" alt="Logo">
                        </div>
                        <div class="col-9 align-content-center ">
                            <p style="margin-top: 22px; font-size: x-large;">Quản lý giải đua xe công thức F1  </p>
                        </div>
                        <div class="col-2">
                            <a href="../">
                                <button class="btn bg-info" style="color: white; margin-top: 25px;">Logout</button>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="menu">
                    <nav class="navbar navbar-expand-md bg-dark navbar-dark border-bottom" style="height: 76px;">
                        <a class="navbar-brand" href="../bantochuc/admin.jsp">
                            <img src="../images/f1Logo(light).png" alt="Logo" style=" width:200px;">
                        </a>
                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse" id="collapsibleNavbar">
                            <ul class="navbar-nav">
                                <li class="nav-item">
                                    <a class="nav-link" href="../bantochuc/QlyChangdua.jsp">Quản lý chặng đua</a>
                                </li>
                                <li class="nav-item">
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


            <div class="container-fluid" style="overflow: auto; margin-top: auto;">
                <div class=" row row-body">
                    <div class="col-2 menu-left border-top">
                        <div class="menuL fixed-top">
                            <ul class="list-unstyled components">

                                <li class=" list-item active">
                                    <a href="#DsDoidua">Danh sách đội đua</a>

                                </li>
                                <li class=" list-item">
                                    <a href="#DsTaydua">Danh sách Tay đua</a>
                                </li>
                                <li class=" list-item">
                                    <a href="#pageSubmenu">Danh sách nhà tài trợ</a>

                                </li>
                                <li class=" list-item">
                                    <a href="#Hopdong">Hợp đồng tài trợ</a>
                                </li>
                                <li class=" list-item">
                                    <a href="#Taichinh">Thống kê tài chính</a>
                                </li>
                            </ul>

                        </div>
                    </div>
                    <div class="col" style="margin-top: 15px;">
                        <div class="row">
                            <div class="col-3">
                                <img src="../images/img_avatar.png" style="height: 200px; width: 200px;" alt="avatar">
                            </div>
                            <div class="col">
                                <table class="table table-borderless" style="font-size: large; font-weight: 600;" >
                                    <thead>
                                    <td style="width: 120px;"></td>
                                    <td></td>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>Tên: </td>
                                            <td>Nguyễn Văn A</td>
                                        </tr>
                                        <tr>
                                            <td>Vai trò:</td>
                                            <td>Thành viên ban tổ chức</td>
                                        </tr>
                                    </tbody>
                                    <tr>
                                        <td>Quốc tịch:</td>
                                        <td>Việt Nam</td>
                                    </tr>
                                    <tr>
                                        <td>Ngày sinh:</td>
                                        <td>15/6/1990</td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                        <div class="todolist container" style="margin-top: 20px; float: left;">
                            <h1>Danh sách công việc :</h1>
                            <table class="table bg-light table-bordered table-hover "
                                   style="font-size: 18px; font-weight: 500; overflow-x: scroll; height: 400px !important;">
                                <thead class="thead-dark">
                                <th>Stt</th>
                                <th>Tên công việc</th>
                                <th>Tóm tắt công việc</th>
                                <th>Hoàn thành</th>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>1</td>
                                        <td>Sửa thông tin chặng đua</td>
                                        <td>Sửa thông tin chặng đua Turkey - Vòng 14: Số vòng 58->60 </td>
                                        <td><input type="checkbox" class="td-check" > </td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>Cập nhật kết quẳ chặng đua</td>
                                        <td>Cập nhật kết quẳ chặng đua Turkey - Vòng 14 Luyện tập 1 </td>
                                        <td><input type="checkbox" class="td-check"></td>
                                    </tr>
                                    <tr>
                                        <td>3</td>
                                        <td>Cập nhật kết quẳ chặng đua</td>
                                        <td>Cập nhật kết quẳ chặng đua Turkey - Vòng 14 Luyện tập 2 </td>
                                        <td><input type="checkbox" class="td-check" checked></td>
                                    </tr>
                                    <tr class="blank_row">
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                    </tr>
                                    <tr class="blank_row">
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                    </tr>
                                    <tr class="blank_row">
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>


                </div>

            </div>
        </div>


    </body>

</html>
