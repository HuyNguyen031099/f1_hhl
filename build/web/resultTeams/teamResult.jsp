<%@page import="java.lang.String"%>
<%@page import="javax.websocket.Session"%>
<!DOCTYPE html>
<html lang="en">


    <head>
        <title>Standings</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link rel="stylesheet" href="../styles.css">

        <link rel="stylesheet" href="../css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="../js/bootstrap.min.js"></script>
        <link rel="icon" href="../images/favicon.ico" type="image/x-icon" />
        <link rel="stylesheet" href="../font-awesome/css/all.css"
              integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">
        <style>
            @font-face {
                font-family: F1;
                src: url("../Fonts/Formula1-Regular.ttf");
            }

            .list-group {
                font-family: F1;
                font-size: large;

            }

            .table .Grandprixs {
                color: black;


            }

            .table.Grandprixs:hover {
                font-weight: bold;
                font-size: larger;
            }
        </style>
    </head>

    <body>
       
        <div class="main-header fixed-top">
            <div class="header  ">
                <div class="row bg-light">
                    <div class="col-auto ">
                        <img style="height: 50px;width:70px ;;margin: 12px 0;opacity: .9;" src="../images/fia_logo.png"
                             alt="Logo">
                    </div>
                    <div class="col-7 ">

                    </div>
                    <div class="col-auto">
                        <a class="login_btn  " href="../login.jsp">
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
                        <a class="navbar-brand" href="../index.jsp">
                            <img src="../images/f1Logo(light).png" alt="Logo" style=" width:100px;">
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


    </div>

    <div class="container-fluid " style="margin-top: 200px; font-family: f1; font-size: small;">
        <b>
            <p style="font-size: xx-large;">2020 Teams Standings:  <br>
               <%= request.getParameter("team")%>
            </p>
        </b>
        <table class="table table-striped" style="font-size: small;">
            <thead>
                <tr>
                    <th class="limiter"></th>
                    <th>GRAND PRIX</th>
                    <th>DATE</th>
                    <th><abbr title="Points">PTS</abbr></th>
                    <th class="limiter"></th>
                </tr>
            </thead>

            <tbody>
                <tr>
                    <td class="limiter"></td>
                    <td><a href="#" class="Grandprixs">Austria</a></td>
                    <td>05 Jul 2020</td>
                    <td class="dark bold">37</td>
                    <td class="limiter"></td>
                </tr>

                <tr>
                    <td class="limiter"></td>
                    <td><a href="#" class="Grandprixs">Styria</a></td>
                    <td>12 Jul 2020</td>
                    <td class="dark bold">43</td>
                    <td class="limiter"></td>
                </tr>

                <tr>
                    <td class="limiter"></td>
                    <td><a href="#" class="Grandprixs">Hungary</a></td>
                    <td>19 Jul 2020</td>
                    <td class="dark bold">4</td>
                    <td class="limiter"></td>
                </tr>
                <tr>
                    <td class="limiter"></td>
                    <td><a href="#" class="Grandprixs">Great Britain</a></td>
                    <td>02 Aug 2020</td>
                    <td class="dark bold">25</td>
                    <td class="limiter"></td>
                </tr>
                <tr>
                    <td class="limiter"></td>
                    <td><a href="#" class="Grandprixs">70th Anniversary</a></td>
                    <td>09 Aug 2020</td>
                    <td class="dark bold">34</td>
                    <td class="limiter"></td>
                </tr>
                <tr>
                    <td class="limiter"></td>
                    <td><a href="#" class="Grandprixs">Spain</a></td>
                    <td>16 Aug 2020</td>
                    <td class="dark bold">41</td>
                    <td class="limiter"></td>
                </tr>
                <tr>
                    <td class="limiter"></td>
                    <td><a href="#" class="Grandprixs">Belgium</a></td>
                    <td>30 Aug 2020</td>
                    <td class="dark bold">43</td>
                    <td class="limiter"></td>
                </tr>
                <tr>
                    <td class="limiter"></td>
                    <td><a href="#" class="Grandprixs">Italy</a></td>
                    <td>06 Sep 2020</td>
                    <td class="dark bold">17</td>
                    <td class="limiter"></td>
                </tr>
                <tr>
                    <td class="limiter"></td>
                    <td><a href="#" class="Grandprixs">Tuscany</a></td>
                    <td>13 Sep 2020</td>
                    <td class="dark bold">44</td>
                    <td class="limiter"></td>
                </tr>
                <tr>
                    <td class="limiter"></td>
                    <td><a href="#" class="Grandprixs">Russia</a></td>
                    <td>27 Sep 2020</td>
                    <td class="dark bold">41</td>
                    <td class="limiter"></td>
                </tr>
                <tr>
                    <td class="limiter"></td>
                    <td><a href="#" class="Grandprixs">Eifel</a></td>
                    <td>11 Oct 2020</td>
                    <td class="dark bold">25</td>
                    <td class="limiter"></td>
                </tr>
                <tr>
                    <td class="limiter"></td>
                    <td><a href="#" class="Grandprixs">Portugal</a></td>
                    <td>25 Oct 2020</td>
                    <td class="dark bold">44</td>
                    <td class="limiter"></td>
                </tr>

                <tr>
                    <td class="limiter"></td>
                    <td><a href="#" class="Grandprixs">Emilia Romagna</a></td>
                    <td>01 Nov 2020</td>
                    <td class="dark bold">44</td>
                    <td class="limiter"></td>
                </tr>
            </tbody>
        </table>
    </div>




</body>

</html>