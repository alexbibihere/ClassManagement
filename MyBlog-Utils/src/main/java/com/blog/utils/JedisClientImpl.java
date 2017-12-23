package com.blog.utils;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisPool;

/**
 * Created by Administrator on 2017/7/11.
 * 类描述:单机版实现类
 * 创建者：丁俊
 */
@Service
public class JedisClientImpl implements JedisClient {

    @Autowired
    private JedisPool jedisPool;

    /**
     * 取字符串
     * @param key
     * @return
     */
    @Override
    public String get(String key) {
        Jedis jedis = jedisPool.getResource();
        String content = jedis.get(key);
        jedis.close();
        return content;
    }

    /**
     * 存字符串
     * @param key
     * @param value
     * @return
     */
    @Override
    public String set(String key, String value) {
        Jedis jedis = jedisPool.getResource();
        String content = jedis.set(key, value);
        jedis.close();
        return content;
    }

    /**
     * 取哈希
     * @param hkey
     * @param key
     * @return
     */
    @Override
    public String hget(String hkey, String key) {
        Jedis jedis = jedisPool.getResource();
        String content = jedis.hget(hkey, key);
        jedis.close();
        return content;
    }

    /**
     * 存哈希
     * @param hkey
     * @param key
     * @param value
     * @return
     */
    @Override
    public long hset(String hkey, String key, String value) {
        Jedis jedis = jedisPool.getResource();
        Long result = jedis.hset(hkey, key, value);
        jedis.close();
        return result;
    }

    /**
     * 将 key 中储存的数字值增一。
     *如果 key 不存在，那么 key 的值会先被初始化为 0 ，然后再执行 INCR 操作。
     *如果值包含错误的类型，或字符串类型的值不能表示为数字，那么返回一个错误。
     *本操作的值限制在 64 位(bit)有符号数字表示之内。
     * @param key
     * @return
     */
    @Override
    public long incr(String key) {
        Jedis jedis = jedisPool.getResource();
        Long result = jedis.incr(key);
        jedis.close();
        return result;
    }

    /**
     * 为给定 key 设置生存时间，当 key 过期时(生存时间为 0 )，它会被自动删除。
     * @param key
     * @param second
     * @return
     */
    @Override
    public long expire(String key, int second) {
        Jedis jedis = jedisPool.getResource();
        Long result = jedis.expire(key, second);
        jedis.close();
        return result;
    }

    /**
     * Redis TTL 命令以秒为单位返回 key 的剩余过期时间。
     * @param key
     * @return
     */
    @Override
    public long ttl(String key) {
        Jedis jedis = jedisPool.getResource();
        Long result = jedis.ttl(key);
        jedis.close();
        return result;
    }

    /**
     * 删除 String类型
     * @param key
     * @return
     */
    @Override
    public long del(String key) {
        Jedis jedis = jedisPool.getResource();
        Long result = jedis.del(key);
        jedis.close();
        return result;
    }

    /**
     * 删除哈希类型
     * @param hkey
     * @param key
     * @return
     */
    @Override
    public long hdel(String hkey, String key) {
        Jedis jedis = jedisPool.getResource();
        Long result = jedis.hdel(hkey, key);
        jedis.close();
        return result;
    }
}
