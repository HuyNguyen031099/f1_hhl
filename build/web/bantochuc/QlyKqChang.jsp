<%-- 
    Document   : QlyChangdua
    Created on : Dec 1, 2020, 2:47:19 PM
    Author     : DELL
--%>


<%@page import="Model.nhanVien"%>
<%@page import="DAO.ChangduaDAO"%>
<%@page import="Model.Changdua"%>
<%@page import="DAO.GiaiduaDAO"%>
<%@page import="Model.Giaidua"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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

 <%
            nhanVien nv = (nhanVien) session.getAttribute("bantochuc");
            if (nv == null) {
                response.sendRedirect("../thanhvien/login.jsp?err=timeout");
            }
        %>
    </head>

    <%ArrayList<Giaidua> dsgiai = (new GiaiduaDAO()).getGiaidua();
        ArrayList<Changdua> dsChang = (ArrayList< Changdua>) session.getAttribute("dsChang");
        String ten = (String) request.getAttribute("ten");

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
                        
                        <p style="margin-top: 22px; font-size: x-large;">Quản lý kết quả thi đấu</p>
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
                            <li class="nav-item ">
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
            <form name ="timChang" action="doTimkiem.jsp" method="post" style="margin-left: 10px;margin-top: 150px;">
                <input name="action" value="nhapKQ"  type="hidden">
                <p> <label>Chọn Giải đua:<label>
                        <select name = "giaidua">
                            <%for (Giaidua gd : dsgiai) {%>
                            <option value="<%=gd.getId()%>"><%=gd.getTen()%></option>
                            <%}%>
                            <input type="text" name="tenchang" id="tenChang" style="width: 300px" <%if (ten != null) {%>placeholder=<%=ten%> <% }%>>
                            <button class="btn" type="submit"> Tìm kiếm </button>                  

                        </select></p>
                        </form>
                           
                            
                        <%if (dsChang != null) {%>
                        <%
                            int idGiai = (int) session.getAttribute("Giai") ;
                            String tenGiai = null;
                            for(int i =0; i < dsgiai.size();i++){
                                if(dsgiai.get(i).getId()==idGiai)
                                    tenGiai=dsgiai.get(i).getTen();
                            }
                        %>
                        <h1> Danh sách chặng đua <%=tenGiai %> </h1>
                        <table class=" table table-bordered">
                            <thead>
                            <th>Thứ tự </th>
                            <th style="width: 120px;"> Vòng đua</th>
                            <th>Chặng đua </th>
                            <th>Ngày đua</th>
                            <th>Đường đua</th>
                            <th>Số vòng tối đa</th>
                            <th>Chiều dài một vòng</th>
                            <th>Ghi chú</th>
                            <th>Nhập kết quả</th>
                            </thead>

                            <tbody>
                                <%for (int i = 0; i < dsChang.size(); i++) {%>
                                <tr>
                                    <td> <%=(i + 1)%> </td>
                                    <td><%=dsChang.get(i).getTenVong()%></td>
                                    <td><%=dsChang.get(i).getTenChang()%></td>
                                    <td><%=dsChang.get(i).getDuongDua()%></td>
                                    <td><%=dsChang.get(i).getNgayDua()%></td>
                                    <td><%=dsChang.get(i).getSoVong()%></td>
                                    <td><%=dsChang.get(i).getChieuDaiVong()%> km</td>
                                    <td><%=dsChang.get(i).getMota()%></td>
                                    <td><a href="../bantochuc/nhapKqChang.jsp?index=<%=i%>" >Nhập kết quả</a></td>
                                </tr>
                                <%}%>
                            </tbody>
                        </table>
                        <%}%>

                        </div>
                        
                        </body>
                        </html>
