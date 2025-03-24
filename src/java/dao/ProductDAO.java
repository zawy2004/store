package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;
import model.Brand;
import model.Category;
import model.Product;
import model.ProductDetail;
import model.ProductImage;
import model.Cart;
public class ProductDAO {

    private Connection conn;

    public ProductDAO() throws SQLException {
        conn = DatabaseConnection.getConnection(); // Lấy connection từ DatabaseConnection
    }

    public List<Product> getAllProducts() {
        List<Product> products = new ArrayList<>();
        String sql = "SELECT * FROM Products";

        try (PreparedStatement ps = conn.prepareStatement(sql); ResultSet rs = ps.executeQuery()) {

            while (rs.next()) {
                Product product = new Product(
                        rs.getInt("product_id"), // ID sản phẩm
                        rs.getString("name"), // Tên sản phẩm
                        rs.getString("description"), // Mô tả ngắn
                        rs.getDouble("price"), // Giá sản phẩm
                        rs.getInt("stock_quantity"), // Số lượng kho
                        rs.getInt("category_id"), // ID danh mục
                        rs.getInt("brand_id"), // ID thương hiệu
                        rs.getTimestamp("created_at"),
                        rs.getString("image_url")// Ngày tạo
                );
                products.add(product);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return products;
    }

    public Product getProductById(int productId) {
        String sql = "SELECT * FROM Products WHERE product_id = ?";
        try (PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setInt(1, productId);
            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    return new Product(
                            rs.getInt("product_id"), // ID sản phẩm
                            rs.getString("name"), // Tên sản phẩm
                            rs.getString("description"), // Mô tả ngắn
                            rs.getDouble("price"), // Giá sản phẩm
                            rs.getInt("stock_quantity"), // Số lượng kho
                            rs.getInt("category_id"), // ID danh mục
                            rs.getInt("brand_id"), // ID thương hiệu
                            rs.getTimestamp("created_at"),
                            rs.getString("image_url")// Ngày tạo
                    );

                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public List<ProductImage> getProductImages(int productId) {
        List<ProductImage> images = new ArrayList<>();
        String sql = "SELECT * FROM ProductImages WHERE product_id = ?";

        try (PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setInt(1, productId);
            try (ResultSet rs = ps.executeQuery()) {
                while (rs.next()) {
                    ProductImage image = new ProductImage(
                            rs.getInt("image_id"),
                            rs.getInt("product_id"),
                            rs.getString("image_url"),
                            rs.getBoolean("is_primary"),
                            rs.getTimestamp("uploaded_at")
                    );
                    images.add(image);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return images;
    }

    public List<ProductDetail> getProductDetails(int productId) {
    List<ProductDetail> details = new ArrayList<>();
    String sql = "SELECT * FROM ProductDetails WHERE product_id = ?";

    try (PreparedStatement ps = conn.prepareStatement(sql)) {
        ps.setInt(1, productId);
        try (ResultSet rs = ps.executeQuery()) {
            while (rs.next()) {
                ProductDetail detail = new ProductDetail(
                        rs.getInt("detail_id"),
                        rs.getInt("product_id"),
                        rs.getString("size"),
                        rs.getString("content"),
                        rs.getString("material"),
                        rs.getDouble("weight"),
                        rs.getString("color"),
                        rs.getString("language_code")
                );
                details.add(detail);
            }
        }
    } catch (SQLException e) {
        e.printStackTrace();
    }
    return details;
}


    public Category getCategories(int categoryId) {

        String sql = "SELECT category_id, name FROM Categories WHERE category_id = ?"; // Đổi lại tên bảng nếu cần
        try (PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setInt(1, categoryId);
            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    return new Category(rs.getInt("category_id"), rs.getString("name"));

                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
    public List<Category> getAllCategories() {
    List<Category> categoryList = new ArrayList<>();
    String sql = "SELECT category_id, name FROM Categories"; // Đảm bảo tên bảng đúng

    try (PreparedStatement ps = conn.prepareStatement(sql);
         ResultSet rs = ps.executeQuery()) {

        while (rs.next()) {
            Category category = new Category(rs.getInt("category_id"), rs.getString("name"));
            categoryList.add(category);
        }
    } catch (SQLException e) {
        e.printStackTrace();
    }
    return categoryList;
}



        public Product getProductBycaId(int Brandid) {
        String sql = "SELECT * FROM Products WHERE brand_id = ?";
        try (PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setInt(1, Brandid);
            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    return new Product(
                            rs.getInt("product_id"), // ID sản phẩm
                            rs.getString("name"), // Tên sản phẩm
                            rs.getString("description"), // Mô tả ngắn
                            rs.getDouble("price"), // Giá sản phẩm
                            rs.getInt("stock_quantity"), // Số lượng kho
                            rs.getInt("category_id"), // ID danh mục
                            rs.getInt("brand_id"), // ID thương hiệu
                            rs.getTimestamp("created_at"),
                            rs.getString("image_url")// Ngày tạo
                    );

                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
        public List<Brand> getAllBrands() {
        List<Brand> brands = new ArrayList<>();
        String sql = "SELECT brand_id, brand_name, description FROM Brands"; // Đổi lại tên bảng nếu cần

        try (PreparedStatement ps = conn.prepareStatement(sql);
             ResultSet rs = ps.executeQuery()) {

            while (rs.next()) {
                brands.add(new Brand(
                    rs.getInt("brand_id"),
                    rs.getString("brand_name"),
                    rs.getString("description")
                ));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return brands;
    }
        public List<Product> getProductsByBrandId(int brandId) {
    List<Product> products = new ArrayList<>();
    String sql = "SELECT * FROM Products WHERE brand_id = ?";

    try (PreparedStatement ps = conn.prepareStatement(sql)) {
        ps.setInt(1, brandId);
        try (ResultSet rs = ps.executeQuery()) {
            while (rs.next()) {
                products.add(new Product(
                        rs.getInt("product_id"), // ID sản phẩm
                        rs.getString("name"), // Tên sản phẩm
                        rs.getString("description"), // Mô tả ngắn
                        rs.getDouble("price"), // Giá sản phẩm
                        rs.getInt("stock_quantity"), // Số lượng kho
                        rs.getInt("category_id"), // ID danh mục
                        rs.getInt("brand_id"), // ID thương hiệu
                        rs.getTimestamp("created_at"), // Ngày tạo
                        rs.getString("image_url") // Ảnh sản phẩm
                ));
            }
        }
    } catch (SQLException e) {
        e.printStackTrace();
    }

    return products;
}
     public List<Product> searchProducts(String keyword) {
    List<Product> products = new ArrayList<>();
    String sql = "SELECT * FROM Products WHERE name LIKE ? OR description LIKE ?";

    try (PreparedStatement ps = conn.prepareStatement(sql)) {
        ps.setString(1, "%" + keyword + "%");
        ps.setString(2, "%" + keyword + "%");

        try (ResultSet rs = ps.executeQuery()) {
            while (rs.next()) {
                products.add(new Product(
                        rs.getInt("product_id"), // ID sản phẩm
                        rs.getString("name"), // Tên sản phẩm
                        rs.getString("description"), // Mô tả ngắn
                        rs.getDouble("price"), // Giá sản phẩm
                        rs.getInt("stock_quantity"), // Số lượng kho
                        rs.getInt("category_id"), // ID danh mục
                        rs.getInt("brand_id"), // ID thương hiệu
                        rs.getTimestamp("created_at"), // Ngày tạo
                        rs.getString("image_url") // Ảnh sản phẩm
                ));
            }
        }
    } catch (SQLException e) {
        e.printStackTrace();
    }

    return products;
    
}
     
       public List<Cart> getCartByUserId(int userId) throws SQLException {
        List<Cart> cartList = new ArrayList<>();
        String sql = "SELECT * FROM Cart WHERE user_id = ?";
        
        try (Connection conn = DatabaseConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            
            stmt.setInt(1, userId);
            ResultSet rs = stmt.executeQuery();
            
            while (rs.next()) {
                Cart cart = new Cart(
                    rs.getInt("cart_id"),
                    rs.getInt("user_id"),
                    rs.getInt("product_id"),
                    rs.getInt("quantity"),
                    rs.getTimestamp("added_at")
                );
                cartList.add(cart);
            }
        }
        return cartList;
    }
    public boolean addToCart(int userId, int productId, int quantity) throws SQLException {
    System.out.println("Checking database connection...");
    if (conn == null) {
        System.out.println("Database connection is NULL!");
        return false;
    }

    String checkSql = "SELECT quantity FROM Cart WHERE user_id = ? AND product_id = ?";
    String updateSql = "UPDATE Cart SET quantity = quantity + ? WHERE user_id = ? AND product_id = ?";
    String insertSql = "INSERT INTO Cart (user_id, product_id, quantity) VALUES (?, ?, ?)";

    try (PreparedStatement checkStmt = conn.prepareStatement(checkSql)) {
        checkStmt.setInt(1, userId);
        checkStmt.setInt(2, productId);
        ResultSet rs = checkStmt.executeQuery();

        if (rs.next()) { // Nếu sản phẩm đã tồn tại trong giỏ hàng, cập nhật số lượng
            System.out.println("Sản phẩm đã tồn tại trong giỏ, cập nhật số lượng...");
            try (PreparedStatement updateStmt = conn.prepareStatement(updateSql)) {
                updateStmt.setInt(1, quantity);
                updateStmt.setInt(2, userId);
                updateStmt.setInt(3, productId);
                return updateStmt.executeUpdate() > 0;
            }
        } else { // Nếu sản phẩm chưa có, thêm mới
            System.out.println("Sản phẩm chưa có, thêm mới vào giỏ...");
            try (PreparedStatement insertStmt = conn.prepareStatement(insertSql)) {
                insertStmt.setInt(1, userId);
                insertStmt.setInt(2, productId);
                insertStmt.setInt(3, quantity);
                return insertStmt.executeUpdate() > 0;
            }
        }
    }
}



    public boolean removeAllByProductId(int productId) throws SQLException {
    String sql = "DELETE FROM Cart WHERE product_id = ?";
    
    try (Connection conn = DatabaseConnection.getConnection();
         PreparedStatement stmt = conn.prepareStatement(sql)) {
        stmt.setInt(1, productId);
        return stmt.executeUpdate() > 0;
    }
}

         // Lấy danh sách sản phẩm dựa trên danh sách productId trong giỏ hàng
public List<Product> getProductsByCart(List<Integer> productIds) throws SQLException {
    List<Product> products = new ArrayList<>();
    
    if (productIds == null || productIds.isEmpty()) {
        return products; // Trả về danh sách rỗng nếu không có sản phẩm nào
    }

    String sql = "SELECT * FROM Products WHERE product_id IN (" +
                 productIds.stream().map(id -> "?").collect(Collectors.joining(",")) + ")";

    try (PreparedStatement ps = conn.prepareStatement(sql)) {
        for (int i = 0; i < productIds.size(); i++) {
            ps.setInt(i + 1, productIds.get(i));
        }

        try (ResultSet rs = ps.executeQuery()) {
            while (rs.next()) {
                products.add(new Product(
                        rs.getInt("product_id"), // Sửa tên cột cho đúng
                        rs.getString("name"),
                        rs.getString("description"),
                        rs.getDouble("price"),
                        rs.getInt("stock_quantity"),
                        rs.getInt("category_id"),
                        rs.getInt("brand_id"),
                        rs.getDate("created_at"),
                        rs.getString("image_url")
                ));
            }
        }
    }
    return products;
}

    public List<Integer> getProductIdsInCart(int userId) throws SQLException {
    List<Integer> productIds = new ArrayList<>();
    
    String sql = "SELECT product_id FROM Cart WHERE user_id = ?";
    
    try (PreparedStatement ps = conn.prepareStatement(sql)) {
        ps.setInt(1, userId);
        try (ResultSet rs = ps.executeQuery()) {
            while (rs.next()) {
                productIds.add(rs.getInt("product_id")); // Sửa "productId" thành "product_id"
            }
        }
    }
    
    return productIds;
}
    public double calculateTotalPrice(int userId) throws SQLException {
    double totalPrice = 0.0;

    String sql = "SELECT SUM(p.price * c.quantity) AS total_price " +
                 "FROM Cart c " +
                 "JOIN Products p ON c.product_id = p.product_id " +
                 "WHERE c.user_id = ?";

    try (PreparedStatement ps = conn.prepareStatement(sql)) {
        ps.setInt(1, userId);
        try (ResultSet rs = ps.executeQuery()) {
            if (rs.next()) {
                totalPrice = rs.getDouble("total_price");
            }
        }
    }
    return totalPrice;
}



   
    

}
    
    
   



    


