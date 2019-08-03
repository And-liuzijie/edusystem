<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/TaskBook.css" type="text/css" rel="stylesheet" />

<title>任务书</title>
</head>

<!-- 任务书 -->

<body>
<div class="header">
	<div class="logo" ><a href="#"><img src="images/logo.png" height="35px" width="160px"/></a></div>
    <div class="menu">

    </div>
    <div class="setting">
    	<a href="#" class="personal_s"><i></i><span>个人设置</span></a>
        <a href="login.jsp" class="exit"><i></i><span>退出</span></a>
    </div>
</div>
<div class="contenter">
    <div class="main">
    	<div class="box">
           <h1 style="align-content: center;color: #272727;">任务书</h1>
          <h2 style="color: #5B5B5B">现任命${requestScope.name}${requestScope.zhicheng}担任${requestScope.banji}的${requestScope.course}老师，本学期的课时为${requestScope.keshi}</h2>
         <br/>
          <h3 style="color: #5B5B5B">收到教学任务书后请及时备课</h3>
        </div>
        
    </div>
</div>
<div class="footer">
    版权所有：太原理工大学软件学院1602班
</div>
</body>
</html>
