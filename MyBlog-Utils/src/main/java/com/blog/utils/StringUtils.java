package com.blog.utils;

import java.util.List;

/**
 * Created by Administrator on 2017/7/25.
 * String工具类
 */
public class StringUtils {
    /**
     * list转String
     * @param list
     * @param separator
     * @return
     */
    public static String listToString(List list, char separator){
        StringBuilder sb = new StringBuilder();
        for(int i=0; i<list.size(); i++){
            sb.append(list.get(i)).append(separator);
        }
        return sb.toString().substring(0,sb.toString().length()-1);
    }
}
