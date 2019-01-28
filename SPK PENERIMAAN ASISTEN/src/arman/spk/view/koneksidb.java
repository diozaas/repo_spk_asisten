/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package arman.spk.view;

/**
 *
 * @author triple
 */

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import javax.swing.JOptionPane;

public class koneksidb {
    
    public static Connection getConnection(){
        Connection connection = null;
        String driver = "com.mysql.jdbc.Driver";
        String url = "jdbc:mysql://localhost:3306/spk_asisten";
        String user = "root";
        String password = "";
        if (connection == null){
            try{
                Class.forName(driver);
                connection = DriverManager.getConnection(url, user, password);
            } catch(SQLException | ClassNotFoundException error){
                JOptionPane.showMessageDialog(null, "Koneksi Database Error" + error);
            }
        }
        return connection;
    }    
}