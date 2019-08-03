package com.servlet;

import com.bean.Manager;
import com.bean.Student;
import com.bean.Teacher;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "loginServlet")
public class loginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        QueryRunner runner= null;
        try {
            runner = new QueryRunner(C3p0Util.getDs());
        } catch (Exception e) {
            e.printStackTrace();
        }
        String username=request.getParameter("username");
        String password=request.getParameter("password");
        String sql = null;
        String user=request.getParameter("user");
        if (user!=null) {
            if (request.getParameter("user").equals("student")) {
                sql = "select * from student where xshao=? and password=?";
                try {
                    Student student = (Student) runner.query(sql, new BeanHandler(Student.class), new Object[]{username, password});
                    if (student != null) {
                       HttpSession session=request.getSession();
                        session.setAttribute("student",student);

                        request.getRequestDispatcher("StudentLoginAfter.jsp").forward(request, response);
                    } else {
                        response.sendRedirect("login.jsp");
                    }

                } catch (SQLException e) {
                    e.printStackTrace();
                }
            } else if (request.getParameter("user").equals("teacher")) {
                sql = "select * from teacher where zghao=? and password=?";
                try {
                    Teacher teacher = (Teacher) runner.query(sql, new BeanHandler(Teacher.class), new Object[]{username, password});
                    if (teacher != null) {
                        request.setAttribute("name", teacher.getName());
                        request.getRequestDispatcher("TeacherLoginAfter.jsp").forward(request, response);
                    } else {
                        response.sendRedirect("login.jsp");
                    }
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            } else if (request.getParameter("user").equals("manager")) {
                sql = "select * from manager where zghao=? and password=?";
                try {
                    Manager manager = (Manager) runner.query(sql, new BeanHandler(Manager.class), new Object[]{username, password});
                    if (manager != null) {
                        request.setAttribute("name", manager.getName());
                        request.getRequestDispatcher("Administrator.jsp").forward(request, response);
                    } else {
                        response.sendRedirect("login.jsp");
                    }
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }else {
            response.sendRedirect("login.jsp");
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      doPost(request,response);
    }
}
