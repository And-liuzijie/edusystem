<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/AddCoursePlan.css" type="text/css" rel="stylesheet" />
    <script >
        function back1() {
            self.location="TeacherLoginAfter.jsp";
        }
    </script>
<title>制定教学计划</title>
</head>

<!-- 老师自己上报教学计划给教务处 -->

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
	<div class="left_menu">
    	<ul class="left_menu_ul">
        	<li id="one" class="li_nor">
            <a href="#" class="f_info_enter" title="教学计划"><b>教学计划</b></a>
            <ul class="left_ul_con">
                	<li><a href="AddCoursePlan.jsp">新增教学计划</a></li>
                    <li><a href="Teachernotice.jsp">查看教学计划</a></li>
            </ul>
            </li>
            <li id="two"  class="li_nor">
            <a href="#" class="f_info_manage"  title="成绩管理系统"><b>成绩管理系统</b></a>
            <ul class="left_ul_con">
                	<li><a href="#">成绩录入</a></li>
                    <li><a href="#">成绩名单搜索</a></li>
                    <li><a href="#">成绩汇总</a></li>
                    <li><a href="#">学生成绩查询</a></li>
            </ul>
            </li>
            <li id="three"  class="li_nor">
            <a href="Teachernotice.jsp" class="f_notice_manage" title="系统公告"><b>系统公告</b></a>
            </li>
            <li id="four"  class="li_nor">
            <a href="#" class="f_course_manage" title="课程管理系统"><b>课程管理系统</b></a>
            </li>
            <li id="five" class="li_nor">
            <a href="TeacherTimetable.jsp" class="f_timetable" title="课程表查询"><b>课程表查询</b></a>
            </li>
        </ul>
    </div>
    <div class="main">
    	<div class="box">
            <form action="/PlanCheckServlet" method="post">
            	<div class="l_words float_left">
                <ul>
                	<li>教师姓名：</li>
                    <li>职工号：</li>
                    <li>职称：</li>
                    <li>选报课程：</li>
                    <li>班级：</li>
                    <li><input type="submit" value="提交申请" style="color: #006699"/></li>
                </ul>
                </div>
            	<div class="r_words float_left">
                	<ul>
                	    <li ><input type="text" name="name" value="" id="name" required /></li>
                        <li ><input type="text" name="number" value="" id="number" required /></li>
                        <li ><input type="text" name="zhicheng" value="" id="zhicheng" required /></li>
                        <li><input type="text" name="course" value="" id="course"  required/></li>
                        <li>
                            <select  name="class">
                    	        <option>1-4班</option>
                    	        <option>5-8班</option>
                    	        <option>9-12班</option>
                                <option>13-16班</option>
                    	    </select>
                        </li>
                        <li><input type="button" value="返回" style="color: #006699" onclick="back1()"/></li>
                    </ul>
              </div>
          </form>
         <%--<div class="enter_form clear">
          <a href="#" class="e_save"></a>
          <a href="#" class="e_back"></a>
          </div>--%>
        </div>
        
    </div>
</div>
<div class="footer">
    版权所有：太原理工大学软件学院1602班
</div>
</body>
</html>
