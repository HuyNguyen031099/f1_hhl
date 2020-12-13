/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

/**
 *
 * @author DELL
 */
public class bxhDoi extends Doidua{
    
    private int xh;
    private int diem;

    public bxhDoi() {
        super();
    }

    public bxhDoi(int xh, int diem) {
        this.xh = xh;
        this.diem = diem;
    }

    public int getXh() {
        return xh;
    }

    public void setXh(int xh) {
        this.xh = xh;
    }

    public int getDiem() {
        return diem;
    }

    public void setDiem(int diem) {
        this.diem = diem;
    }
    
    
    
}
