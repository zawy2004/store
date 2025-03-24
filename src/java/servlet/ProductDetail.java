

package servlet;

import dao.ProductDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;
import model.Category;
import model.Product;
import model.ProductImage;


/**
 *
 * @author gia huy
 */
public class ProductDetail extends HttpServlet {

        private static final long serialVersionUID = 1L;

        @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        String productIdStr = request.getParameter("productId");
        String quantity = request.getParameter("quantity");
        if (productIdStr != null) {
            try {
                int productId = Integer.parseInt(productIdStr);
                ProductDAO productDAO = new ProductDAO();
              
               
                // Lấy thông tin sản phẩm
                Product product = productDAO.getProductById(productId);
                // Lấy danh sách ảnh sản phẩm
                List<ProductImage> productImages = productDAO.getProductImages(productId);
                // Lấy danh sách chi tiết sản phẩm
                List<model.ProductDetail> productDetails = productDAO.getProductDetails(productId);
                
                Category ca = productDAO.getCategories(product.getCategoryId());

                if (product != null) {
                    request.setAttribute("quantity",quantity);
                    request.setAttribute("ca", ca);
                    request.setAttribute("product", product);
                    request.setAttribute("productImages", productImages);
                    request.setAttribute("productDetails", productDetails);
                    request.getRequestDispatcher("ProductDetail.jsp").forward(request, response);
                } else {
                    response.sendRedirect("404.jsp"); // Chuyển hướng nếu không tìm thấy sản phẩm
                }
            } catch (NumberFormatException | SQLException e) {
                response.sendRedirect("error.jsp"); // Xử lý lỗi
            }
        } else {
            response.sendRedirect("index.jsp");
        }
    }
}