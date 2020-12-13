/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Model.nhanVien;
import java.sql.CallableStatement;
import java.sql.ResultSet;

/**
 *
 * @author DELL
 */
public class thanhvienDAO extends DAO {

    public thanhvienDAO() {
        super();
    }

    public boolean KtraDN(nhanVien nv) {
      boolean kq = false;
        String sql = "{call KtraDN(?,?)}"; //su dung stored procedure
        try {
            CallableStatement cs = con.prepareCall(sql);
            cs.setString(1, nv.getUsrn());
            cs.setString(2, nv.getPwd());
            ResultSet rs = cs.executeQuery();

            if (rs.next()) {
                nv.setId(rs.getInt("id"));
                nv.setVaitro(rs.getString("vitri"));
                nv.setTen(rs.getString("ten"));
                kq = true;
               
            }
        } catch (Exception e) {
            e.printStackTrace();
             kq= false;
        }
        return kq;

       
    }
    public static void main(String[] args) {
        String usrn = "a";
        String pwd = "a";
        nhanVien nv = new nhanVien();
            nv.setUsrn(usrn);
            nv.setPwd(pwd);
        boolean kq =(new thanhvienDAO()).KtraDN(nv);
        System.out.println(kq);
    }
}
