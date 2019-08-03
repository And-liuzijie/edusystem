package com.servlet;

import com.bean.Manager;
import com.bean.Teacher;
import org.apache.commons.beanutils.BeanUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.HashMap;
import java.util.Map;

@WebServlet(name = "TInsertServlet")
public class TInsertServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=utf-8");
        request.setCharacterEncoding("utf-8");

        /*
        这里有一个问题需要解决
         */
        /*Map<String,Object> map=new HashMap<String,Object>();
        map.put("zghao",request.getParameter("zghao"));
        map.put("password",request.getParameter("password"));
        map.put("name",request.getParameter("name"));
        map.put("zjmenshu",request.getParameter("zjmenshu"));
        boolean shigu= Boolean.parseBoolean(request.getParameter("shigu"));
        boolean ganbu= Boolean.parseBoolean(request.getParameter("ganbu"));
        map.put("shigu",shigu);
        map.put("ganbu",ganbu);
        map.put("zhichen",request.getParameter("zhichen"));
        Teacher teacher=new Teacher();
        try {
            BeanUtils.populate(teacher,map);
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (InvocationTargetException e) {
            e.printStackTrace();
        }*/
        Teacher teacher=new Teacher();
        Manager manager=new Manager();
        String zghao=request.getParameter("zghao");
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
        teacher.setZghao(zghao);
        teacher.setZhichen(zhichen);
        teacher.setShigu(shigu);

        if(manager.insert(teacher)){
            response.getWriter().print("成功添加一条教师信息。");
        }else {
            response.getWriter().print("添加失败");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
