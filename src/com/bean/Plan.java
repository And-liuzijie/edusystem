package com.bean;

public class Plan {
    String major;
    String kcname;
    String kccode;
    int kchour;
    String bjlei;
    int banum;


    public String getMajor() {
        return major;
    }

    public void setMajor(String major) {
        this.major = major;
    }

    public int getBanum() {

        return banum;
    }

    public void setBanum(int banum) {
        this.banum = banum;
    }

    public String getBjlei() {

        return bjlei;
    }

    public void setBjlei(String bjlei) {
        this.bjlei = bjlei;
    }

    public int getKchour() {

        return kchour;
    }

    public void setKchour(int kchour) {
        this.kchour = kchour;
    }

    public String getKccode() {

        return kccode;
    }

    public void setKccode(String kccode) {
        this.kccode = kccode;
    }

    public String getKcname() {

        return kcname;
    }

    public void setKcname(String kcname) {
        this.kcname = kcname;
    }
}
