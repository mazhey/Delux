package shoppingCartLogin;

import java.io.IOException;

import javax.persistence.EntityManager;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Product;


/**
 * Servlet implementation class TheShoppingCart
 */
@WebServlet("/TheShoppingCart")
public class TheShoppingCart extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TheShoppingCart() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processShoppingCart(request,response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processShoppingCart(request,response);
	}
	private void processShoppingCart(HttpServletRequest request, HttpServletResponse response)
	{
		EntityManager em = shoppingCartLogin.DBUtil.getEmFactory().createEntityManager();
		String strProductId = 	request.getParameter("productId");
		Long productid = Long.parseLong(strProductId);
	    
		
		
		ProductDB productdb= new ProductDB();
		Product selectedProduct = productdb.selectProductID(productid );
		//selectedProduct.getProductDate();
		//selectedProduct.getProductDescription();
		//selectedProduct.getProductPrice();
		//selectedProduct.getProductName();
		//selectedProduct.getProductId();

		request.setAttribute("selectedProduct", selectedProduct);
		
		try {
			getServletContext().getRequestDispatcher("/InShoppingCart.jsp").forward(request, response);
		} catch (ServletException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
