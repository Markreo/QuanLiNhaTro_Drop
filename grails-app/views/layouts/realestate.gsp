<%--
  Created by IntelliJ IDEA.
  User: giapn
  Date: 10/22/2016
  Time: 2:27 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Realestate Bootstrap Theme </title>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>

    <link href="${resource(dir: 'realestate/bootstrap/css', file: 'bootstrap.css')}" rel="stylesheet"/>
    <link href="${resource(dir: 'realestate', file: 'style.css')}" rel="stylesheet"/>
    %{--<script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>--}%
    <script src="${resource(dir: 'assets/js', file: 'jquery.min.js')}"></script>
    <script src="${resource(dir: 'realestate/bootstrap/js', file: 'bootstrap.js')}"></script>
    <script src="${resource(dir: 'realestate', file: 'script.js')}"></script>



    <!-- Owl stylesheet -->
    <link href="${resource(dir: 'realestate/owl-carousel', file: 'owl.carousel.css')}" rel="stylesheet"/>
    <link href="${resource(dir: 'realestate/owl-carousel', file: 'owl.theme.css')}" rel="stylesheet"/>
    <script src="${resource(dir: 'realestate/owl-carousel', file: 'owl.carousel.js')}"></script>
    <!-- Owl stylesheet -->


    <!-- slitslider -->
    <link href="${resource(dir: 'realestate/slitslider/css/', file: 'style.css')}" rel="stylesheet"/>
    <link href="${resource(dir: 'realestate/slitslider/css/', file: 'custom.css')}" rel="stylesheet"/>
    <script src="${resource(dir: 'realestate/slitslider/js', file: 'modernizr.custom.79639.js')}"></script>
    <script src="${resource(dir: 'realestate/slitslider/js', file: 'jquery.ba-cond.min.js')}"></script>
    <script src="${resource(dir: 'realestate/slitslider/js', file: 'jquery.slitslider.js')}"></script>
    <!-- slitslider -->

</head>

<body>
<!-- Header Starts -->
<div class="navbar-wrapper">

    <div class="navbar-inverse" role="navigation">
        <div class="container">
            <div class="navbar-header">


                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>

            </div>


            <!-- Nav Starts -->

            <!-- #Nav Ends -->

        </div>
    </div>

</div>
<!-- #Header Starts -->

<g:layoutBody/>
<div class="footer">

    <div class="container">



        <div class="row">
            <div class="col-lg-3 col-sm-3">
                <h4>Information</h4>
                <ul class="row">
                    <li class="col-lg-12 col-sm-12 col-xs-3"><a href="about.php">About</a></li>
                    <li class="col-lg-12 col-sm-12 col-xs-3"><a href="agents.php">Agents</a></li>
                    <li class="col-lg-12 col-sm-12 col-xs-3"><a href="blog.php">Blog</a></li>
                    <li class="col-lg-12 col-sm-12 col-xs-3"><a href="contact.php">Contact</a></li>
                </ul>
            </div>

            <div class="col-lg-3 col-sm-3">
                <h4>Newsletter</h4>
                <p>Get notified about the latest properties in our marketplace.</p>
                <form class="form-inline" role="form">
                    <input type="text" placeholder="Enter Your email address" class="form-control">
                    <button class="btn btn-success" type="button">Notify Me!</button></form>
            </div>

            <div class="col-lg-3 col-sm-3">
                <h4>Follow us</h4>
                <a href="#"><img src="images/facebook.png" alt="facebook"></a>
                <a href="#"><img src="images/twitter.png" alt="twitter"></a>
                <a href="#"><img src="images/linkedin.png" alt="linkedin"></a>
                <a href="#"><img src="images/instagram.png" alt="instagram"></a>
            </div>

            <div class="col-lg-3 col-sm-3">
                <h4>Contact us</h4>
                <p><b>Bootstrap Realestate Inc.</b><br>
                    <span class="glyphicon glyphicon-map-marker"></span> 8290 Walk Street, Australia <br>
                    <span class="glyphicon glyphicon-envelope"></span> hello@bootstrapreal.com<br>
                    <span class="glyphicon glyphicon-earphone"></span> (123) 456-7890</p>
            </div>
        </div>
        <p class="copyright">Copyright 2013. All rights reserved.	</p>


    </div></div>




<!-- Modal -->
<div id="loginpop" class="modal fade">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="row">
                <div class="col-sm-6 login">
                    <h4>Đăng Nhập</h4>
                    <g:if test='${flash.message}'>
                        <div class='login_message'>${flash.message}</div>
                    </g:if>

                    <form action='j_spring_security_check' method='POST' id='loginForm' class='form' autocomplete='off' id="login-nav">
                        <div class="form-group">
                            <label class="sr-only">Tài khoản</label>
                            <input type='text' class='form-control' name='j_username' id='username' placeholder="Tài khoản"/>
                        </div>

                        <div class="form-group">
                            <label class="sr-only" >Mật Khẩu</label>
                            <input type='password' class='form-control' name='j_password' id='password' placeholder="Mật khẩu"/>
                            <div class="help-block text-right"><a href="">Quên mật khẩu?</a></div>
                        </div>

                        <div class="checkbox">
                            <label>
                                <input type='checkbox' class='chk' name='${rememberMeParameter}' id='remember_me' <g:if test='${hasCookie}'>checked='checked'</g:if>/> Giữ tôi luôn đăng nhập
                            </label>

                        </div>
                        <div class="form-group">
                            <button type="submit" class="btn btn-primary btn-block">Đăng nhập</button>
                        </div>

                    </form>

                </div>
                <div class="col-sm-6">
                    <h4>Đăng kí người dùng mới</h4>
                    <p>Thử nghiệm ứng dụng quản lí phòng trọ</p>
                    <button type="submit" class="btn btn-info"  onclick="window.location.href='register.php'">Đăng kí</button>
                </div>

            </div>
        </div>
    </div>
</div>
<!-- /.modal -->



</body>
</html>


