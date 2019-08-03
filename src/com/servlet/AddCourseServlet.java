package com.servlet;

import org.apache.commons.dbutils.QueryRunner;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

@WebServlet(name = "AddCourseServlet")
public class AddCourseServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        String sql;
        String kcname;
        String kccode;
        int kchour;
        String bjlei;
        int banum;
        String major;
        PrintWriter out=response.getWriter();

        kcname=request.getParameter("course");//从jsp页面获取数据
        response.getWriter().print(kcname);

        kccode=request.getParameter("coursenumber");
        kchour= Integer.parseInt(request.getParameter("coursetime"));
        bjlei=request.getParameter("coursetype");
        banum= Integer.parseInt(request.getParameter("classnum"));
        major=request.getParameter("major");
        sql="insert into plan(kcname,kccode,kchour,bjlei,banum,major) values(?,?,?,?,?,?)";

        try {
            QueryRunner runner=new QueryRunner(C3p0Util.getDs()); //DButils 工具    获取数据库连接
            int num=runner.update(sql,new Object[]{kcname,kccode,kchour,bjlei,banum,major});
            if (num>0){
                response.getWriter().print("<h3>成功发布教学计划</h3>");
                out.print("具体内容为:"+kcname+""+kchour+"课时");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
             doPost(request,response);
    }
}
