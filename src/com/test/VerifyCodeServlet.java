package com.test;

import java.awt.image.BufferedImage;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class VerifyCodeServlet  extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		VerifyCode vc = new VerifyCode();
        //��ȡͼƬ����
        BufferedImage bi = vc.getImage();
        //���ͼƬ���ı�����
        String text = vc.getText();
        // ��ϵͳ���ɵ��ı����ݱ��浽session��
        request.getSession().setAttribute("text", text);
        //����������ͼƬ
        System.out.println(text);
        vc.output(bi, response.getOutputStream());
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		super.doPost(request, response);
	}
	
}
