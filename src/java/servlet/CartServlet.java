package servlet;

import dao.ProductDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.Cart;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;
import model.Product;
import model.User;


public class CartServlet extends HttpServlet {
    private ProductDAO productDAO;
    private static final long serialVersionUID = 1L;
    @Override
    public void init() throws ServletException {
        try {
            productDAO = new ProductDAO();
        } catch (SQLException e) {
            throw new ServletException(e);
        }
    }

   @Override
protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    // Lấy user từ session
    HttpSession session = request.getSession(false);
    User user = (session != null) ? (User) session.getAttribute("user") : null;
    
    if (user == null) {
        response.sendRedirect("Login.jsp");
        return; // Important - return immediately after redirect
    }
    int userId = user.getUserId();
    
    // Check if this is an "add to cart" operation or just a "view cart" operation
    String productIdStr = request.getParameter("productId");
    String quantityStr = request.getParameter("quantity");
    
    // If productId and quantity parameters exist, treat as an "add to cart" operation
    if (productIdStr != null && quantityStr != null && !productIdStr.isEmpty() && !quantityStr.isEmpty()) {
        int productId, quantity;
        try {
            productId = Integer.parseInt(productIdStr);
            quantity = Integer.parseInt(quantityStr);
            System.out.println("User ID: " + userId + ", Product ID: " + productId + ", Quantity: " + quantity);
        } catch (NumberFormatException e) {
            response.sendRedirect("cart.jsp?error=Dữ liệu không hợp lệ");
            return;
        }
        
        if (quantity <= 0) {
            response.sendRedirect("cart.jsp?error=Số lượng không hợp lệ");
            return;
        }
        
        try {
            boolean success = productDAO.addToCart(userId, productId, quantity);
            if (!success) {
                response.sendRedirect("cart.jsp?error=Lỗi khi thêm sản phẩm vào giỏ hàng");
                return;
            }
            // Don't redirect to CartServlet - we'll just continue processing below
        } catch (SQLException e) {
            e.printStackTrace();
            response.sendRedirect("cart.jsp?error=Lỗi khi thêm sản phẩm vào giỏ hàng");
            return;
        }
    }
    
    // For both "add to cart" and "view cart" operations, display the cart
    try {
        List<Integer> productIds = productDAO.getProductIdsInCart(userId);
        List<Product> productList = productDAO.getProductsByCart(productIds);
        List<Cart> CartList = productDAO.getCartByUserId(userId);
        double total = productDAO.calculateTotalPrice(userId);
        request.setAttribute("totalPrice", total);
        request.setAttribute("productList", productList);
        request.setAttribute("CartList", CartList);
        request.getRequestDispatcher("cart.jsp").forward(request, response);
    } catch (SQLException e) {
        e.printStackTrace();
        response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Lỗi khi lấy sản phẩm trong giỏ hàng.");
    }
}
     // Thêm sản phẩm vào giỏ hàng rồi hiển thị danh sách



   @Override
protected void doDelete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    String productIdStr = request.getParameter("productId");

    if (productIdStr == null || productIdStr.isEmpty()) {
        response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Thiếu productId.");
        return;
    }

    try {
        int productId = Integer.parseInt(productIdStr);
        if (productDAO.removeAllByProductId(productId)) {
            response.setStatus(HttpServletResponse.SC_NO_CONTENT); // Xóa thành công
        } else {
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Lỗi khi xóa sản phẩm khỏi giỏ hàng.");
        }
    } catch (NumberFormatException e) {
        response.sendError(HttpServletResponse.SC_BAD_REQUEST, "ID sản phẩm không hợp lệ.");
    } catch (SQLException e) {
        e.printStackTrace();
        response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Lỗi khi xóa sản phẩm khỏi giỏ hàng.");
    }
}

}
