/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.sql.Time;

/**
 *
 * @author DELL
 */
public class Thidau {
    private int id;
    private int soVongHt;
    private Time thoigian;
    private int soLanDung;
    private String ghiChu;
    private Taydua taydua;
    private Changdua changdua;
    private int xepHang;
    private int Diem;
    

    public Thidau() {
    }

    public Thidau(int id, int soVongHt, Time thoigian, int soLanDung, String ghiChu, Taydua taydua) {
        this.id = id;
        this.soVongHt = soVongHt;
        this.thoigian = thoigian;
        this.soLanDung = soLanDung;
        this.ghiChu = ghiChu;
        this.taydua = taydua;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getSoVongHt() {
        return soVongHt;
    }

    public void setSoVongHt(int soVongHt) {
        this.soVongHt = soVongHt;
    }

    public Time getThoigian() {
        return thoigian;
    }

    public void setThoigian(Time thoigian) {
        this.thoigian = thoigian;
    }

    public int getSoLanDung() {
        return soLanDung;
    }

    public void setSoLanDung(int soLanDung) {
        this.soLanDung = soLanDung;
    }

    public String getGhiChu() {
        return ghiChu;
    }

    public void setGhiChu(String ghiChu) {
        this.ghiChu = ghiChu;
    }

    public Taydua getTaydua() {
        return taydua;
    }

    public void setTaydua(Taydua taydua) {
        this.taydua = taydua;
    }

    public Changdua getChangdua() {
        return changdua;
    }

    public void setChangdua(Changdua changdua) {
        this.changdua = changdua;
    }

    public int getXepHang() {
        return xepHang;
    }

    public void setXepHang(int xepHang) {
        this.xepHang = xepHang;
    }

    public int getDiem() {
        return Diem;
    }

    public void setDiem() {
       switch (xepHang) {
        case 1:
            Diem =25;
            break;
        case 2:
            Diem =18;
            break;
        case 3:
            Diem =16;
            break;
        case 4:
            Diem =12;
            break;
        case 5:
            Diem =10;
            break;
        case 6:
            Diem =8;
            break; 
        case 7:
            Diem =6;
            break; 
        case 8:
            Diem =4;
            break;
        case 9:
            Diem =2;
            break;
        case 10:
            Diem =1;
            break;   
        default:
            Diem=0;
        }
       
    }

    public void setDiem(int Diem) {
        this.Diem = Diem;
    }

   

    
    
    
}
