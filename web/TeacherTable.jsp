<%@ page import="org.apache.commons.dbutils.QueryRunner" %>
<%@ page import="com.servlet.C3p0Util" %>
<%@ page import="com.bean.Teacher" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="org.apache.commons.dbutils.handlers.BeanListHandler" %>
<%@ page import="java.sql.SQLException" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/TeacherTable.css" type="text/css" rel="stylesheet" />

<title>查看教师信息</title>
</head>

<!-- 查看教师信息 -->

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
            <h1 style="color: #5B5B5B;text-align:center;;font-size:25px;font-family:Arial,sans-serif,Micosoft Yahei;" >教师信息表</h1>
            <table border="1" cellspacing="0" cellpadding="0">
                <tr>
                    <td>教师姓名</td>
                    <td>职称</td>
                    <td>职工号</td>
                </tr>
                     <%
                    QueryRunner runner = new QueryRunner(C3p0Util.getDs());
                    String sql = "select * from teacher ";
                    ArrayList<Teacher> list = null;
                    try {
                        list = (ArrayList<Teacher>) runner.query(sql, new BeanListHandler<Teacher>(Teacher.class));

                    } catch (SQLException e) {
                        e.printStackTrace();
                    }
                    for (int i = 0; i < list.size(); i++) {
                        String name=list.get(i).getName();
                        String zhicheng=list.get(i).getZhichen();
                        String zghao=list.get(i).getZghao();
                %>
    
                <tr>
                    <td><%= name %></td>
                    <td><%=zhicheng %></td>
                    <td><%= zghao %></td>
                </tr>
             <%
                    }
                %>
            </table>

            <div class="enter_form clear">
          <a href="Administrator.jsp" class="e_back"></a>
          </div>
        </div>
   </div>
</div>
<div class="footer">
    版权所有：太原理工大学软件学院1602班
</div>
</body>
</html>
