package com.daddy.servlet;

import com.daddy.entity.Project;
import com.daddy.service.ProjectService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.Writer;
import java.util.Date;
//上传图片
@WebServlet("/addPic")
public class AddPicServlet extends HttpServlet {
    private ProjectService projectService = new ProjectService();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String title = req.getParameter("title");
        String author = req.getParameter("author");
        String theme = req.getParameter("theme");
        String state = req.getParameter("state");
        String city = req.getParameter("city");
        String introduction = req.getParameter("introduction");
        String img = req.getParameter("img");
        int heat = Integer.parseInt(req.getParameter("heat"));
        Project project = new Project(title,theme,author,introduction,heat,state,city,new Date(),img);
//        判断图片上传
        if (projectService.insertPro(project)){
            Writer writer = resp.getWriter();
            writer.write("上传成功!");
            writer.flush();
        }else {
            Writer writer = resp.getWriter();
            writer.write("上传失败!");
            writer.flush();
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doGet(req,resp);
    }
}
