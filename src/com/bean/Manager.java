package com.bean;

import com.servlet.C3p0Util;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import java.sql.SQLException;
import java.util.List;

public class Manager {
  String name;
  String zghao;
  String password;

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getZghao() {

        return zghao;
    }

    public void setZghao(String zghao) {
        this.zghao = zghao;
    }

    public String getName() {

        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public boolean insert(Teacher teacher){
        QueryRunner runner=new QueryRunner(C3p0Util.getDs());
        int num=0;
        try {
            String sql="insert into teacher values(?,?,?,?,?,?,?) ";
             num=runner.update(sql,new Object[]{teacher.getName(),teacher.getZhichen(),teacher.getZjmenshu(),teacher.isGanbu(),teacher.isShigu(),teacher.getZghao(),teacher.getPassword()});

        } catch (SQLException e) {
            e.printStackTrace();
        }
        if (num>0)
            return true;
        return false;
    }
    public Boolean delete(String sql,String id){
        QueryRunner runner=new QueryRunner(C3p0Util.getDs());
        int num=0;
        try {
            num=runner.update(sql,new Object[]{id});
        } catch (SQLException e) {
            e.printStackTrace();
        }
        if (num>0)
            return true;
        return false;
    }

    public Boolean update(Teacher teacher,String Zghao){
        QueryRunner runner=new QueryRunner(C3p0Util.getDs());
        String sql="update teacher set name=?,zhichen=?,zjmenshu=?,ganbu=?,shigu=?,password=? where zghao=?";
        int num=0;
        try {
            num=runner.update(sql,new Object[]{teacher.getName(),teacher.getZhichen(),teacher.getZjmenshu(),teacher.isGanbu(),teacher.isShigu(),teacher.getPassword(),Zghao});
        } catch (SQLException e) {
            e.printStackTrace();
        }
        if (num>0)
            return true;
        return false;
    }
    public List<Object> Tselect(String sql) {
        QueryRunner runner = new QueryRunner(C3p0Util.getDs());
        List<Object> list = null;
        try {
            list = runner.query(sql, new BeanListHandler<Object>(Teacher.class));
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }
}
