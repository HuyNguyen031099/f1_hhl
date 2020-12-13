<%@page import="DAO.GiaiduaDAO"%>
<%@page import="Model.Giaidua"%>
<%@page import="java.util.ArrayList"%>
<!doctype html>
<html lang="en">

    <head>
        <title>Standings</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="styles.css">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <link rel="icon" href="images/favicon.ico" type="image/x-icon" />
        <link rel="stylesheet" href="font-awesome/css/all.css"
              integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">

        <style>
            @font-face {
                font-family: F1;
                src: url("Fonts/Formula1-Regular.ttf");
            }

            .list-group {
                font-family: F1;
                font-size: large;

            }

            .table .teamLinks {
                color: black;


            }
            .table.teamLinks:hover{
                font-weight: bold;
                font-size: larger;
            }

        </style>
    </head>

    <body>
        <div class="main-header fixed-top">
            <div class="header  ">
                <div class="row bg-light">
                    <div class="col-sm-3 ">
                        <img style="height: 50px;width:70px ;;margin: 12px 0;opacity: .9;" src="images/fia_logo.png"
                             alt="Logo">
                    </div>
                    <div class="col-sm-5 ">

                    </div>
                    <div class="col-auto">
                        <a class="login_btn  " href="login.jsp">
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
                        <a class="navbar-brand" href="index.html">
                            <img src="images/f1Logo(light).png" alt="Logo" style=" width:100px;">
                        </a>
                    </div>
                    <ul class="nav navbar-nav" id="navbarCustom">
                        <li class="nav-item" data-toggle="collapse" data-target="#demo">
                            <a class="nav-link" href="#">Latest</a> </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Schedule</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="/standings.html">Standings</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Teams</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Drivers</a>
                        </li>
                    </ul>
                </nav>
            </div>
        </div>



        <div class="container-fluid " style="font-family: f1; font-size: small; margin-top: 150px;">
            <%ArrayList<Giaidua> dsgiai = (new GiaiduaDAO()).getGiaidua();%>
            
            <form action="" style=" margin-left:  300px; ">
                <p>
                <select name = "giaidua" style="font-size: x-large ">
                    <option value="-1" selected>Race</option>
                            <%for (Giaidua gd : dsgiai) {%>
                            <option value="<%=gd.getId()%>"><%=gd.getTen()%></option>
                            <%}%>
                </select>
                 <select name = "loai" style="font-size: x-large">
                     <option value="-1" selected>Type</option>
                     <option value="xhDoi">BXH Đội</option>
                     <option value="xhTaydua">BXH Tay đua</option>
                </select>
                        </p>
                        <button type="submit" class="btn btn-default" style=" margin-left: 500px">Next</button>




            </form>


        <table class="table table-striped" style="font-size: larger;">
            <thead>
                <tr>
                    <th class="limiter"></th>
                    <th><abbr title="Position">Pos</abbr></th>
                    <th>Team</th>
                    <th><abbr title="Points">PTS</abbr></th>
                    <th class="limiter"></th>
                </tr>
            </thead>

            <tbody>

            </tbody>
        </table>
    </div>



</body>

</html>