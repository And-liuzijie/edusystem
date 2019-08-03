package com.servlet;

import com.bean.Plan;
import com.bean.Teacher;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.ResultSetHandler;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Map;

@WebServlet(name = "PlanCheckServlet")
/*
教师申请审批
 */
public class PlanCheckServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=utf-8");
        request.setCharacterEncoding("utf-8");
        String name, number, course, banji, zhicheng;
        name = request.getParameter("name");
        number = request.getParameter("number");
        course = request.getParameter("course");
        banji=request.getParameter("class");
        zhicheng= request.getParameter("zhicheng");
        PrintWriter out=response.getWriter();
        QueryRunner runner = new QueryRunner(C3p0Util.getDs());
        String sql="select * from plan";
        try {
            ArrayList<Plan> list=(ArrayList<Plan>) runner.query(sql,new BeanListHandler(Plan.class));
            String sql1="select * from teacher where zghao=?";
            Teacher teacher= null;
            try {
                teacher = (Teacher) runner.query(sql1,new BeanHandler(Teacher.class),new Object[]{number});
            } catch (SQLException e1) {
                e1.printStackTrace();
            }
            if(teacher!=null){
                if(teacher.getZjmenshu()<2){
                    if (!teacher.isShigu()){
                        if(teacher.getZhichen().equals("教授")||teacher.getZhichen().equals("讲师")||teacher.getZhichen().equals("副教授")){
                            for (int i = 0; i <list.size() ; i++) {
                                if (list.get(i).getKcname().equals(course)){
                                    if (list.get(i).getBanum()>0){
                                        /*
                                        申请成功主讲门数+1
                                         */
                                        teacher.setZjmenshu(teacher.getZjmenshu()+1);
                                        String sql2="update teacher set zjmenshu=? where zghao=?";
                                        runner.update(sql2,new Object[]{teacher.getZjmenshu(),teacher.getZghao()});
                                        /*
                                        申请成功该科目的教学计划中上课半数-4
                                         */
                                        String sql3="update plan set banum=? where kccode=? ";
                                        list.get(i).setBanum(list.get(i).getBanum()-4);
                                        runner.update(sql3,new Object[]{list.get(i).getBanum(),list.get(i).getKccode()});
                                        /*
                                        将相关数据存入数据库coursetable表中作为课表
                                         */
                                        String sql4="insert into coursetable(kcname,zghao,name,kchour) values(?,?,?,?)";
                                        runner.update(sql4,new Object[]{list.get(i).getKcname(),number,name,list.get(i).getKchour()});
                                        request.setAttribute("course",course);
                                        request.setAttribute("banji",banji);
                                        request.setAttribute("keshi",list.get(i).getKchour());
                                        request.setAttribute("name",name);
                                        request.setAttribute("zhicheng",zhicheng);
                                        request.getRequestDispatcher("TaskBook.jsp").forward(request,response);//跳转到任务书jsp

                                    }else {
                                        request.getRequestDispatcher("TaskOver.jsp").forward(request,response);//跳转到一个jsp页面用来提示所申请的科目已经分配完毕，请申请其他科目的教学计划
                                    }

                                }
                            }

                            request.getRequestDispatcher("SorryNotTeacherPlan.jsp").forward(request,response);
                        }else {

                            request.getRequestDispatcher("DontApply.jsp").forward(request,response);
                        }
                    }else {
                          request.getRequestDispatcher("Accident.jsp").forward(request,response);
                    }
                }else {
                   request.getRequestDispatcher("AlreadyTwo.jsp").forward(request,response);
                }
            }else {

                request.getRequestDispatcher("NumberError.jsp").forward(request,response);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
           doPut(request,response);
    }
}
