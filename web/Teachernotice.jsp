<%@ page import="com.servlet.C3p0Util" %>
<%@ page import="com.bean.Plan" %>
<%@ page import="java.util.List" %>
<%@ page import="org.apache.commons.dbutils.handlers.BeanListHandler" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="org.apache.commons.dbutils.QueryRunner" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/AddCoursePlan.css" type="text/css" rel="stylesheet" />
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<title>教师公告栏</title>
</head>

<!-- 教师公告栏 -->

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

    </li>
        <li id="two"  class="li_nor">

        </li>
        </ul>
    </div>
    <div class="main">
    	<div class="login_box">
            <div class="show_list">
                <div class="title">
                    <div
                        <b style="color: darkorange ">已发布的教学计划</b>
                    </div>
                    
                </div>
            </div>
            <%
                QueryRunner runner = new QueryRunner(C3p0Util.getDs());
                String sql = "select * from plan where banum>0";
                ArrayList<Plan> list = null;
                try {
                    list = (ArrayList<Plan>) runner.query(sql, new BeanListHandler<Plan>(Plan.class));

                } catch (SQLException e) {
                    e.printStackTrace();
                }
                for (int i = 0; i < list.size(); i++) {
                   String kcname=list.get(i).getKcname();
                   String kccode=list.get(i).getKccode();
                   String bjlei=list.get(i).getBjlei();
                   int banum=list.get(i).getBanum();
                   String major = list.get(i).getMajor();
                   int kchour=list.get(i).getKchour();
                   %><%=bjlei%>&nbsp;<%=major%>专业正在分配的课程有<%=kcname%>课程代码为<%= kccode%>，现有<%= banum%>个班级待分配，学生需要完成<%= kchour%>课时。<br>
            <hr><br>
            <%
                }
            %>

        </div>
    </div>
</div>
<div class="footer">
    版权所有：太原理工大学软件学院1602班
</div>
</body>
</html>
