import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class IncrementCartItem
 */
@WebServlet("/IncrementCartItem")
public class IncrementCartItem extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public IncrementCartItem() {
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
		PreparedStatement ps;
		ResultSet rs;
		int result=0;
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
			ps=con.prepareStatement("update acart set quantity=quantity+1,total=total+price where pid=? and username=?;");
			ps.setString(1,pid );
			ps.setString(2, username);
		result+=ps.executeUpdate();
		out.println("effected rows"+result);
		response.sendRedirect("Cart.jsp");
		}
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
