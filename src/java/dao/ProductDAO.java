package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import model.Brand;
import model.Category;
import model.Product;
import model.ProductDetail;
import model.ProductImage;

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


}
    
    
   



    


