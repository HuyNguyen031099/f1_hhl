<!doctype html>
<html lang="en">

    <head>

        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Bootstrap CSS -->

        <title>Login Page</title>
        <!--Made with love by Mutiullah Samim -->

        <!--Bootsrap 4 CDN-->
        <link rel="stylesheet" href="../css/bootstrap.min.css"
              integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

        <!--Fontawesome CDN-->
        <link rel="stylesheet" href="../font-awesome/css/all.css"
              integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">

        <!--Custom styles-->
        <link rel="stylesheet" type="text/css" href="../styles.css">
        <link rel="icon" href="../images/favicon.ico" type="image/x-icon" />
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script> 
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        <style>


            body {
                background-image: url('../images/backgroundLogin.png');
                background-repeat: no-repeat;
                background-attachment: fixed;
                background-size: 100% 100%;
            }

        </style>
        <script>
            $(document).ready(function () {
                $("#myModal").modal('show');
            });
        </script>
<%
            if (request.getParameter("err") != null && request.getParameter("err").equalsIgnoreCase("timeout")) {
        %>    <div class="modal fade active" id="myModal">
            <div class="modal-dialog">
                <div class="modal-content">

                    <!-- Modal Header -->
                    <div class="modal-header">
                        <h4 class="modal-title">Lỗi</h4>
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>

                    <!-- Modal body -->
                    <div class="modal-body">
                        Hết phiên làm việc. Làm ơn đăng nhập lại!
                    
                    </div>

                    <!-- Modal footer -->
                    <div class="modal-footer">
                        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                    </div>

                </div>
            </div>
        </div> <%
        } else if (request.getParameter("err") != null && request.getParameter("err").equalsIgnoreCase("fail")) {
        %> 
 <div class="modal fade " id="myModal">
            <div class="modal-dialog">
                <div class="modal-content">

                    <!-- Modal Header -->
                    <div class="modal-header">
                        <h4 class="modal-title">Lỗi</h4>
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>

                    <!-- Modal body -->
                    <div class="modal-body">
                        Sai tên đăng nhập/mật khẩu!

                    <!-- Modal footer -->
                    <div class="modal-footer">
                        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                    </div>

                </div>
            </div>
        </div>
 </div><%
            }
        %>
    </head>

    <body>
       
        
       
       
        <nav class="navbar navbar-expand-sm bg-dark fixed-top">
            <a class="navbar-brand" href="../">
                <img src="../images/f1Logo(dark).png" alt="Logo" style=" width:200px; height: 50px;">
            </a>

        </nav>
        <div class="container" style="margin-top: 80px;" font>
            <div class="d-flex justify-content-center h-100">
                <div class="card">
                    <div class="card-header">
                        <h3>Sign In</h3>

                    </div>
                    <div class="card-body">
                        <form action="doLogin.jsp" method="post">
                            <div class="input-group form-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="fas fa-user"></i></span>
                                </div>
                                <input name="username" style="height: 50px;" type="text" class="form-control"
                                       placeholder="Enter your username" required>

                            </div>
                            <div class="input-group form-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="fas fa-key"></i></span>
                                </div>
                                <input name="password" style="height: 50px;" type="password" class="form-control"
                                       placeholder="Enter your password" required>
                            </div>
                            <div class="row align-items-center remember">
                                <input type="checkbox">Remember Me
                            </div>
                            <div class="form-group">
                                <input type="submit" value="Sign In" class="btn float-right login_btn">
                            </div>
                        </form>
                    </div>
                    <div class="card-footer">
                        <div class="d-flex justify-content-center links" style="font-size: large;">
                            Don't have an account yet?  <u><a href="#"> Register with F1</a>
                        </div>
                        <div class="d-flex justify-content-center" style="font-size: large;">
                            <a  href="#">Forgot your password?</a>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>

</html>