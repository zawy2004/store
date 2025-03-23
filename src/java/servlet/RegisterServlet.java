package servlet;

import dao.UserDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.User;
import java.io.IOException;
import java.sql.SQLException;


public class RegisterServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private final UserDAO userDAO = new UserDAO();
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
        // Lấy dữ liệu từ form đăng ký
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String password = request.getParameter("password"); // Có thể NULL nếu đăng nhập bằng Google
        User success = new User();
        
        try {
            // Kiểm tra email đã tồn tại chưa
            User existingUser = userDAO.findByEmail(email);
            if (existingUser != null) {
                request.setAttribute("errorMessage", "Email đã được sử dụng! Hãy thử email khác.");
                request.getRequestDispatcher("Register.jsp").forward(request, response);
                return;
            }

            // Xử lý đăng ký
          
                success = userDAO.registerUser(name, email, password);
            

            // Điều hướng sau khi đăng ký thành công hoặc thất bại
            if (success != null) {
                response.sendRedirect("LoginServlet"); // Chuyển hướng đến trang đăng nhập
            } else {
                request.setAttribute("errorMessage", "Đăng ký thất bại! Vui lòng thử lại.");
                request.getRequestDispatcher("Register.jsp").forward(request, response);
            }

        } catch (SQLException e) {
            e.printStackTrace();
            request.setAttribute("errorMessage", "Lỗi hệ thống: " + e.getMessage());
            request.getRequestDispatcher("Register.jsp").forward(request, response);
        }
    }
}
