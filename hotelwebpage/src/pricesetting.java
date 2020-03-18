

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class pricesetting
 */
@WebServlet("/pricesetting")
public class pricesetting extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public pricesetting() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		PrintWriter out = response.getWriter();
		HttpSession session= request.getSession();
		int hotel_id = (int)session.getAttribute("hotel_id");
		String price_for_single_bed =request.getParameter("price_for_single_bed");
		String price_for_double_bed=request.getParameter("price_for_double_bed");
		
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/hotelwebpage","root","root");
			PreparedStatement ps= null;
			String query="insert into price_details(hotel_id,price_for_single_bed,price_for_double_bed)values(?,?,?) ";
			ps=con.prepareStatement(query);
			ps.setInt(1, hotel_id);
			ps.setString(2, price_for_single_bed);
			ps.setString(3, price_for_double_bed);
			
			ps.executeUpdate();
			out.println("price seted");
			
			
			
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
