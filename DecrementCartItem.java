import java.sql.*;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.io.PrintWriter;
/**
 * Servlet implementation class DecrementCartItem
 */
@WebServlet("/DecrementCartItem")
public class DecrementCartItem extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DecrementCartItem() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		response.setContentType("text/plain");
		PrintWriter out=response.getWriter();
		Connection con;
		PreparedStatement ps,ps1,ps2;
		ResultSet rs;
		int result=0,result1=0;
		try {
			Class.forName("com.mysql.jdbc.Driver");
		}
		catch(ClassNotFoundException e) {
			e.printStackTrace();
		}
		try {
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/artbizblog","root","root");
			out.println("all ok");
			   HttpSession session = request.getSession(false);
			   String username=(String)session.getAttribute("username");
				  out.println(username);
			String pid=request.getParameter("t1");
			out.println(pid);
			ps1=con.prepareStatement("select quantity from acart where pid=? and username=?;");
			ps1.setString(1,pid);
			ps1.setString(2,username);
			rs=ps1.executeQuery();
			while(rs.next()) {
			int itemquantity=Integer.parseInt(rs.getString("quantity"));
			out.println(itemquantity);
			if(itemquantity==1) {
				ps2=con.prepareStatement("delete from fcart where pid=? and username=?;");
				ps2.setString(1,pid);
				ps2.setString(2, username);
				result1 +=ps2.executeUpdate();
				out.println("effected rows"+result1);
				response.sendRedirect("Cart.jsp");
	}
			else {
			ps=con.prepareStatement("update acart set quantity=quantity-1,total=total-price where pid=? and username=?;");
			ps.setString(1,pid );
			ps.setString(2,username);
		result+=ps.executeUpdate();
		out.println("effected rows"+result);
		response.sendRedirect("Cart.jsp");
		}}}
		catch(Exception e) {
			e.printStackTrace();
		}
		}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
