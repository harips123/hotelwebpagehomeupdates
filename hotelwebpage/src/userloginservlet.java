

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.sql.*;
/**
 * Servlet implementation class userloginservlet
 */
@WebServlet("/userloginservlet")
public class userloginservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public userloginservlet() {
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
		String user_name=request.getParameter("user_name");
		String passwords=request.getParameter("passwords");
		int user_id ;
		String name,email,contact_number;
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/hotelwebpage","root","root");
			String query="select * from user_details where user_name = ? and passwords = ?  ";
			PreparedStatement st=(PreparedStatement)con.prepareStatement(query); 
			//Statement st= con.createStatement();
			st.setString(1, user_name);
			st.setString(2, passwords);
			ResultSet rs;
			rs=st.executeQuery();
			
		if(rs.next())
		{
			user_id=rs.getInt(1);
			name=rs.getString(2);
			email=rs.getString(3);
			contact_number=rs.getString(7);
			
			
			HttpSession session = request.getSession();
			session.setAttribute("user_name",user_name);
			session.setAttribute("user_id", user_id);
			session.setAttribute("name", name);
			session.setAttribute("email", email);
			session.setAttribute("contact_number", contact_number);
//System.out.println(user_id);
//System.out.println(user_name);
//System.out.println(name);
//System.out.println(email);
//System.out.println(contact_number);
		response.sendRedirect("userwelcome.jsp");
		} else {
		    System.out.println("Invalid password <a href='loginpage.jsp'>try again</a>");
		}
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
	}

}
