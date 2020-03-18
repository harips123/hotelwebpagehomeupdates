

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.sql.*;

/**
 * Servlet implementation class userdeleteservlet
 */
@WebServlet("/userdeleteservlet")
public class userdeleteservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public userdeleteservlet() {
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
		try
		{
		String s=(String)session.getAttribute("user_id");
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hotelwebpage","root","root");
		PreparedStatement ps1=null;
		ResultSet rs=null;
		String check="select count(*) from booking_details where user_id = ?";
		ps1=con.prepareStatement(check);
		ps1.setString(1, s);
		rs=ps1.executeQuery();
		rs.next();
		String Countrow = rs.getString(1);
		 System.out.println(Countrow);
		 if(Countrow.equals("0"))
		 {
		PreparedStatement ps= null;
		
		String query="delete from user_details where user_name = ?";
		ps=con.prepareStatement(query);
		ps.setString(1,s);
		ps.executeUpdate();
		response.sendRedirect("home.jsp");
		 }
		 else
		 {
			 response.sendRedirect("sorrypage.jsp");
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
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
