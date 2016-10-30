<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
<body>
<link href="${resource(dir: 'assets/css', file: 'login.css')}" rel="stylesheet"/>
<link href="${resource(dir: 'assets/css', file: 'bootstrap.css')}" rel="stylesheet"/>
<link href="${resource(dir: 'assets/css', file: 'bootstrap.min.css')}" rel="stylesheet"/>
<!--Fonts-->

<!--Script-->
<script src="${resource(dir: 'assets/js', file: 'bootstrap.js')}"></script>
<script src="${resource(dir: 'assets/js', file: 'bootstrap.min.js')}"></script>
<script src="${resource(dir: 'assets/js', file: 'jquery-3.1.0.min.js')}"></script>
<li class="dropdown open pull-right">

    <ul id="login-dp" class="dropdown-menu">
        <li>
            <div class="row">
                <div class="col-md-12">
                    Đăng nhập bằng
                    <div class="social-buttons">
                        <a href="#" class="btn btn-fb"><i class="fa fa-facebook"></i> Facebook</a>
                        <a href="#" class="btn btn-tw"><i class="fa fa-twitter"></i> Twitter</a>
                    </div>
                    hoặc

                    <g:if test='${flash.message}'>
                        <div class='login_message'>${flash.message}</div>
                    </g:if>

                    <form action='${postUrl}' method='POST' id='loginForm' class='form' autocomplete='off' id="login-nav">
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
                <div class="bottom text-center">
                    Chưa có tài khoản? <a href="\login\register.gsp"><b>Đăng kí ngay</b></a>
                </div>
            </div>
        </li>
    </ul>
</li>


</body>





<script type='text/javascript'>
(function() {
	document.forms['loginForm'].elements['j_username'].focus();
})();
</script>
</body>
</html>
