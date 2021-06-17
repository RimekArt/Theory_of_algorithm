/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package knu.fit.ist.ta.exam;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import static knu.fit.ist.ta.exam.Calculate.Calculator;

/**
 *
 * @author 1
 */
public class Servlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        String x = request.getParameter("x");
        float param = Float.parseFloat(x);
        float result = Calculate.Calculator(param);
        request.setAttribute("result", result);
        request.getRequestDispatcher("index.jsp").forward(request, response);
    }
}