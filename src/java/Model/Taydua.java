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
public class Taydua {
    private int id;
    private int idDoi;
    private String ten;
    private String quocTich;
    private Date ngaySinh;
    private String noiSinh;

    public Taydua() {
    }

    public Taydua(int id, int idDoi, String ten, String quocTich, Date ngaySinh, String noiSinh) {
        this.id = id;
        this.idDoi = idDoi;
        this.ten = ten;
        this.quocTich = quocTich;
        this.ngaySinh = ngaySinh;
        this.noiSinh = noiSinh;
    }

    public Taydua(String ten) {
        this.ten = ten;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getIdDoi() {
        return idDoi;
    }

    public void setIdDoi(int idDoi) {
        this.idDoi = idDoi;
    }

    public String getTen() {
        return ten;
    }

    public void setTen(String ten) {
        this.ten = ten;
    }

    public String getQuocTich() {
        return quocTich;
    }

    public void setQuocTich(String quocTich) {
        this.quocTich = quocTich;
    }

    public Date getNgaySinh() {
        return ngaySinh;
    }

    public void setNgaySinh(Date ngaySinh) {
        this.ngaySinh = ngaySinh;
    }

    public String getNoiSinh() {
        return noiSinh;
    }

    public void setNoiSinh(String noiSinh) {
        this.noiSinh = noiSinh;
    }
    

   
    
    
    
}
