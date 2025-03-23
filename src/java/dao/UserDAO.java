package dao;

import java.sql.*;
import model.User;

public class UserDAO {

    // Sử dụng DatabaseConnection để lấy kết nối
    private Connection getConnection() throws SQLException {
        return DatabaseConnection.getConnection();
    }

  public User findByEmail(String email) throws SQLException {
    String sql = "SELECT * FROM Users WHERE email = ?";
    try (Connection conn = getConnection(); PreparedStatement stmt = conn.prepareStatement(sql)) {
        stmt.setString(1, email);
        ResultSet rs = stmt.executeQuery();
        if (rs.next()) {
            return new User(
                rs.getInt("user_id"),
                rs.getString("name"),
                rs.getString("email"),
                rs.getString("password"),
                rs.getString("google_id"),
                rs.getString("auth_type"),
                rs.getString("role"),
                rs.getTimestamp("created_at")
            );
        }
        return null;
    }
}


    public User findByGoogleId(String googleId) throws SQLException {
        String sql = "SELECT * FROM Users WHERE google_id = ?";
        try (Connection conn = getConnection(); PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setString(1, googleId);
            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {
                User user = new User();
                user.setUserId(rs.getInt("user_id"));
                user.setName(rs.getString("name"));
                user.setEmail(rs.getString("email"));
                user.setPassword(rs.getString("password"));
                user.setGoogleId(rs.getString("google_id"));
                user.setAuthType(rs.getString("auth_type"));
                user.setRole(rs.getString("role"));
                user.setCreatedAt(rs.getTimestamp("created_at"));
                return user;
            }
            return null;
        }
    }

   
public User registerUser(String name, String email, String password) throws SQLException {
    String sql = "INSERT INTO Users (name, email, password, google_id, auth_type, role) VALUES (?, ?, ?, ?, ?, ?)";
    User user = null;

    try (Connection conn = DatabaseConnection.getConnection();
         PreparedStatement stmt = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS)) {

        // Gán giá trị vào câu lệnh SQL
        stmt.setString(1, name);
        stmt.setString(2, email);
        stmt.setString(3, password); // Nên mã hóa trước khi lưu　
        stmt.setString(4, null ); // google_id = NULL
        stmt.setString(5, "normal"); // auth_type = normal
        stmt.setString(6, "customer"); // role = customer

        // Thực thi lệnh INSERT
        int rowsAffected = stmt.executeUpdate();
        
        if (rowsAffected > 0) {
            try (ResultSet rs = stmt.getGeneratedKeys()) {
                if (rs.next()) {
                    int userId = rs.getInt(1); // Lấy user_id mới tạo
                    
                    // Tạo đối tượng User để trả về
                    user = new User();
                    user.setUserId(userId);
                    user.setName(name);
                    user.setEmail(email);
                    user.setPassword(password); // Chỉ lưu nếu cần (bảo mật nên mã hóa)
                    user.setGoogleId(null);
                    user.setAuthType("normal");
                    user.setRole("customer");
                }
            }
        }
    }

    return user; // Trả về User hoặc null nếu không thành công
}


    public User registerGoogleUser(String name, String email, String googleId) throws SQLException {
    String sql = "INSERT INTO Users (name, email, password, google_id, auth_type, role) VALUES (?, ?, ?, ?, ?, ?)";
    User user = null;

    try (Connection conn = DatabaseConnection.getConnection();
         PreparedStatement stmt = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS)) {

        // Gán giá trị vào câu lệnh SQL
        stmt.setString(1, name);
        stmt.setString(2, email);
        stmt.setString(3, null);  // Không lưu password (Google login)
        stmt.setString(4, googleId); // google_id từ Google OAuth
        stmt.setString(5, "google"); // auth_type = google
        stmt.setString(6, "customer"); // role = customer

        // Thực thi lệnh INSERT
        int rowsAffected = stmt.executeUpdate();

        if (rowsAffected > 0) {
            try (ResultSet rs = stmt.getGeneratedKeys()) {
                if (rs.next()) {
                    int userId = rs.getInt(1); // Lấy user_id mới tạo

                    // Tạo đối tượng User để trả về
                    user = new User();
                    user.setUserId(userId);
                    user.setName(name);
                    user.setEmail(email);
                    user.setPassword(null); // Không lưu password
                    user.setGoogleId(googleId);
                    user.setAuthType("google");
                    user.setRole("customer");
                }
            }
        }
    }

    return user; // Trả về User hoặc null nếu không thành công
}

}
