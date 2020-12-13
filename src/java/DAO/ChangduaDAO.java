/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import static DAO.DAO.con;
import Model.Changdua;

import java.sql.CallableStatement;
import java.sql.Date;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;

/**
 *
 * @author DELL
 */
public class ChangduaDAO extends DAO {

    public ChangduaDAO() {
        super();
    }

    public ArrayList<Changdua> SearchChang(int idGiai, String ten) {
        ArrayList<Changdua> cd = null;
        StringBuilder s = new StringBuilder();
        s.append('%');
        s.append(ten);
        s.append('%');
        String t = s + "";
        String sql = "{call searchChang(?,?)}";
        try {
            CallableStatement cs = con.prepareCall(sql);
            cs.setInt(1, idGiai);
            cs.setString(2, t);
            ResultSet rs = cs.executeQuery();

            while (rs.next()) {
                if (cd == null) {
                    cd = new ArrayList<Changdua>();
                }
                Changdua chang = new Changdua();
                chang.setId(rs.getInt("id"));
                chang.setTenChang(rs.getString("ten"));
                chang.setTenVong(rs.getString("vong"));
                chang.setNgayDua(rs.getDate("ngaydua"));
                chang.setDuongDua(rs.getString("duongdua"));
                chang.setSoVong(rs.getInt("sovong"));
                chang.setChieuDaiVong(rs.getDouble("motvong"));
                chang.setMota(rs.getString("ghichu"));
                cd.add(chang);
            }
            if(cd!=null)
            Collections.sort(cd,Comparator.comparing(Changdua::getNgayDua));
        } catch (Exception e) {
            e.printStackTrace();
            cd = null;
        }

        return cd;
    }

    public boolean luuSua(Changdua chang) {
        boolean kq = false;
        String sql = "{call luuSua(?,?,?,?,?,?,?,?,?)}";
        try {
            CallableStatement cs = con.prepareCall(sql);
            cs.setInt(1, chang.getId());
            cs.setString(2, chang.getTenChang());
            cs.setString(3, chang.getTenVong());
            cs.setString(4, chang.getDuongDua());
            cs.setDate(5, chang.getNgayDua());
            cs.setInt(6, chang.getSoVong());
            cs.setDouble(7, chang.getChieuDaiVong());
            cs.setString(8, chang.getMota());
            cs.setInt(9,chang.getIdGiai());
            ResultSet rs = cs.executeQuery();
            kq = true;
        } catch (Exception e) {
            e.printStackTrace();
            kq= false;
        }

        return kq;

    }
     public boolean themChang(Changdua chang) {
         boolean kq = false;
        String sql = "{call themChang(?,?,?,?,?,?,?,?)}";
        try {
            CallableStatement cs = con.prepareCall(sql);
            cs.setString(1, chang.getTenChang());
            cs.setString(2, chang.getTenVong());
            cs.setString(3, chang.getDuongDua());
            cs.setDate(4, chang.getNgayDua());
            cs.setInt(5, chang.getSoVong());
            cs.setDouble(6, chang.getChieuDaiVong());
            cs.setString(7, chang.getMota());
            cs.setInt(8,chang.getIdGiai());
            ResultSet rs = cs.executeQuery();
            kq = true;
        } catch (Exception e) {
            e.printStackTrace();
            kq= false;
        }

        return kq;

    }
     public boolean xoaChang(int idChang) {
        String sql = "{call xoaChang(?)}";
        try {
            CallableStatement cs = con.prepareCall(sql);
            cs.setInt(1, idChang);
            ResultSet rs = cs.executeQuery();
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }

        return true;

    }
    public static void main(String[] args) {
        Date ngay = Date.valueOf("2020-02-26");
       Changdua chang = new Changdua(2,"Barcelona", "Pre-test 2", "Barce", ngay, 0, 4.655," ");
       ChangduaDAO changDAO= new ChangduaDAO();
        System.out.println(changDAO.themChang(chang));
        
    }

}
