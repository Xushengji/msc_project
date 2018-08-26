package com.leeds.benchmark;

import java.io.FileInputStream;
import java.io.IOException;
import java.util.Properties;

public class PropertiesUtil {
    public  Properties getProperties (String propertiesName) {
        Properties properties=new Properties();
        try {

            //String rootPath = Constants.class.getResource(".").getPath();
            //String appConfigPath=rootPath+propertiesName;
            properties.load(new FileInputStream(propertiesName));
        } catch (IOException e) {
            e.printStackTrace();
        } catch (NullPointerException e){
            e.printStackTrace();
        }
        return properties;
    }
}
