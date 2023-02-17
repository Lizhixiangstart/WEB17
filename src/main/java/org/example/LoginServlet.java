package org.example;/**
 * @ClassName LoginServlet
 * @Description TODO
 * @Author LiZhixiang
 * @Date 2023/2/16 22:49
 * @Version 1.0
 */

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;


/**
 @Description:
 @Auth:Lzx
 @Create:2023-022023/2/1622-49
 @Version:1.0
 */
@WebServlet("/loginServlet")
public class LoginServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        //设置客户端编码
        req.setCharacterEncoding("UTF-8");
        //接收客户端传递的参数
        String uname = req.getParameter("uname");
        String upwd = req.getParameter("upwd");

        if (uname==null || "".equals(uname)){
            req.setAttribute("msg","用户姓名不能为空");
            req.getRequestDispatcher("login.jsp").forward(req,resp);
            return;
        } if (upwd==null || "".equals(upwd)){
            req.setAttribute("msg","用户密码不能为空");
            req.getRequestDispatcher("login.jsp").forward(req,resp);
            return;
        }
        //判断账号是否正确
        if ("admin".equals(uname)&&"admin".equals(upwd)){
            req.getSession().setAttribute("uname",uname);
            resp.sendRedirect("index.jsp");
            return;
        }
    }
}
