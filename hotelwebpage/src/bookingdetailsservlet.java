

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import java.text.SimpleDateFormat;
import java.util.Date;


/**
 * Servlet implementation class bookingdetailsservlet
 */
@WebServlet("/bookingdetailsservlet")
public class bookingdetailsservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public bookingdetailsservlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try 
		{
			
		PrintWriter out= response.getWriter();		
		//out.print("hello world");
		String format = "yyyy/mm/dd";
		String check_in_date1= request.getParameter("check_in_date");
		String check_out_date2 = request.getParameter("check_out_date");
		SimpleDateFormat sdf = new SimpleDateFormat(format);
		int  hotel_id=Integer.parseInt(request.getParameter("hotel_id"));
		int user_id =Integer.parseInt(request.getParameter("user_id"));
	//	out.print(check_in_date1);

		Date check_in_date = sdf.parse(check_in_date1);
		Date check_out_date = sdf.parse(check_out_date2);
		
			
		
		//out.print("hello world");
		//out.print(check_in_date1);
	//	out.print(check_out_date);
		
		
		int price1,price2;
		String total_number_of_pax=request.getParameter("total_number_of_pax");
		String type_of_room=request.getParameter("type_of_room");
		
		//DecimalFormat crunchifyFormatter = new DecimalFormat("###,###");
		
		long diff = check_out_date.getTime() - check_in_date.getTime();
		int diffDays = (int) (diff / (24 * 60 * 60 * 1000));
		//out.println("difference between days: " + diffDays);
	int	pricefor2= 0,pricefor1=0;
		
	//out.print(pricef);
		
		
		Class.forName("com.mysql.jdbc.Driver");
		Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/hotelwebpage","root","root");
		PreparedStatement ps=null;
		PreparedStatement ps1=null;
		//PreparedStatement ps2=null;
		ResultSet rs=null;
		String query="select * from price_details where hotel_id=?";
		String q= "insert into booking_details(hotel_id,user_id,total_number_of_pax,check_in_date,check_out_date,type_of_room,is_cancelled,price)values(?,?,?,?,?,?,?,?)";
		ps=con.prepareStatement(query);
		ps.setInt(1,hotel_id);
		rs=ps.executeQuery();
		
		while(rs.next())
		{
			price2=rs.getInt(4);
			price1=rs.getInt(3);
			pricefor2 = price2 * diffDays;
			pricefor1= price1 * diffDays;
		
				
				ps1=con.prepareStatement(q);	
				out.print("hello");
				ps1.setInt(1,hotel_id);
				ps1.setInt(2,user_id);
				ps1.setString(3, total_number_of_pax);
				out.print("helloworld");
				ps1.setString(4, check_in_date1 );
				ps1.setString(5, check_out_date2);
				ps1.setString(6, type_of_room);
				ps1.setBoolean(7, false);
				//out.print("hello");
				out.print("helloworld");
				if(type_of_room.equals("double deluxe"))
				ps1.setInt(8, pricefor2);
				else
				ps1.setInt(8, pricefor1);
				out.print("helloworld");
				ps1.executeUpdate();
				response.sendRedirect("home.jsp");
		}
		
		
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
	
		
	}
	



}