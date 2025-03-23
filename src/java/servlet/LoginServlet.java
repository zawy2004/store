package servlet;

import dao.UserDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.User;
import java.io.IOException;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private final UserDAO userDAO = new UserDAO();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        if (email == null || password == null || email.isEmpty() || password.isEmpty()) {
            request.setAttribute("errorMessage", "Vui lòng nhập đầy đủ email và mật khẩu!");
            request.getRequestDispatcher("Login.jsp").forward(request, response);
            return;
        }

        try {
            User user = userDAO.findByEmail(email);

            if (user == null || !user.getPassword().equals(password)) {
                request.setAttribute("errorMessage", "Email hoặc mật khẩu không chính xác!");
                request.getRequestDispatcher("Login.jsp").forward(request, response);
                return;
            }

            // Đăng nhập thành công -> Lưu vào session
            HttpSession session = request.getSession();
            session.setAttribute("user", user);
            response.sendRedirect("HomeServlet"); // Chuyển hướng về trang chính

        } catch (SQLException ex) {
            Logger.getLogger(LoginServlet.class.getName()).log(Level.SEVERE, "Lỗi truy vấn CSDL", ex);
            request.setAttribute("errorMessage", "Đã có lỗi xảy ra! Vui lòng thử lại.");
            request.getRequestDispatcher("Login.jsp").forward(request, response);
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("Login.jsp").forward(request, response);
    }
}
