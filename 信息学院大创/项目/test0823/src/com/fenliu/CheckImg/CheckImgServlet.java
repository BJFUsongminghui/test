package com.fenliu.CheckImg;


import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.awt.*;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.Random;

@WebServlet(name = "AuthCode")
public class CheckImgServlet extends HttpServlet {
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private static final int WIDTH = 60;//
    private static final int HEIGHT = 20;//
    private static final int LENGTH = 4;//
   
    private static final String str = "1234567890" +
            "abcdefghijklmnopqrstuvwxyz" +
            "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
    char[] chars = str.toCharArray();//
    private static Random random = new Random();

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        //
        response.setContentType("image/jpeg");

        //
        response.setHeader("pragma", "no-cache");
        response.setHeader("cache-control", "no-cache");
        response.setHeader("expires", "0");

        BufferedImage image = new BufferedImage(WIDTH, HEIGHT, BufferedImage.TYPE_3BYTE_BGR);

        Graphics graphics = image.getGraphics();

        
        graphics.setColor(Color.WHITE);
        graphics.fillRect(0, 0, WIDTH, HEIGHT);

        
        String code = "";

       
        for (int i = 0; i < LENGTH; i++) {
            String c = "" + chars[random.nextInt(str.length())];
            graphics.setColor(getColor());
            graphics.drawString(c, 10 * i + 10, 18);
            code += c;
        }

        
        for (int i = 0; i < 50; i++) {
            graphics.setColor(getColor());
            graphics.drawOval(random.nextInt(60), random.nextInt(20), 1, 1);
        }

        //将生成的验证码放入session域
        HttpSession session = request.getSession();
        session.setAttribute("code", code);

        
        graphics.dispose();

      
        ImageIO.write(image, "JPEG", response.getOutputStream());
    }
    
    private Color getColor() {
        return new Color(random.nextInt(120), random.nextInt(120), random.nextInt(120));
    }
}
