package market1.servlet;

import java.io.IOException;

import java.io.PrintWriter;
import java.util.ArrayList;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import market1.model.*;


@WebServlet(name = "AddToCartServlet", urlPatterns = "/add-to-cart")
public class AddToCartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");

        try (PrintWriter out = response.getWriter()) {
//        	out.print("add to cart servlet");

            ArrayList<Cart> cartList = new ArrayList<>();
            int id = Integer.parseInt(request.getParameter("id"));
            Cart cm = new Cart();
            cm.setId(id);
            cm.setQuantity(1);
            HttpSession session = request.getSession();
            ArrayList<Cart> cart_list = (ArrayList<Cart>) session.getAttribute("cart-list");
            if (cart_list == null) {
                cartList.add(cm);
                session.setAttribute("cart-list", cartList);
                response.sendRedirect("index.jsp");
            } else {
                cartList = cart_list;

                boolean exist = false;//this helps us to know whether the item exists or not
                for (Cart c : cart_list) {
                    if (c.getId() == id) {
                        exist = true;// it outputs true if the product exists
                        out.println("<h3 style='color:crimson; text-align: center'>Item Already in Cart. "
                        		+ "<a href='cart.jsp'>GO to Cart Page</a></h3>");
                        /*this is the message that the client gets when he or she adds a product for the second time,, 
                        and we are redirecting him back to the cart page 
                        but take not for the fist time he adds the product he will stay on the cart page 
                        but when he does it for the second time we will take him to the cart-list and the information about
                        this is on line 37*/
                        
                    }
                }

                if (!exist) {
                    cartList.add(cm);
                    response.sendRedirect("index.jsp");
                }
            }
        }
	}

}
