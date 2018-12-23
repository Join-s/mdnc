<%--
  Created by IntelliJ IDEA.
  User: PD
  Date: 2018/12/23
  Time: 12:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="${pageContext.request.contextPath }/resources/css/login.css" rel='stylesheet' type='text/css' />
    <!-- <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <meta name="keywords" content="Flat Dark Web Login Form Responsive Templates, Iphone Widget Template, Smartphone login forms,Login form, Widget Template, Responsive Templates, a Ipad 404 Templates, Flat Responsive Templates" /> -->
    <!--webfonts-->
    <!-- <link href='http://fonts.useso.com/css?family=PT+Sans:400,700,400italic,700italic|Oswald:400,300,700' rel='stylesheet' type='text/css'>
    <link href='http://fonts.useso.com/css?family=Exo+2' rel='stylesheet' type='text/css'>
    <!//webfonts-->
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
</head>
<body>
<!--SIGN UP-->
<!-- <h1>klasikal Login Form</h1> -->
<div class = "pg_header">
    <a class ="logo">LOGO</a>
    <a class="pg_dl" id="head_login">登录</a>
</div>
<div class="login-form">
    <div class="close"> </div>
    <div class="head-info">
        <label class="lbl-1"> </label>
        <label class="lbl-2"> </label>
        <label class="lbl-3"> </label>
    </div>
    <div class="clear"> </div>
    <div class="avtar">
        <img src="${pageContext.request.contextPath }/resources/images/login/avtar2.jpg" />
    </div>
    <form action="/mdnc/user/login" method="post" id="login_form">
        <input id="input_1" type="text" name="uname" class="text"  value="账号或手机号" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '账号或手机号';}" >
        <div class="key">
            <input id="input_2" type="password" name="pwd" value="" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '';}">
        </div>
    </form>
    <div>
        <input id="input_login" type="submit" value="登录" onclick="login_jump()">
        <input id="input_register" type="submit" value="注册" onclick="register_jump()">
    </div>
</div>
<script>
    $(document).ready(function(c) {
        $('.close').on('click', function(c){
            $('.login-form').fadeOut('slow', function(c){
                $('.login-form').remove();
            });
        });
    });
    $('#input_1').mouseenter(function(){
        $(this).value.show.css('color','#C0C0C0');
    });
    $("#input_1").mouseleave(function(){
        $(this).value.show.css('color','#C0C0C0');
    });
    function login_jump(){
        $("#login_form").submit();
        // window.open("index.html","_self");
    }
    function register_jump(){
        window.open("register.html","_self");
    }
</script>
</body>
</html>
