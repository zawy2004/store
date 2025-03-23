package servlet; 
import dao.ProductDAO;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;
import model.Brand;
import model.Product;

public class SearchControll extends HttpServlet {
     private ProductDAO productDAO;

    @Override
    public void init() throws ServletException {
        try {
            productDAO = new ProductDAO();
        } catch (SQLException e) {
            throw new ServletException("Cannot initialize ProductDAO", e);
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String searchStr = request.getParameter("search");
        List<Product> productList= productDAO.searchProducts(searchStr);
        List<Brand> bList= productDAO.getAllBrands();
        request.setAttribute("bList", bList);
         request.setAttribute("productList", productList);
        RequestDispatcher dispatcher = request.getRequestDispatcher("Product.jsp");
        dispatcher.forward(request, response);
    }
}


