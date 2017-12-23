package com.blog.utils;

import java.io.*;
import java.nio.channels.FileChannel;

/**
 * Created by Administrator on 2017/7/22.
 * 丁俊
 */
public class IOUtils {

    /**
     * 文件拷贝的工具类
     * @param path1 读取的文件位置
     * @param path2 保存的文件位置
     */
    public static void fileCopy(String path1,String path2){
        FileInputStream fi = null;
        FileOutputStream fo = null;
        FileChannel in = null;
        FileChannel out = null;
        try {
            fi = new FileInputStream(new File(""));
            fo = new FileOutputStream("");
            //得到对应的文件通道
            fi.getChannel();
            fo.getChannel();
            in.transferTo(0, in.size(), out);//连接两个通道，并且从in通道读取，然后写入out通道
        }catch (Exception e){
            e.printStackTrace();
        }finally {
            try {
                if(fi != null){
                    fi.close();
                }
                if(in != null){
                    in.close();
                }
                if(fo != null){
                    fo.close();
                }
                if(out != null){
                    out.close();
                }
            }catch (Exception e){
                e.printStackTrace();
            }
        }
    }

    public static void uploadCopy(InputStream in,OutputStream out){

        try {
            byte[] b = new byte[1024];
            int len = 0;
            while ((len = in.read(b))>0){
                out.write(b, 0, len);
            }
        }catch (Exception e){
            e.printStackTrace();
        }finally {
            try {
                if(in!= null){
                    in.close();
                }
                if(out!= null){
                    out.close();
                }
            }catch (Exception e){
                e.printStackTrace();
            }
        }
    }
}
