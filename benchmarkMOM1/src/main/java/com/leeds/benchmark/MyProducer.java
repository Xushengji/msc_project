package com.leeds.benchmark;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Properties;

public abstract class MyProducer <E,V>{



    public Double metricTransfer(Double cm){
        Double inch=cm*0.393701;
        return inch;
    }

    public String encyptionTransfer(String input) throws NoSuchAlgorithmException {
        byte[] inputData=input.getBytes();
        MessageDigest messageDigest=MessageDigest.getInstance(Constants.KEY_SHA);
        messageDigest.update(inputData);
        BigInteger sha=new BigInteger(messageDigest.digest());
        return sha.toString(32);

    }

    public ArrayList<Integer> dbTransfer(Statement stmt, java.sql.Connection connection, ArrayList<Integer> arrayList) throws SQLException {
        String sql="select id from student where name=\"porter\"";
        ResultSet rs = stmt.executeQuery(sql);
        while(rs.next()){
            Integer id=rs.getInt("id");
            arrayList.add(id);
        }
        rs.close();

        return arrayList;

    }

    public java.sql.Connection connectionSet(Properties properties) throws ClassNotFoundException,SQLException,IOException {
        Class.forName(properties.getProperty(Constants.JDBC_DRIVER,Constants.DEAFUALT_JDBC_DRIVER_VALUE));
        java.sql.Connection conn =DriverManager.getConnection(properties.getProperty(Constants.DB_URL,Constants.DEAFUALT_DB_URL_VALUE),properties.getProperty(Constants.DB_USER,Constants.DEAFUALT_DB_USER_VALUE),properties.getProperty(Constants.DB_PASS,Constants.DEAFUALT_DB_PASS_VALUE));
        return conn;
    }

    public Statement stmtSet(java.sql.Connection connection)throws SQLException{
        Statement statement=connection.createStatement();
        return statement;
    }

    public abstract Properties propertiesSet(Properties properties);




}
