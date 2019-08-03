package com.servlet;

import com.bean.Manager;
import com.bean.Teacher;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "TUpdateServlet")
public class TUpdateServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=utf-8");
        request.setCharacterEncoding("utf-8");
        Teacher teacher=new Teacher();
        Manager manager=new Manager();
        String Zghao=request.getParameter("Zghao");

        String password=request.getParameter("password");
        String name=request.getParameter("name");
        int zjmenshu= Integer.parseInt(request.getParameter("zjmenshu"));
        String zhichen=request.getParameter("zhichen");
        boolean shigu= Boolean.parseBoolean(request.getParameter("shigu"));
        boolean ganbu= Boolean.parseBoolean(request.getParameter("ganbu"));
        teacher.setZjmenshu(zjmenshu);
        teacher.setGanbu(ganbu);
        teacher.setName(name);
        teacher.setPassword(password);
        teacher.setZhichen(zhichen);
        teacher.setShigu(shigu);
        if(manager.update(teacher,Zghao)){
            response.getWriter().print("成功修改教师信息。");
        }else {
            response.getWriter().print("修改失败");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
