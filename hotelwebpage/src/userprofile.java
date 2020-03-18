

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.sql.*;

/**
 * Servlet implementation class userprofile
 */
@WebServlet("/userprofile")
public class userprofile extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public userprofile() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		HttpSession session = request.getSession();
	//	PrintWriter out = response.getWriter();
		try
		 {
		
			String s=(String)session.getAttribute("user_name");
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hotelwebpage","root","root");
			PreparedStatement ps= null;
			ResultSet rs=null;
			String query="select distinct name,contact_number from user_details where user_name = ?";
			ps=con.prepareStatement(query);
			ps.setString(1,s);
			rs=ps.executeQuery();
			while(rs.next())  
		{
				//String u_name=rs.getString(1);
				// String number=rs.getString(2);	
				//  out.println("name: "+u_name);
				 // out.println("contact_number: "+number);	
				 
				
		}
		}
		 catch (Exception e)
		 {
			 e.printStackTrace();
		 } 
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
              
	
	}
}
		
