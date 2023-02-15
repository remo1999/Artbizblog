
import java.sql.*;


import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.GenericServlet;
import javax.servlet.RequestDispatcher;
import javax.servlet.Servlet;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;

/**
 * Servlet implementation class register
 */
@WebServlet("/register")
public class register extends GenericServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see GenericServlet#GenericServlet()
     */
    public register() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Servlet#service(ServletRequest request, ServletResponse response)
	 */
	public void service(ServletRequest request, ServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/plain");
	      PrintWriter out = response.getWriter();
	   Connection con;
	   PreparedStatement ps;
	   ResultSet rs;
	   int result=0;
	   out.println("Here");
	    try
	   {
	      Class.forName("com.mysql.jdbc.Driver");
	    }
	    catch(ClassNotFoundException e)
	    { 
	      e.printStackTrace();
	    }
	    try
		   {
	    	out.println("Here1");
		      String username=request.getParameter("username");
		      String emailid=request.getParameter("emailid");
		      String password=request.getParameter("password");
		      
		      out.println("Here2");
		      con = DriverManager.getConnection("jdbc:mysql://localhost:3306/artbizblog","root","root");
		      out.println("Here2");
		      ps = con.prepareStatement("insert into  users values(?,?,?);");
		      out.println("Here4");
		      ps.setString(1, username);
		      ps.setString(2, emailid);
		      ps.setString(3, password);
		      out.println("Here5");
		      
		      result +=ps.executeUpdate();
		      out.println("Here6");
		   out.println("Effected Rows:"+result);
		    RequestDispatcher rd=request.getRequestDispatcher("login.jsp");
		     rd.forward(request, response);
		   }
	    catch(Exception e)
	    		{e.printStackTrace();
	    		}
	}

}
