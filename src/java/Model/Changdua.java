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
public class Changdua {

    private int id;
    private int idGiai;
    private String tenChang;
    private String tenVong;
    private String duongDua;
    private Date ngayDua;
    private int soVong;
    private double chieuDaiVong;
    private String mota;

    public Changdua() {
    }

    public Changdua(int id, int idGiai, String tenChang, String tenVong, String duongDua, Date ngayDua, int soVong, double chieuDaiVong, String mota) {
        this.id = id;
        this.idGiai = idGiai;
        this.tenChang = tenChang;
        this.tenVong = tenVong;
        this.duongDua = duongDua;
        this.ngayDua = ngayDua;
        this.soVong = soVong;
        this.chieuDaiVong = chieuDaiVong;
        this.mota = mota;
    }

    public Changdua(int idGiai, String tenChang, String tenVong, String duongDua, Date ngayDua, int soVong, double chieuDaiVong, String mota) {
        this.idGiai = idGiai;
        this.tenChang = tenChang;
        this.tenVong = tenVong;
        this.duongDua = duongDua;
        this.ngayDua = ngayDua;
        this.soVong = soVong;
        this.chieuDaiVong = chieuDaiVong;
        this.mota = mota;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getIdGiai() {
        return idGiai;
    }

    public void setIdGiai(int idGiai) {
        this.idGiai = idGiai;
    }

    public String getTenChang() {
        return tenChang;
    }

    public void setTenChang(String tenChang) {
        this.tenChang = tenChang;
    }

    public String getTenVong() {
        return tenVong;
    }

    public void setTenVong(String tenVong) {
        this.tenVong = tenVong;
    }

    public String getDuongDua() {
        return duongDua;
    }

    public void setDuongDua(String duongDua) {
        this.duongDua = duongDua;
    }

    public Date getNgayDua() {
        return ngayDua;
    }

    public void setNgayDua(Date ngayDua) {
        this.ngayDua = ngayDua;
    }

    public int getSoVong() {
        return soVong;
    }

    public void setSoVong(int soVong) {
        this.soVong = soVong;
    }

    public double getChieuDaiVong() {
        return chieuDaiVong;
    }

    public void setChieuDaiVong(double chieuDaiVong) {
        this.chieuDaiVong = chieuDaiVong;
    }

    public String getMota() {
        return mota;
    }

    public void setMota(String mota) {
        this.mota = mota;
    }

    

}
