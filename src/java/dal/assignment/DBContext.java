/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal.assignment;
import java.sql.*;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;


public abstract class DBContext<T> {
    protected Connection connection;
    public DBContext()
    {
        try {
            String user = "hieunguyen";
            String pass = "12345";
            String url = "jdbc:sqlserver://localhost\\SQLEXPRESS:1433;databaseName=CreatedByPA;trustServerCertificate=true;";
            
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            connection = DriverManager.getConnection(url, user, pass);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(DBContext.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(DBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }
    
    public abstract void insert(T entity);
    public abstract void update(T entity);
    public abstract void delete(T entity);
    public abstract ArrayList<T> list();
    public abstract T get(int id);
}
