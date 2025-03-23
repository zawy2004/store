package model;


import java.util.Date;

public class User {
    private int userId;
    private String name;
    private String email;
    private String password; // null nếu dùng Google
    private String googleId; // null nếu dùng email/password
    private String authType; // "normal" hoặc "google"
    private String role; // "admin" hoặc "customer"
    private Date createdAt;
     
    
    public User() {
    }

    public User(int userId, String name, String email, String password, String googleId, String authType, String role, Date createdAt) {
        this.userId = userId;
        this.name = name;
        this.email = email;
        this.password = password;
        this.googleId = googleId;
        this.authType = authType;
        this.role = role;
        this.createdAt = createdAt;
    }

   
// Getters và Setters
    public int getUserId() { return userId; }
    public void setUserId(int userId) { this.userId = userId; }
    public String getName() { return name; }
    public void setName(String name) { this.name = name; }
    public String getEmail() { return email; }
    public void setEmail(String email) { this.email = email; }
    public String getPassword() { return password; }
    public void setPassword(String password) { this.password = password; }
    public String getGoogleId() { return googleId; }
    public void setGoogleId(String googleId) { this.googleId = googleId; }
    public String getAuthType() { return authType; }
    public void setAuthType(String authType) { this.authType = authType; }
    public String getRole() { return role; }
    public void setRole(String role) { this.role = role; }
    public Date getCreatedAt() { return createdAt; }
    public void setCreatedAt(Date createdAt) { this.createdAt = createdAt; }
}