/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Model.Giaidua;
import java.sql.CallableStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Collections;

/**
 *
 * @author DELL
 */
public class GiaiduaDAO extends DAO{

    public GiaiduaDAO() {
        super();
    }
    
    public ArrayList<Giaidua> getGiaidua(){
        ArrayList<Giaidua> gd =null;
       String sql = "{call getGiaidua()}";
        try{
            CallableStatement cs = con.prepareCall(sql);
            ResultSet rs = cs.executeQuery();
             
            while(rs.next()){
                if(gd == null) gd = new ArrayList<Giaidua>();
                Giaidua giai = new Giaidua();
                giai.setId(rs.getInt("idGiai"));
                giai.setTen(rs.getString("tengiai"));
                giai.setNam(rs.getInt("nam"));
                giai.setGhichu(rs.getString("ghichu"));
                gd.add(giai);
            }
            Collections.reverse(gd);
        }catch(Exception e){
            e.printStackTrace();
            gd = null;
        }   
        return gd;
    }
        
    public static void main(String[] args) {
        ArrayList<Giaidua> gd = null;
        GiaiduaDAO gdDAO = new GiaiduaDAO();
        gd = gdDAO.getGiaidua();
        System.out.println(gd);
    }
    
}
