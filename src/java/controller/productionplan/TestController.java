/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller.productionplan;

import dal.assignment.DepartmentDBContext;
import dal.assignment.PlanDBContext;
import dal.assignment.ProductDBContext;
import dal.assignment.UserDBContext;
import entity.assignment.Department;
import entity.assignment.Plan;
import entity.assignment.PlanCampain;
import entity.assignment.Product;
import entity.assignment.User;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.*;

@WebServlet("/user/create")
public class TestController extends HttpServlet {
   
    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        request.getRequestDispatcher("../userCreate.jsp").forward(request, response);
    } 

    /** 
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        User u = new User();
        u.setUsername(username);
        u.setPassword(password);
         UserDBContext db = new UserDBContext();
        db.insert(u);
        
        //return results to user
        response.getWriter().println("Inserted "+ u.getUsername());
                response.getWriter().println("Inserted "+ u.getPassword());
       
        
    }

    

}
