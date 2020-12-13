/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import static DAO.DAO.con;
import Model.Changdua;
import Model.Taydua;
import Model.Thidau;
import java.sql.CallableStatement;
import java.sql.ResultSet;
import java.sql.Time;
import java.util.ArrayList;

/**
 *
 * @author DELL
 */
public class thidauDAO extends DAO{

    public thidauDAO() {
    super();
    }
    
    public ArrayList<Thidau> getDsThidau(int idChang){
        
        ArrayList<Thidau> td = null;
        String sql = "{call getDsThidau(?)}";
        try{
            CallableStatement cs = con.prepareCall(sql);
            cs.setInt(1, idChang);
            ResultSet rs = cs.executeQuery();
             
            while(rs.next()){
                if(td == null) td = new ArrayList<Thidau>();
                Thidau t = new Thidau();
                t.setId(rs.getInt("idThidau"));
                String ten = rs.getString("tentaydua");
                Taydua taydua = new Taydua(ten);
                t.setTaydua(taydua);
                t.setSoVongHt(rs.getInt("sovong"));
                t.setSoLanDung(rs.getInt("landung"));
                t.setThoigian(rs.getTime("thoigian"));
                t.getTaydua().setIdDoi(rs.getInt("doidua"));
                t.setGhiChu(rs.getString("ghichu"));
                td.add(t);
            }
        }catch(Exception e){
            e.printStackTrace();
            td = null;
        }   
        
        return td;
    }
    public boolean luuKQ(Thidau t) {
        String sql = "{call luu_KQ(?,?,?,?,?,?)}";
        try {
            CallableStatement cs = con.prepareCall(sql);
            cs.setInt(1, t.getId());
            cs.setInt(2, t.getSoVongHt());
            cs.setTime(3, t.getThoigian());
            cs.setInt(4, t.getSoLanDung());
            cs.setInt(5, t.getDiem());
            cs.setString(6,t.getGhiChu());
            ResultSet rs = cs.executeQuery();
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }

        return true;

    }
    public ArrayList<Thidau> getKqDoi(int idGiai, int idDoi){
         ArrayList<Thidau> td = null;
        String sql = "{call xhDoi_theo_Chang(?,?)}";
        try{
            CallableStatement cs = con.prepareCall(sql);
            cs.setInt(1, idGiai);
            cs.setInt(2, idDoi);
            ResultSet rs = cs.executeQuery();
             
            while(rs.next()){
                if(td == null) td = new ArrayList<Thidau>();
                Thidau t = new Thidau();
                Changdua cd = new Changdua();
                cd.setTenChang(rs.getString("chang"));
                cd.setNgayDua(rs.getDate("ngaydua"));
                cd.setTenVong(rs.getString("vong"));
                t.setChangdua(cd);;
                t.setDiem(rs.getInt("tdiem"));
                td.add(t);
            }
        }catch(Exception e){
            e.printStackTrace();
            td = null;
        }   
        
        return td;
        
    }
    public static void main(String[] args) {
        thidauDAO tDAO = new thidauDAO();
        ArrayList<Thidau> listTD = (ArrayList<Thidau>)tDAO.getKqDoi(11, 1);
        System.out.println(listTD);
        
    }
    
}
