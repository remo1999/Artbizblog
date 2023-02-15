

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RProducts
 */
@WebServlet("/removeproduct")
public class removeproduct extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public removeproduct() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		response.setContentType("text/plain");
		PrintWriter out=response.getWriter();
		Connection con ;
		PreparedStatement ps;
		int rs;
	
		try {
			Class.forName("com.mysql.dbc.Driver");
		}
		catch(ClassNotFoundException e) {
			e.printStackTrace();
		}
		
		try {
			String pid=request.getParameter("pid");
			String pname=request.getParameter("pname");
			
			

			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/epicsnacksproject","root","root");
			PreparedStatement pst=con.prepareStatement("delete from product where pid=? and pname=?;");
			pst.setString(1,pid);
			pst.setString(2,pname);
			
			
			pst.executeUpdate();
		     
			System.out.println("Data is Removed");
			((HttpServletResponse) response).sendRedirect("productdisplay.jsp");
		}
	catch(Exception e) {
	e.printStackTrace();

	}
}
}

