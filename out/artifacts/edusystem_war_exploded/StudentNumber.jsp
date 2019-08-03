<%@ page import="org.apache.commons.dbutils.QueryRunner" %>
<%@ page import="com.servlet.C3p0Util" %>
<%@ page import="com.bean.Student" %>
<%@ page import="org.apache.commons.dbutils.handlers.BeanHandler" %>
<%@ page import="java.sql.SQLException" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/StudentNumber.css" type="text/css" rel="stylesheet" />

<title>学号</title>
</head>

<!-- 显示学号 -->

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
            <form action="#">
            	<div class="l_words float_left">
                <ul>
                	<li>学号：</li>
                    <li>您当前的学分为：</li>
                </ul>
                </div>
            	<div class="r_words float_left">
                    <ul>
                        <%
                            request.setCharacterEncoding("utf-8");
                            response.setContentType("text/html;charset=utf-8");

                            Student  student= (Student) session.getAttribute("student");
                            String xshao=student.getXshao();
                            %><li><%= student.getXshao()%></li><%
                            QueryRunner runner=new QueryRunner(C3p0Util.getDs());
                            String sql="select * from student where xshao=?";
                            int xuefen=0;
                            try {
                                Student student1=(Student)runner.query(sql,new BeanHandler(Student.class),new Object[]{xshao});
                                if(student==null){
                                    response.getWriter().print(xshao);
                                }
                                xuefen=student.getXuefen();

                            } catch (SQLException e) {
                                e.printStackTrace();
                            }
                            %><li><%= xuefen%> </li> <%
                        %>
                    </ul>
              </div>
          </form>
          <div class="enter_form clear">
          <a href="StudentLoginAfter.jsp" class="e_back"></a>
          </div>
        </div>
        </div>
</div>
<div class="footer">
    版权所有：太原理工大学软件学院1602班
</div>
</body>
</html>
