

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
//import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class roomcancelationservlet
 */
@WebServlet("/roomcancelationservlet")
public class roomcancelationservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public roomcancelationservlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	String booking_id =request.getParameter("booking_id");
		//String hotel_id = request.getParameter("hotel_id");
	//	String user_id = request.getParameter("user_id");
	//	String reason_to_cancel = request.getParameter("reason_to_cancel");
		//String hotel_id= request.getParameter("hotel_id");
		
		
		try {
	
			Class.forName("com.mysql.jdbc.Driver");
			Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/hotelwebpage","root","root");
		//	PreparedStatement ps= null;
			PreparedStatement ps1=null;
			//ResultSet rs=null;
			String query="update booking_details  set is_cancelled = ?  where id = ? ";
			ps1=con.prepareStatement(query);
			ps1.setBoolean(1, true);
			ps1.setString(2, booking_id);
			
			ps1.executeUpdate();
			response.sendRedirect("viewallmybookings.jsp");
		}
		catch(Exception e)
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
