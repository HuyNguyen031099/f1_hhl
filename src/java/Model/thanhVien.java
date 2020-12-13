/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.sql.Date;

/**
 *
 * @author DELL
 */
public class thanhVien {
    private int id;
    private String usrn;
    private String pwd;
    private String ten;
    private String diachi;
    private Date ngaysinh;
    private String email;
    private int dt;

    public thanhVien(int id, String usrn, String pwd, String ten, String diachi, Date ngaysinh, String email, int dt) {
        this.id = id;
        this.usrn = usrn;
        this.pwd = pwd;
        this.ten = ten;
        this.diachi = diachi;
        this.ngaysinh = ngaysinh;
        this.email = email;
        this.dt = dt;
    }

    public thanhVien() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsrn() {
        return usrn;
    }

    public void setUsrn(String usrn) {
        this.usrn = usrn;
    }

    public String getPwd() {
        return pwd;
    }

    public void setPwd(String pwd) {
        this.pwd = pwd;
    }

    public String getTen() {
        return ten;
    }

    public void setTen(String ten) {
        this.ten = ten;
    }

    public String getDiachi() {
        return diachi;
    }

    public void setDiachi(String diachi) {
        this.diachi = diachi;
    }

    public Date getNgaysinh() {
        return ngaysinh;
    }

    public void setNgaysinh(Date ngaysinh) {
        this.ngaysinh = ngaysinh;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getDt() {
        return dt;
    }

    public void setDt(int dt) {
        this.dt = dt;
    }
    
    
    
}
