/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Model.Doidua;
import Model.bxhDoi;
import java.sql.CallableStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;

/**
 *
 * @author DELL
 */
public class BxhDoiDAO extends DAO {

    public BxhDoiDAO() {
        super();
    }

    public ArrayList<bxhDoi> getXhDoi(int idGiai) {

        ArrayList<bxhDoi> ListXhDoi = null;
        String sql = "{call xhDoi(?)}";
        try {
            CallableStatement cs = con.prepareCall(sql);
            cs.setInt(1, idGiai);
            ResultSet rs = cs.executeQuery();

            while (rs.next()) {
                if (ListXhDoi == null) {
                    ListXhDoi = new ArrayList<bxhDoi>();
                }
                bxhDoi xhDoi = new bxhDoi();
               
                xhDoi.setId(rs.getInt("id"));
                xhDoi.setTen(rs.getString("ten"));
                xhDoi.setDiem(rs.getInt("diem"));
                ListXhDoi.add(xhDoi);
            }
            Collections.sort(ListXhDoi, Comparator.comparing(bxhDoi::getDiem));
            Collections.reverse(ListXhDoi);
            for (int i = 0; i < ListXhDoi.size(); i++) {
                ListXhDoi.get(i).setXh(i + 1);
            }
        } catch (Exception e) {
            e.printStackTrace();
            ListXhDoi = null;
        }

        return ListXhDoi;
    }

    public static void main(String[] args) {
        BxhDoiDAO xhDAO = new BxhDoiDAO();
        ArrayList<bxhDoi> xhDoi = xhDAO.getXhDoi(2);
        for (int i = 0; i < xhDoi.size(); i++) {
            System.out.println(xhDoi.get(i).getXh());
            System.out.println(xhDoi.get(i).getTen());
        }

    }

}
