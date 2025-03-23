package servlet;

import dao.UserDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.User;
import model.GoogleAccount;
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
        HttpSession session = request.getSession();
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String code = request.getParameter("code");

        try {
            if (code != null && !code.isEmpty()) {
                
                   // Ghi log mã code nhận được
                Logger.getLogger(LoginServlet.class.getName()).log(Level.INFO, "Received code: " + code);

                // Lấy access token từ Google
                String accessToken = GoogleLogin.getToken(code);
                Logger.getLogger(LoginServlet.class.getName()).log(Level.INFO, "Access token: " + accessToken);

                // Lấy thông tin tài khoản Google
                GoogleAccount googleAccount = GoogleLogin.getUserInfo(accessToken);
                Logger.getLogger(LoginServlet.class.getName()).log(Level.INFO, "Google Account: " + googleAccount);
                email = googleAccount.getEmail();

                // Kiểm tra xem user đã tồn tại chưa
                User user = userDAO.findByEmail(email);
                if (user == null) {
                    user = userDAO.registerGoogleUser(googleAccount.getFirst_name() + " " + googleAccount.getFamily_name(), googleAccount.getEmail(), googleAccount.getId());
                    
                    if (user == null) {
                        request.setAttribute("errorMessage", "Đăng ký tài khoản Google thất bại!");
                        
                        return;
                    }
                }

                // Lưu user vào session và chuyển hướng
                session.setAttribute("user", user);
                response.sendRedirect("HomeServlet");
                return;
            }

            // Xử lý đăng nhập bằng email & password
            if (email == null || password == null || email.isEmpty() || password.isEmpty()) {
                request.setAttribute("errorMessage", "Vui lòng nhập đầy đủ email và mật khẩu!");
                request.getRequestDispatcher("Login.jsp").forward(request, response);
                return;
            }

            User user = userDAO.findByEmail(email);
            if (user == null || !user.getPassword().equals(password)) {
                request.setAttribute("errorMessage", "Email hoặc mật khẩu không chính xác!");
                request.getRequestDispatcher("Login.jsp").forward(request, response);
                return;
            }

            // Đăng nhập thành công -> Lưu vào session và chuyển hướng
            session.setAttribute("user", user);
            response.sendRedirect("HomeServlet");

        } catch (SQLException ex) {
            Logger.getLogger(LoginServlet.class.getName()).log(Level.SEVERE, null, ex);
            request.setAttribute("errorMessage", "Lỗi hệ thống, vui lòng thử lại sau!");
            request.getRequestDispatcher("Login.jsp").forward(request, response);
        }
    }

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Kiểm tra nếu có mã code từ Google
        String code = request.getParameter("code");
        User user;
        if (code != null && !code.isEmpty()) {
            try {
                // Ghi log mã code nhận được
                Logger.getLogger(LoginServlet.class.getName()).log(Level.INFO, "Received code: " + code);

                // Lấy access token từ Google
                String accessToken = GoogleLogin.getToken(code);
                Logger.getLogger(LoginServlet.class.getName()).log(Level.INFO, "Access token: " + accessToken);

                // Lấy thông tin tài khoản Google
                GoogleAccount googleAccount = GoogleLogin.getUserInfo(accessToken);
                Logger.getLogger(LoginServlet.class.getName()).log(Level.INFO, "Google Account: " + googleAccount);
                
                if(userDAO.findByEmail(googleAccount.getEmail())!=null){
                    user =  userDAO.findByEmail(googleAccount.getEmail()); 
                     HttpSession session = request.getSession();
                session.setAttribute("user", user);
                response.sendRedirect("HomeServlet");
                return;
                }
                        
                user = userDAO.registerGoogleUser(googleAccount.getEmail(), googleAccount.getEmail(), googleAccount.getId());
                    
               
                HttpSession session = request.getSession();
                session.setAttribute("user", user);

                // Chuyển hướng đến trang profile
                response.sendRedirect("HomeServlet");
            } catch (Exception e) {
                Logger.getLogger(LoginServlet.class.getName()).log(Level.SEVERE, "Lỗi khi đăng nhập Google", e);
                request.setAttribute("errorMessage", "Đã có lỗi xảy ra khi đăng nhập Google! Vui lòng thử lại. Chi tiết lỗi: " + e.getMessage());
                request.getRequestDispatcher("Login.jsp").forward(request, response);
            }
        } else {
            // Nếu không có mã code, hiển thị trang đăng nhập
            request.getRequestDispatcher("Login.jsp").forward(request, response);
        }
    }
}
