package com.servlet;

import com.bean.Manager;
import org.apache.commons.dbutils.QueryRunner;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "TDeleteServlet")
public class TDeleteServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        String zghao=request.getParameter("zghao");;
        String sql="delete  from teacher where zghao=?";
        Manager manager=new Manager();
        if(manager.delete(sql,zghao)){
            response.getWriter().print("<h1>您已成功删除该教师的信息</h1>");
        }else {
            response.getWriter().print("<h1>删除失败,该教师亦被分配教学任务，不可删除</h1>");
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
