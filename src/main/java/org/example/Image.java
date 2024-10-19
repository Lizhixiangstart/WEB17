package org.example;

import jakarta.servlet.ServletException;
import jakarta.servlet.ServletOutputStream;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import javax.imageio.ImageIO;
import java.awt.*;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.Random;

/**
 * @ClassName BufferedImage
 * @Description 生成验证码图片
 * @Author LiZhixiang
 * @Date 2023/3/31 10:17
 * @Version 1.0
 */
@WebServlet("/image")
public class Image extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("image/jpeg");
        response.setHeader("Pragma","No-cache");//禁止图像缓存
        response.setHeader("Cache-Control","no-cache");
        response.setDateHeader("Expires",0);

        //在内存中创建图像
        int width=100,height=40;

        BufferedImage image = new BufferedImage(width, height, BufferedImage.TYPE_INT_BGR);
        //获取图形上下文
        Graphics g = image.getGraphics();
        Random random = new Random();
        g.setColor(getRandColoc());
        //填写指定的矩形，使用图像上下文的当前颜色填充矩形
        g.fillRect(0,0,width,height);
        //设定字体
        g.setFont(new Font("Times New Roman",Font.PLAIN,28));
        //随机生成干扰线，使图像中的认证码不易被其它程序探测
        g.setColor(getRandColoc());
        for (int i=0;i<155;i++){
            int x = random.nextInt(width);
            int y = random.nextInt(height);
            int x1 = random.nextInt(12);
            int y1 = random.nextInt(12);
            g.drawLine(x,y,x+x1,y+y1);
        }
        //获取随机生成四位数
        String sRand = "";
        //准备一个数字加字母的字典
        String string = "1234567890abcdefghijklmnopqrstuvwxyz";
        for (int i=0;i<4;i++){
            char rand = string.charAt(random.nextInt(string.length()));
            sRand+=rand;
            //将认证码存入session
            g.drawString(Character.toString(rand),13*i+25,30);
            request.getSession().setAttribute("rand",sRand);
            //图片生效
            g.dispose();
            ServletOutputStream responseOutputStream = response.getOutputStream();
            ImageIO.write(image,"JPEG",responseOutputStream);
            responseOutputStream.flush();
            responseOutputStream.close();
        }

    }

    /**
     * 给定范围获得随机颜色
     * @return
     */
    private Color getRandColoc() {
        Random random = new Random();
        return new Color(random.nextInt(256),random.nextInt(256),random.nextInt(256));
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        processRequest(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        processRequest(req,resp);
    }
}
