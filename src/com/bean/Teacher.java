package com.bean;

public class Teacher {
    String zghao;
    String password;
    String name;
    int zjmenshu;
    boolean shigu;
    boolean ganbu;
    String zhichen;

    public String getZhichen() {
        return zhichen;
    }

    public void setZhichen(String zhichen) {
        this.zhichen = zhichen;
    }

    public boolean isGanbu() {
        return ganbu;
    }

    public void setGanbu(boolean ganbu) {
        this.ganbu = ganbu;
    }

    public boolean isShigu() {

        return shigu;
    }

    public void setShigu(boolean shigu) {
        this.shigu = shigu;
    }

    public int getZjmenshu() {

        return zjmenshu;
    }

    public void setZjmenshu(int zjmenshu) {
        this.zjmenshu = zjmenshu;
    }

    public String getName() {

        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

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
}
