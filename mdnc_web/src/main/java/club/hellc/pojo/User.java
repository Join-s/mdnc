package club.hellc.pojo;

import java.util.Date;

public class User {
    private Integer id;

    private Integer aid;

    private String utype;

    private String uname;

    private String rname;

    private String pwd;

    private Date createtime;

    private String uimg;

    private String funs;

    private String email;

    private String mtel;

    private String phone;

    private String sex;

    private String r1;

    private String r2;

    private String r3;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getAid() {
        return aid;
    }

    public void setAid(Integer aid) {
        this.aid = aid;
    }

    public String getUtype() {
        return utype;
    }

    public void setUtype(String utype) {
        this.utype = utype == null ? null : utype.trim();
    }

    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname == null ? null : uname.trim();
    }

    public String getRname() {
        return rname;
    }

    public void setRname(String rname) {
        this.rname = rname == null ? null : rname.trim();
    }

    public String getPwd() {
        return pwd;
    }

    public void setPwd(String pwd) {
        this.pwd = pwd == null ? null : pwd.trim();
    }

    public Date getCreatetime() {
        return createtime;
    }

    public void setCreatetime(Date createtime) {
        this.createtime = createtime;
    }

    public String getUimg() {
        return uimg;
    }

    public void setUimg(String uimg) {
        this.uimg = uimg == null ? null : uimg.trim();
    }

    public String getFuns() {
        return funs;
    }

    public void setFuns(String funs) {
        this.funs = funs == null ? null : funs.trim();
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email == null ? null : email.trim();
    }

    public String getMtel() {
        return mtel;
    }

    public void setMtel(String mtel) {
        this.mtel = mtel == null ? null : mtel.trim();
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone == null ? null : phone.trim();
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex == null ? null : sex.trim();
    }

    public String getR1() {
        return r1;
    }

    public void setR1(String r1) {
        this.r1 = r1 == null ? null : r1.trim();
    }

    public String getR2() {
        return r2;
    }

    public void setR2(String r2) {
        this.r2 = r2 == null ? null : r2.trim();
    }

    public String getR3() {
        return r3;
    }

    public void setR3(String r3) {
        this.r3 = r3 == null ? null : r3.trim();
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", aid=" + aid +
                ", utype='" + utype + '\'' +
                ", uname='" + uname + '\'' +
                ", rname='" + rname + '\'' +
                ", pwd='" + pwd + '\'' +
                ", createtime=" + createtime +
                ", uimg='" + uimg + '\'' +
                ", funs='" + funs + '\'' +
                ", email='" + email + '\'' +
                ", mtel='" + mtel + '\'' +
                ", phone='" + phone + '\'' +
                ", sex='" + sex + '\'' +
                ", r1='" + r1 + '\'' +
                ", r2='" + r2 + '\'' +
                ", r3='" + r3 + '\'' +
                '}';
    }
}