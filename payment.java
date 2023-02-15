import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.GenericServlet;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;

/**
 * Servlet implementation class payment
 */
@WebServlet("/payment")
public class payment extends GenericServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see GenericServlet#GenericServlet()
     */
    public payment() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Servlet#service(ServletRequest request, ServletResponse response)
	 */
	public void service(ServletRequest request, ServletResponse response) throws ServletException, IOException {
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
	    	 String street=request.getParameter("street");
		      String city=request.getParameter("city");


		      String state=request.getParameter("state");
		 
		      String zipcode=request.getParameter("zipcode");

		      String name=request.getParameter("name");
		      String card_number=request.getParameter("card_number");


		      String card_type=request.getParameter("card_type");
		 
		      String exp_date=request.getParameter("exp_date");

		      String cvv=request.getParameter("cvv");

		      
		      
		      
		      out.println("Here2");
		      con = DriverManager.getConnection("jdbc:mysql://localhost:3306/artbizblog","root","root");
		     
		      ps = con.prepareStatement("insert into  payment values(?,?,?,?,?,?,?,?,?);");
		      ps.setString(1,street);
		      ps.setString(2,city);
		      ps.setString(3, state);
		      ps.setString(4, zipcode);		 
		      ps.setString(5, name);
		      ps.setString(6, card_number);
		      ps.setString(7, card_type);
		      ps.setString(8,exp_date);
		      ps.setString(9,cvv);
			     

		     
		     
		      
		      
		      result +=ps.executeUpdate();
		   // out.println("Effected Rows:"+result);
		    RequestDispatcher rd=request.getRequestDispatcher("navbar.jsp");
		     rd.forward(request, response);
		   }
	    catch(Exception e)
	    		{e.printStackTrace();
	    		}
	    		}
	}