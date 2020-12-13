<%-- 
    Document   : index
    Created on : Nov 7, 2020, 2:35:27 PM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <title>The official home of Fomula 1 Race</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link rel="stylesheet" href="styles.css">

        <link rel="stylesheet" href="css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <link rel="icon" href="images/favicon.ico" type="image/x-icon" />
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css"
              integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">
        <% session.removeAttribute("bantochuc");
        %>
    </head>

    <body>
        <div class="main-header fixed-top">
            <div class="header  ">
                <div class="row bg-light">
                    <div class="col-auto ">

                        <img style="height: 50px;width:70px ;margin: 12px 0;opacity: .9;" src="images/fia_logo.png"
                             alt="logo">
                    </div>
                    <div class="col-7 ">
                        <p style="margin-top: 22px; font-size: x-large; float: right;">THE OFFICIAL HOME OF FORMULA 1</p>
                    </div>
                    <div class="col-auto">
                        <a class="login_btn" href="thanhvien/login.jsp">
                            <button type="button" class="btn btn-default"
                                    style="background-color: black !important; color: white;font-size: 18px; margin-top: 12px;"><i
                                    class="fas fa-user"></i> SIGN IN</button>
                        </a>
                    </div>
                    <div class="col-auto">
                        <a class="sub-btn" href="#">
                            <button type="button" class="btn btn-primary"
                                    style="font-size: 18px;margin-top: 12px;">SUBSCRIBE</button>
                        </a>
                    </div>


                </div>
            </div>
            <div>
                <nav class="navbar navbar-expand-lg  navbar-custom   " style="font-size: large;">

                    <div class="navbar-header" style=" width:100px;">
                        <a class="navbar-brand" href="../">
                            <img src="images/f1Logo(light).png" alt="Logo" style=" width:100px;">
                        </a>
                    </div>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
                        <span class="navbar-toggler-icon" style="background-color: aliceblue;"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="collapsibleNavbar">
                        <ul class="nav navbar-nav" id="navbarCustom">

                            <li class="nav-item" data-toggle="collapse" data-target="#demo">
                                <a class="nav-link" href="#">Latest</a> </li>

                            <li class="nav-item">
                                <a class="nav-link" href="#">Schedule</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="nguoidung/standings.jsp">Standings</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">Teams</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">Drivers</a>
                            </li>
                        </ul>
                    </div>
                </nav>
            </div>
        </div>
        <div class="container-fluid">
            <div class="row">

            </div>

        </div>



    </body>

</html>
