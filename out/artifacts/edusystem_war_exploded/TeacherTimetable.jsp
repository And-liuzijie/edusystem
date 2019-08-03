<%--
  Created by IntelliJ IDEA.
  User: 刘子杰
  Date: 2019/1/14
  Time: 13:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="org.apache.commons.dbutils.QueryRunner" %>
<%@ page import="com.servlet.C3p0Util" %>
<%@ page import="com.bean.CourseTable" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="org.apache.commons.dbutils.handlers.BeanListHandler" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="css/TeacherTimetable.css" type="text/css" rel="stylesheet" />

    <title>教师课程表</title>
</head>

<!-- 学生课程表 -->

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
                <a href="AddCoursePlan.jsp" class="f_info_plan" title="申请教学"><b>申请教学</b></a>
            </li>
            <li id="two"  class="li_nor">
                <a href="TeacherTimetable.jsp" class="f_lookteacher"  title="课表查询"><b>课表查询</b></a>
            </li>
        </ul>
    </div>
    <div class="main">
        <h1 style="color: coral "align="center" >课表</h1>
        <%
            QueryRunner runner = new QueryRunner(C3p0Util.getDs());
            String sql = "select * from coursetable ";
            ArrayList<CourseTable> list = null;
            try {
                list = (ArrayList<CourseTable>) runner.query(sql, new BeanListHandler<CourseTable>(CourseTable.class));

            } catch (SQLException e) {
                e.printStackTrace();
            }
            for (int i = 0; i < list.size(); i++) {
                String kcname=list.get(i).getKcname();
                String name=list.get(i).getName();
                String zghao=list.get(i).getZghao();
                int kchour=list.get(i).getKchour();
        %><span>课程名：</span> <%=kcname%>&nbsp;<span>课时：</span> <%= kchour%><br>
        <span>任课老师：</span> <%=name %>&nbsp;<span>职工号：</span> <%=zghao%>
        <hr><br>
        <%
            }
        %>
    </div>
</div>
<div class="footer">
    版权所有：太原理工大学软件学院1602班
</div>
</body>
</html>
