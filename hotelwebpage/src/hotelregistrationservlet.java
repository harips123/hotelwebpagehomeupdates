

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
/**
 * Servlet implementation class hotelregistrationservlet
 */
@WebServlet("/hotelregistrationservlet")
public class hotelregistrationservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public hotelregistrationservlet() {
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
		String hotel_name = request.getParameter("hotel_name");
		String email = request.getParameter("email");
		String user_name = request.getParameter("user_name");
		String passwords = request.getParameter("passwords");
		String star_classification = request.getParameter("star_classification");
		String state = request.getParameter("state"); 
		String contact_number = request.getParameter("contact_number");
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hotelwebpage","root","root");
			PreparedStatement ps1=null;
			ResultSet rs=null;
			String query="select count(*) from hotel_details where email = ?";
			ps1=con.prepareStatement(query);
			ps1.setString(1, email);
			rs=ps1.executeQuery();
			rs.next();
			String Countrow = rs.getString(1);
			 System.out.println(Countrow);
			 if(Countrow.equals("0"))
			 {
				 
			PreparedStatement ps= (PreparedStatement)con.prepareStatement("insert into hotel_details(hotel_name,email,user_name,passwords,star_classification,state,contact_number)values(?,?,?,?,?,?,?)");
			ps.setString(1, hotel_name);
			ps.setString(2, email);
			ps.setString(3, user_name);
			ps.setString(4, passwords);
			ps.setString(5, star_classification);
			ps.setString(6, state);
			ps.setString(7, contact_number);
			ps.executeUpdate();
			response.sendRedirect("hoteloginpage.jsp");
			}
			else
			{
			
			     response.sendRedirect("rereghotelpage.jsp");
			}
		}
		catch(Exception e)
		{
		e.printStackTrace();	
		}
	}

}
