package com.servlet;

import com.mchange.v2.c3p0.ComboPooledDataSource;

import javax.sql.DataSource;


public class C3p0Util {
    public static DataSource ds=null;
    static {
        ComboPooledDataSource cpds=new ComboPooledDataSource("jxgl");
        ds=cpds;
    }
    public static DataSource getDs(){
        return ds;
    }

}
