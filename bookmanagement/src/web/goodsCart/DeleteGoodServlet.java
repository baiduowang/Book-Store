package web.goodsCart;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import daos.GoodsDao;
import daos.GoodsDaoImpl;

public class DeleteGoodServlet extends HttpServlet {

	public void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html;cahrset=utf-8");
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		HttpSession session=request.getSession();
        String username=(String)session.getAttribute("username");
        if(username!=null){
		String goodsname=request.getParameter("bookname");
			if(goodsname!=null){
	        GoodsDao dao=new GoodsDaoImpl();
	        int retu=dao.deleteGoods(username,goodsname);
	        out.println(retu);
	         if(retu!=0){
	        	 out.println(goodsname);
	        	 out.println("aa");
	              response.sendRedirect("loadgoods");
	         }
			}else{
				out.println("书不存在");
			}
        }else{
            out.println("用户不存在");
        }
		out.flush();
		out.close();
	}

}
