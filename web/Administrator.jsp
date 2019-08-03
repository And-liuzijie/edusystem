<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/Administrator.css" type="text/css" rel="stylesheet" />

<title>管理员登录后界面</title>
</head>

<!-- 管理员登录后界面 -->

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
    	<form action="">
    	    <table>
    	          <tr> 
    	              <td ><a href="AddCourse.jsp" class="f_info_plan" title="发布教学计划">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>发布教学计划</b></a></td>
    	              <td><a href="TeacherTable.jsp" class="f_lookteacher" title="查看教师信息">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>查看教师信息</b></a></td>
                      
    	           </tr>
    	           <tr> 
    	              <td><a href="DeleteTeacher.jsp" class="f_deleteteacher" title="删除教师信息">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>删除教师信息</b></a></td>
    	              <td><a href="AddTeacherMessage.jsp" class="f_addteacher" title="增加教师信息">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>增加教师信息</b></a></td>
    	           </tr>
    	           <tr>
    	           <td ><a href="Tupdate.jsp" class="f_alterteacher" title="修改教师信息">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>修改教师信息</b></a></td>
    	           </tr>
    	    </table>
    	         
    	</form>
    	
    </div>
</div>
<div class="footer">
    版权所有：太原理工大学软件学院1602班
</div>
</body>
</html>
