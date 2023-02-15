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
 * Servlet implementation class insertproduct
 */
@WebServlet("/insertproduct")
public class insertproduct extends GenericServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see GenericServlet#GenericServlet()
     */
    public insertproduct() {
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


String pname=request.getParameter("pname");
long price=Integer.parseInt(request.getParameter("price"));
String ptype=request.getParameter("ptype");
String pcountry=request.getParameter("pcountry");
String pmedium=request.getParameter("pmedium");
String psurface=request.getParameter("psurface");
String orientation=request.getParameter("orientation");
String size=request.getParameter("size");
String dimension=request.getParameter("dimension");
int quantity=Integer.parseInt(request.getParameter("quantity"));
int avalabilty=Integer.parseInt(request.getParameter("avalabilty"));


price=price*quantity;
		      out.println("Here2");
		      con = DriverManager.getConnection("jdbc:mysql://localhost:3306/artbizblog","root","root");
		      out.println("connection");
		      PreparedStatement ps1 = con.prepareStatement("insert into productdetails values ( default,?,?,?,?,?,?,?,?,?,?,?)");
		      out.println("inserted");
		  	ps1.setString(1,pname);
		  	ps1.setLong(2,price);
		  	ps1.setString(3,ptype);
		  	ps1.setString(4,pcountry);
		  	ps1.setString(5,pmedium);
		  	ps1.setString(6,psurface);
		  	ps1.setString(7,orientation);
		  	ps1.setString(8,size);
			ps1.setString(9,dimension);
		  	ps1.setInt(10,quantity);
		  	ps1.setInt(11,avalabilty);
		      result +=ps1.executeUpdate();
		      out.println("Here6");
		   out.println("Effected Rows:"+result);
		    RequestDispatcher rd=request.getRequestDispatcher("admininsert.jsp");
		     rd.forward(request, response);
		   }
	    catch(Exception e)
	    		{e.printStackTrace();
	    		}
	}

}

