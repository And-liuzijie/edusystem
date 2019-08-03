<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/AddTeacherMessage.css" type="text/css" rel="stylesheet" />

<title>添加教师信息</title>
</head>

<!-- 添加教师信息 -->

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
            <form action="/TInsertServlet" method="post">
            	<div class="l_words float_left">
                <ul>
                	<li>教师姓名：</li>
                    <li>职工号：</li>
                    <li>职称：</li>
                    <li>主讲门数：</li>
                    <li>是否为干部：</li>
                    <li>上学期是否出现教学事故：</li>
                    <li>密码：</li>
                </ul>
                </div>
            	<div class="r_words float_left">
                	<ul>
                	<li ><input type="text" name="name" id="name" required/></li>
                    <li ><input type="text" name="zghao" id="zghao" required/></li>
                    <li ><input type="text" name="zhichen" id="zhichen" required/></li>
                    <li><input type="text" name="zjmenshu" id="zjmenshu" required/></li>
                    <li><input type="text" name="ganbu" placeholder="是干部添1不是添0" id="ganbu" required/></li>
                    <li><input type="text" name="shigu" placeholder="发生事故添1没有添0" id="shigu" required/></li>
                    <li><input type="text" name="password" required/></li>
                    <li><input type="submit" value="添加"  style=" color:black; width:80px;background:#d0d0d0;"/></li>
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
