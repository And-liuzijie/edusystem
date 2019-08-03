<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/DeleteTeacher.css" type="text/css" rel="stylesheet" />

<title>删除教师信息</title>
</head>

<!-- 删除教师信息 -->

<body>
<div class="header">
	<div class="logo" ><a href="#"><img src="images/logo.png" height="35px" width="160px"/></a></div>
    <div class="menu">
    <ul>
    <li><a href="Teachernotice.jsp">系统公告</a></li>
    <li><a href="#">选课管理</a></li>
    <li><a href="#">成绩管理</a></li>
    <li><a href="#">信息查询</a></li>
    </ul>
    </div>
    <div class="setting">
    	<a href="#" class="personal_s"><i></i><span>个人设置</span></a>
        <a href="login.jsp" class="exit"><i></i><span>退出</span></a>
    </div>
</div>
<div class="contenter">
    <div class="main">
    	<div class="box">
            <form action="/TDeleteServlet" method="post">
            	<div class="l_words float_left">
                <ul>
                	<li>请输入要删除教师的职工号：</li>
                </ul>
                </div>
            	<div class="r_words float_left">
                	<ul>
                    <li ><input type="text" name="zghao" id="zghao" required/></li>
                    <li><br/></li>
                    <li><input type="submit" value="删除"  style=" color: black; width:100px;height:30px;background:#d0d0d0;"/></li>
                    </ul>
              </div>
          </form>
        </div>
        
    </div>
</div>
<div class="footer">
    版权所有：太原理工大学软件学院1602班
</div>
</body>
</html>
