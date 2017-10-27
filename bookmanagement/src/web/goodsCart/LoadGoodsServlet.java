package web.goodsCart;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import daos.GoodsDao;
import daos.GoodsDaoImpl;
import entity.Goods;

public class LoadGoodsServlet extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html;cahrset=utf-8");
		response.setCharacterEncoding("utf-8");
		request.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		HttpSession session=request.getSession();
		String user_name=(String)session.getAttribute("username");
		 System.out.println("user_name:"+user_name);
	    //String user_name=request.getParameter("username");
	    if(user_name!=null){
	    System.out.println("user_name:"+user_name);
	    GoodsDao dao=new GoodsDaoImpl();
	    List<Goods> list=dao.findByUsername(user_name);
	    request.setAttribute("list", list);
	    System.out.println(list);
	    request.getRequestDispatcher("shopping_cart.jsp").forward(request, response);
	    }else{
	    	response.sendRedirect("my_account.jsp");
	    }
		out.flush();
		out.close();
	}


}
