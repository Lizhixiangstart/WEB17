package org.example.pojo;/**
 * @ClassName User
 * @Description TODO
 * @Author LiZhixiang
 * @Date 2023/2/17 14:03
 * @Version 1.0
 */

/**
 @Description:
 @Auth:Lzx
 @Create:2023-022023/2/1714-03
 @Version:1.0
 */
public class User {
    private Integer userId;
    private String uname;
    private String upwd;

    public User() {
    }

    public User(Integer userId, String uname, String upwd) {
        this.userId = userId;
        this.uname = uname;
        this.upwd = upwd;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    @Override
    public String toString() {
        return "User{" +
                "userId=" + userId +
                ", uname='" + uname + '\'' +
                ", upwd='" + upwd + '\'' +
                '}';
    }

    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname;
    }

    public String getUpwd() {
        return upwd;
    }

    public void setUpwd(String upwd) {
        this.upwd = upwd;
    }
}
