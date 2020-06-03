
package com.java.dao;

import com.java.bean.RecordBean;
import java.sql.*;
import java.util.*;
import java.util.Date;


public class RecordDao {
    
     public static Connection getConnection() throws ClassNotFoundException, SQLException {
        Connection con = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost/ciminaldatabase?useSSL=false", "root", "shreya*123");
            if (con != null) {
                System.out.println("Connection done");
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return con;
    }

    public static int insert(RecordBean r) {
        int status = 0;
        try {
            Connection con = getConnection();

            PreparedStatement pst = con.prepareStatement("insert into criminalrecord (name,jailcity, gender, dob, crime,imprisondate, releasedate, hometown,familynumber, lawyername,lawyernumber) VALUES(?,?,?,?,?,?,?,?,?,?,?)");

            pst.setString(1, r.getName());          
            pst.setString(2, r.getJailcity());
            pst.setString(3, r.getGender());
             java.sql.Date sqlDate = new java.sql.Date(r.getDob().getTime());
            pst.setDate(4, sqlDate);
            pst.setString(5, r.getCrime());
            sqlDate = new java.sql.Date(r.getImprisondate().getTime());
            pst.setDate(6, sqlDate);
            sqlDate = new java.sql.Date(r.getReleasedate().getTime());
            pst.setDate(7, sqlDate);
            pst.setString(8, r.getHometown());
            pst.setString(9, r.getFamilynumber());
            pst.setString(10, r.getLawyername());
            pst.setString(11, r.getLawyernumber());

            status = pst.executeUpdate();

            System.out.println("Record succesfully Inserted !!");

        } catch (Exception e) {
            System.out.println(e);
        }
        return status;
    }

    public static int update(RecordBean r) throws ClassNotFoundException {
        int status = 0;
        try {
            Connection con = getConnection();
            PreparedStatement pst = con.prepareStatement("update criminalrecord set jailcity=?, crime=?, releasedate=?, familynumber=?, lawyername=?, lawyernumber=? where id=? ");
            pst.setString(1, r.getJailcity());
            pst.setString(2, r.getCrime());
            java.sql.Date sqlDate = new java.sql.Date(r.getReleasedate().getTime());
            pst.setDate(3, sqlDate);
            pst.setString(4, r.getFamilynumber());
            pst.setString(5, r.getLawyername());
            pst.setString(6, r.getLawyernumber());
            pst.setInt(7, r.getId());

            status = pst.executeUpdate();

        } catch (SQLException e) {
            System.out.println(e);
        }
        return status;
    }

    public static int delete(RecordBean r) throws ClassNotFoundException {
        int status = 0;
        try {

            Connection con = getConnection();
            PreparedStatement pst = con.prepareStatement("delete from criminalrecord where id=?");
            pst.setInt(1, r.getId());
            status = pst.executeUpdate();

        } catch (SQLException e) {
            System.out.println(e);
        }
        return status;
    }

    public static List<RecordBean> getAllRecords() {
        List<RecordBean> list = new ArrayList<RecordBean>();

        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("select * from criminalrecord");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                  System.out.println("fetch Data");
                RecordBean r = new RecordBean();

                r.setId(rs.getInt("id"));
                r.setName(rs.getString("name"));
                r.setJailcity(rs.getString("jailcity"));
                r.setGender(rs.getString("gender"));
                r.setDob(rs.getDate("dob"));
                r.setCrime(rs.getString("crime"));
                r.setImprisondate(rs.getDate("imprisondate"));
                r.setReleasedate(rs.getDate("releasedate"));
                r.setHometown(rs.getString("hometown"));
                r.setFamilynumber(rs.getString("familynumber"));
                r.setLawyername(rs.getString("lawyername"));
                r.setLawyernumber(rs.getString("lawyernumber"));

                list.add(r);
            }
        } catch (Exception e) {
            System.out.println(e);

        }
        return list;

    }
    
    public static List<RecordBean> SearchRecords(RecordBean q1) {
        List<RecordBean> list = new ArrayList<RecordBean>();

        try {
            Connection con = getConnection();
            PreparedStatement pst = con.prepareStatement("select * from criminalrecord where jailcity=? and gender=? and crime=?");
            pst.setString(1, q1.getJailcity());
            pst.setString(2, q1.getGender());
            pst.setString(3, q1.getCrime());
            
            ResultSet rs = pst.executeQuery();
            
            while (rs.next()) {
                
                RecordBean r = new RecordBean();
                 r.setId(rs.getInt("id"));
                r.setName(rs.getString("name"));
                r.setJailcity(rs.getString("jailcity"));
                r.setGender(rs.getString("gender"));
                r.setDob(rs.getDate("dob"));
                r.setCrime(rs.getString("crime"));
                r.setImprisondate(rs.getDate("imprisondate"));
                r.setReleasedate(rs.getDate("releasedate"));
                r.setHometown(rs.getString("hometown"));
                r.setFamilynumber(rs.getString("familynumber"));
                r.setLawyername(rs.getString("lawyername"));
                r.setLawyernumber(rs.getString("lawyernumber"));
                 System.out.print(rs.getInt("id"));

               
              
                list.add(r);
            }
        } catch (Exception e) {
            System.out.println(e);

        }
        return list;

    }
    
    public static RecordBean SearchRecordsById(RecordBean q1) {
        RecordBean r = new RecordBean();
        
        try {
            Connection con = getConnection();
            PreparedStatement pst = con.prepareStatement("select * from criminalrecord where id=?");
            pst.setInt(1, q1.getId());
            
            ResultSet rs = pst.executeQuery();
            
            while (rs.next()) {
               
                r.setId(rs.getInt("id"));
                r.setName(rs.getString("name"));
                r.setJailcity(rs.getString("jailcity"));
                r.setGender(rs.getString("gender"));
                
                java.sql.Date dt = rs.getDate("dob");
                r.setDob(new java.util.Date(dt.getTime()));
                
//                r.setDob(rs.getDate("dob"));
                r.setCrime(rs.getString("crime"));
                r.setImprisondate(rs.getDate("imprisondate"));
                r.setReleasedate(rs.getDate("releasedate"));
                r.setHometown(rs.getString("hometown"));
                r.setFamilynumber(rs.getString("familynumber"));
                r.setLawyername(rs.getString("lawyername"));
                r.setLawyernumber(rs.getString("lawyernumber"));
                System.out.print(rs.getInt("id"));


            }
        } catch (Exception e) {
            System.out.println(e);

        }
     return r ;

    }
    
}
