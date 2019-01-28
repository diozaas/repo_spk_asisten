/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package arman.spk.backgr;

/**
 *
 * @author triple
 */

import java.awt.Graphics;
import java.awt.Graphics2D;
import java.awt.Image;
import javax.swing.ImageIcon;
import javax.swing.JPanel;


public class bg1 extends JPanel{
    
    private Image image; // membuat variabel image
    public bg1(){
        image = new ImageIcon(getClass().getResource("/arman/spk/image/1.jpg")).getImage(); //memanggil sumber gambar
    }
    @Override
    protected void paintComponent(Graphics g) {
        super.paintComponent(g);
        
        Graphics gd = (Graphics2D) g.create();
        
        gd.drawImage(image,0,0,getWidth(),getHeight(), this); //menggambar image
        
        gd.dispose();        
    }
}
