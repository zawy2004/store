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

    public void createUser(User user) throws SQLException {
        String sql = "INSERT INTO Users (name, email, google_id, auth_type, role, created_at) " +
                    "VALUES (?, ?, ?, ?, ?, ?)";
        try (Connection conn = getConnection(); PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setString(1, user.getName());
            stmt.setString(2, user.getEmail());
            stmt.setString(3, user.getGoogleId());
            stmt.setString(4, user.getAuthType());
            stmt.setString(5, user.getRole());
            stmt.setTimestamp(6, new Timestamp(user.getCreatedAt().getTime()));
            stmt.executeUpdate();
        }
    }
    // Hàm registerUser để thêm user vào database
    public User registerUser(String name, String email, String password) throws SQLException {
        User user = new User();
        user.setName(name);
        user.setEmail(email);
        user.setPassword(password); // Password plain text
        user.setGoogleId(null);     // Không dùng Google
        user.setAuthType("normal"); // Đăng ký kiểu normal
        user.setRole("customer");   // Mặc định là customer
       

        // Gọi UserDAO để thêm vào database
        String sql = "INSERT INTO Users (name, email, password, google_id, auth_type, role) " +
                     "VALUES (?, ?, ?, ?, ?, ?)";
        try (Connection conn = DatabaseConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS)) {
            stmt.setString(1, user.getName());
            stmt.setString(2, user.getEmail());
            stmt.setString(3, user.getPassword());
            stmt.setString(4, user.getGoogleId()); // NULL
            stmt.setString(5, user.getAuthType());
            stmt.setString(6, user.getRole());
          

            int rowsAffected = stmt.executeUpdate();
            if (rowsAffected > 0) {
                // Lấy user_id vừa tạo
                ResultSet rs = stmt.getGeneratedKeys();
                if (rs.next()) {
                   
                }
            }
        }

        return user;
    }
    public User registerGoogleUser(String name, String email, String ggid) throws SQLException {
        User user = new User();
        user.setName(name);
        user.setEmail(email);
        user.setPassword(null); // Password plain text
        user.setGoogleId(ggid);     // Không dùng Google
        user.setAuthType("normal"); // Đăng ký kiểu normal
        user.setRole("customer");   // Mặc định là customer
       

        // Gọi UserDAO để thêm vào database
        String sql = "INSERT INTO Users (name, email, password, google_id, auth_type, role) " +
                     "VALUES (?, ?, ?, ?, ?, ?)";
        try (Connection conn = DatabaseConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS)) {
            stmt.setString(1, user.getName());
            stmt.setString(2, user.getEmail());
            stmt.setString(3, user.getPassword());
            stmt.setString(4, user.getGoogleId()); // NULL
            stmt.setString(5, user.getAuthType());
            stmt.setString(6, user.getRole());
          

            int rowsAffected = stmt.executeUpdate();
            if (rowsAffected > 0) {
                // Lấy user_id vừa tạo
                ResultSet rs = stmt.getGeneratedKeys();
                if (rs.next()) {
                   
                }
            }
        }

        return user;
    }
  
}
