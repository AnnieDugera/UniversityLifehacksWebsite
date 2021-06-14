/*
connecto to db & returen info

For like, need to create col in DB
 */
package com.fyp;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author macke
 */
public class HackDAO {
    public HackDAO(){
    
    }
    
    //the DAO facilites a connection from the data base It reilies on the java 
    //bean and servlet to work
    public ArrayList<Hack> getHacks (){
        ArrayList<Hack> hacks = new ArrayList<Hack>();
        
        Connection con = null; 
        Statement stmt = null;
        String dbURL = "jdbc:mysql://mysql1.it.nuigalway.ie:3306/mydb5240";
        String uname = "mydb5240da";
        String pword = "fy2zap";
        
        try{
          con = DriverManager.getConnection(dbURL, uname, pword);
          stmt = (Statement) con.createStatement();
          ResultSet rs = stmt.executeQuery("SELECT * FROM hack ORDER BY tipID");
          while (rs.next()){
              //one cz name is first feild in tbale 
              Hack u = new Hack(rs.getString(1), rs.getString(2),rs.getInt(3),rs.getInt(4));
              hacks.add(u); 
          }
          
        } catch (SQLException ex) {
            Logger.getLogger(HackDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return hacks;
    }
    
    
    //get money related tips/hacks
     public  ArrayList<Hack> getMoney(){
        ArrayList<Hack> moneys = new ArrayList<Hack>();
        
        Connection con = null; 
        Statement stmt = null;
        String dbURL = "jdbc:mysql://mysql1.it.nuigalway.ie:3306/mydb5240";
        String uname = "mydb5240da";
        String pword = "fy2zap";
        
        try{
          con = DriverManager.getConnection(dbURL, uname, pword);
          stmt = (Statement) con.createStatement();
          ResultSet rs = stmt.executeQuery("SELECT * FROM hack WHERE title='Money Saving'");
          
         while (rs.next()){
               //one cz name is first feild in tbale 
              Hack m = new Hack(rs.getString(1), rs.getString(2),rs.getInt(3),rs.getInt(4));
              moneys.add(m); 
          }
    
            } catch (SQLException ex) {
            Logger.getLogger(HackDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return moneys;
    
    }
     
     
    //get organdisational related hacks 
     public  ArrayList<Hack> getOrganisation(){
        ArrayList<Hack> organs = new ArrayList<Hack>();
        
        Connection con = null; 
        Statement stmt = null;
        String dbURL = "jdbc:mysql://mysql1.it.nuigalway.ie:3306/mydb5240";
        String uname = "mydb5240da";
        String pword = "fy2zap";
        
        try{
          con = DriverManager.getConnection(dbURL, uname, pword);
          stmt = (Statement) con.createStatement();
          ResultSet rs = stmt.executeQuery("SELECT * FROM hack WHERE title='Organisation'");
          
         while (rs.next()){
               //one cz name is first feild in tbale 
              Hack o = new Hack(rs.getString(1), rs.getString(2),rs.getInt(3),rs.getInt(4));
              organs.add(o); 
          }
    
            } catch (SQLException ex) {
            Logger.getLogger(HackDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return organs;
    
    }
     
     
      //get self care related hacks 
     public  ArrayList<Hack> getSelfCare(){
        ArrayList<Hack> cares = new ArrayList<Hack>();
        
        Connection con = null; 
        Statement stmt = null;
        String dbURL = "jdbc:mysql://mysql1.it.nuigalway.ie:3306/mydb5240";
        String uname = "mydb5240da";
        String pword = "fy2zap";
        
        try{
          con = DriverManager.getConnection(dbURL, uname, pword);
          stmt = (Statement) con.createStatement();
          ResultSet rs = stmt.executeQuery("SELECT * FROM hack WHERE title='Happy Living'");
          
         while (rs.next()){
               //one cz name is first feild in tbale 
              Hack c = new Hack(rs.getString(1), rs.getString(2),rs.getInt(3),rs.getInt(4));
              cares.add(c); 
          }
    
            } catch (SQLException ex) {
            Logger.getLogger(HackDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return cares;
    
    }
     
     //get cooking related hacks 
     public  ArrayList<Hack> getCooking(){
        ArrayList<Hack> cooks = new ArrayList<Hack>();
        
        Connection con = null; 
        Statement stmt = null;
        String dbURL = "jdbc:mysql://mysql1.it.nuigalway.ie:3306/mydb5240";
        String uname = "mydb5240da";
        String pword = "fy2zap";
        
        try{
          con = DriverManager.getConnection(dbURL, uname, pword);
          stmt = (Statement) con.createStatement();
          ResultSet rs = stmt.executeQuery("SELECT * FROM hack WHERE title='Cooking'");
          
         while (rs.next()){
               //one cz name is first feild in tbale 
              Hack k = new Hack(rs.getString(1), rs.getString(2),rs.getInt(3),rs.getInt(4));
              cooks.add(k); 
          }
    
            } catch (SQLException ex) {
            Logger.getLogger(HackDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return cooks;
    
    }
    public void updatelikes(int tipID, int like){
         //connection to database
        Connection con = null; 
        Statement stmt = null;
        String dbURL = "jdbc:mysql://mysql1.it.nuigalway.ie:3306/mydb5240";
        String uname = "mydb5240da";
        String pword = "fy2zap";
        
        try{
          con = DriverManager.getConnection(dbURL, uname, pword);
          stmt = (Statement) con.createStatement();
          //for like increase wiithin Like column to hack assocated by tipID
          String sql  = "UPDATE hack SET likes = "+like+" WHERE tipID = "+tipID;
          int rs= stmt.executeUpdate(sql);
           
          
        } catch (SQLException ex) {
            Logger.getLogger(HackDAO.class.getName()).log(Level.SEVERE, null, ex);
        } 
    }
}

