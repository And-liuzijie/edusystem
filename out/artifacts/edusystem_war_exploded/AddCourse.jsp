<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/AddCourse.css" type="text/css" rel="stylesheet" />

<title>管理员发布教学计划</title>
<script >
    function back() {
        self.location="Administrator.jsp";
    }
</script>
</head>

<!-- 管理员发布教学计划 -->

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
            <a href="AddCourse.jsp" class="f_info_plan" title="发布教学计划"><b>发布教学计划</b></a>
            </li>
            <li id="two"  class="li_nor">
            <a href="TeacherTable.jsp" class="f_lookteacher" title="查看教师信息"><b>查看教师信息</b></a>
            </li>
            <li id="three"  class="li_nor">
            <a href="Tupdate.jsp" class="f_alterteacher" title="修改教师信息"><b>修改教师信息</b></a>
            </li>
            <li id="four"  class="li_nor">
            <a href="DeleteTeacher.jsp" class="f_deleteteacher" title="删除教师信息"><b>删除教师信息</b></a>
            </li>
            <li id="five" class="li_nor">
            <a href="AddTeacherMessage.jsp" class="f_addteacher" title="增加教师信息"><b>增加教师信息</b></a>
            </li>
        </ul>
    </div>
    <div class="main">
    	<div class="box">
            <form action="/AddCourseServlet" method="post">
            	<div class="l_words float_left">
                <ul>
                	<li>专业：</li>
                    <li>课程名称：</li>
                    <li>课程代码：</li>
                    <li>课时：</li>
                    <li>上课班数：</li>
                    <li>班级类别：</li>
                    <li><input type="submit" value="保存" /></li>
                </ul>
                </div>
            	<div class="r_words float_left">
<ul>
                	<li ><input type="text" name="major" value="" id="major" required/></li>
                    <li ><input type="text" name="course" value="" id="course" required /></li>
                    <li ><input type="text" name="coursenumber" value="" id="coursenumber" required /></li>
                    <li><input type="text" name="coursetime" value="" id="coursetime" required /></li>
                    <li><input type="text" name="classnum" value="" id="classnum" required/></li>
                        <li>
                      <select name="coursetype">
                    	  <option>本科</option>
                    	  <option>专科</option>
                    	  <option>研究生</option>
                    	  <option>成人教育</option>
                      </select>
                        </li>
                        <li><input type="button" value="返回" onclick="back()"/></li>
                    </ul>
                </div>


            </form>
            <%--<div class="enter_form clear">
            <a href="#" class="e_save"></a>
                                </select>
       lass="e_save"></a>
            <a href="#" class="e_back"></a>
            </div>--%>
        </div>
        
    </div>
</div>
<div class="footer">
    版权所有：太原理工大学软件学院1602班3组
</div>
</body>
</html>
