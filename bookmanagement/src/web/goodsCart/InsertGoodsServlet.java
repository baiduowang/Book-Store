package web.goodsCart;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import service.GoodsService;

public class InsertGoodsServlet extends HttpServlet {
	public void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html;cahrset=utf-8");
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		
		String goodsId=request.getParameter("bookId");
		
		HttpSession session=request.getSession();
		String username=(String) session.getAttribute("username");
		if(goodsId!=null){
		if(username!=null){
			GoodsService service=new GoodsService();
		int a=service.insertGoods(goodsId, username);
		System.out.println("a:"+a);
		System.out.println("Goods:"+goodsId);
		if(a!=0){
			out.println("插入成功");
			request.setAttribute("msg_state", "插入成功");
			request.setAttribute("id2", goodsId);
			String aa=(String)request.getAttribute("id2");
			System.out.println(aa);
			request.getRequestDispatcher("bookDetails.jsp").forward(request, response);
		}
		}else{
			out.print("用户不存在");
		}
		}else{
			out.print("书名未获取");
		}
		out.flush();
		out.close();
	}

}
