import java.sql.*;

import java.io.PrintWriter;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class AddToCart
 */
@WebServlet("/AddToCart")
public class AddToCart extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddToCart() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
	    //out.println("here");
	    try
	   {
	      Class.forName("com.mysql.jdbc.Driver");
	    }
	    catch(ClassNotFoundException e)
	    { 
	      e.printStackTrace();
	    }
	  out.println("here");
	    HttpSession session = request.getSession();	       
		String username=(String)session.getAttribute("username");
		
	       String pname = request.getParameter("pname");
	       int quantity = Integer.parseInt(request.getParameter("quantity"));
	       int avalabilty = Integer.parseInt(request.getParameter("avalabilty"));
	       //String size=request.getParameter("size");
	       
	       //String time = request.getParameter("time") ;
	      // String cardname=request.getParameter("a");
	       //int cardnumber = Integer.parseInt(request.getParameter("b")) ;
	       //int expirym = Integer.parseInt(request.getParameter("c")) ;
	       //int expiryy = Integer.parseInt(request.getParameter("d")) ;
	      // int cvv = Integer.parseInt(request.getParameter("e")) ;
           
	        try{
	            
	            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/artbizblog","root","root");
	            PreparedStatement s = con.prepareStatement("select * from productdetails where pname=? and quantity=? and avalabilty=? ");
	           s.setString(1,pname);
	           s.setInt(2,quantity);
	           s.setInt(3,avalabilty);
	          
	            ResultSet rs=s.executeQuery();
	            out.println("here1");
	            if(rs.next()) {
	            	 out.println("here2");
	            	long price=rs.getInt("price");
	            	int pid=rs.getInt("pid");
	            	
	            	long total=price;
	            	PreparedStatement s2=con.prepareStatement("insert into acart values(?,?,?,?,?,?)");
	            	s2.setString(1,username);
	            	s2.setInt(2, pid);
	            	s2.setString(3, pname);
	            	s2.setLong(4,price);
	            	s2.setInt(5, quantity);
	            	s2.setLong(6,total);
	            	
	            	
	            	 s2.executeUpdate();
	 	            
	 	           
	            	 response.sendRedirect("Cart.jsp");
	            }
	          
	           
	           
	            
	        }catch(Exception e){
	            out.println(e);
	        }}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
