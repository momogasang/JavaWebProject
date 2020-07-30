package com.daddy.utils;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBUtil {
    private static Connection con = null;
    public static synchronized  Connection getSqlConnection(){
        try{
            if(con==null){
                Class.forName("com.mysql.cj.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/daddy","root","huanrui123");
            }
        }catch(Exception e){
            e.printStackTrace();
        }
        return con;
    }
    public static void closeAll(AutoCloseable... autoCloseable){
        for (AutoCloseable closeable : autoCloseable) {
            try {
                closeable.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}
