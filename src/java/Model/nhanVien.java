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
public class nhanVien extends thanhVien{
    private String vaitro;

    public nhanVien(String vaitro, int id, String usrn, String pwd, String ten, String diachi, Date ngaysinh, String email, int dt) {
        super(id, usrn, pwd, ten, diachi, ngaysinh, email, dt);
        this.vaitro = vaitro;
    }

    public nhanVien(String vaitro) {
        this.vaitro = vaitro;
    }

    public nhanVien() {
    }

    public String getVaitro() {
        return vaitro;
    }

    public void setVaitro(String vaitro) {
        this.vaitro = vaitro;
    }
    
    
    
    
    
    
}
