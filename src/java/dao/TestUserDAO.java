package dao ;
import java.sql.SQLException;
import model.User;

public class TestUserDAO {
    public static void main(String[] args) {
        UserDAO userDAO = new UserDAO();

        try {
          
            // Test tìm kiếm người dùng theo email
            System.out.println("=== Testing findByEmail ===");
            User foundUser = userDAO.findByEmail("nguyenvana@example.com");
            if (foundUser != null) {
                System.out.println("User found: " + foundUser.getName());
            } else {
                System.out.println("User not found");
            }


          
            // Test tìm kiếm người dùng theo Google ID
            System.out.println("=== Testing findByGoogleId ===");
            User foundGoogleUser = userDAO.findByGoogleId("GOOGLE123");
            if (foundGoogleUser != null) {
                System.out.println("Google User found: " + foundGoogleUser.getName());
            } else {
                System.out.println("Google User not found");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
