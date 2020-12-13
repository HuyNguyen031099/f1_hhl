/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import java.sql.CallableStatement;
import java.sql.ResultSet;

/**
 *
 * @author DELL
 */
public class DoiduaDAO extends DAO{

    public DoiduaDAO() {
    super();
    }
    
    public String getTenDoi(int id){
        String s = null;
        
        String sql = "{call getTenDoiById(?)}";
        try{
            CallableStatement cs = con.prepareCall(sql);
            cs.setInt(1, id);
            ResultSet rs = cs.executeQuery();
             
            while(rs.next()){
               s = rs.getString("ten");
            }
        }catch(Exception e){
            e.printStackTrace();
            s = null;
        }   
        
        return s;
        
        
    }
    public static void main(String[] args) {
        System.out.println( (new DoiduaDAO()).getTenDoi(1));
    }
    
    
    
}
