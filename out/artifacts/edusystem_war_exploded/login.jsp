<%--
  Created by IntelliJ IDEA.
  User: 刘子杰
  Date: 2019/1/11
  Time: 12:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>用户登录</title>
    <link href="css/login.css" type="text/css" rel="stylesheet"/>
</head><body>
<div class="loginer">
    <div class="login_box">
        <div class="logo"><a href="#"><img src="../images/logo.png" height="63px" width="393px" /></a></div>
        <div class="clear"></div>
        <div class="l_left">
            <img src="../images/l_left_img.png" height="319" width="360" />
        </div>
        <div class="l_right">
            <img src="../images/user_login.png" />
            <div class="login_form">
                <form action="/loginServlet" method="post">
                    <div class="l_input"><span class="input_txt">用户名：</span><input class="input_area" type="text"  name="username"  required/></div>
                    <div class="l_input"><span class="input_txt">密码：</span><input class="input_area" type="password" name="password" required/></div>
                    <%--<div class="l_input"><span class="input_txt">验证码：</span><input class="input_area input_area_s" type="text" /><a href="#"><img src="../images/25DAF.jpg" /></a></div>--%>
                    <div class="l_input_n"><input type="radio" name="user" value="student"> 学生  &nbsp&nbsp
                        <input type="radio" name="user" value="teacher" >  教师   &nbsp&nbsp
                        <input type="radio" name="user" value="manager" >  管理人员
                        <div class="l_input l_btn"><input class="input_btn input_m" type="submit" value="登录" /><input class="input_btn" type="reset" value="重置" /></div>
                </form>
            </div>
        </div>

    </div>


</div>

</body>
</html>
