package csci201_project;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

//if someone react with a post, first check if user and the post id in the table, if it is not, we insert, and put ifreact = upvote or down, else we check if react is upvote or down.
//if ifreact is upvote and doing upvote again, it should cancel and set to none. 

@WebServlet("/upvoteServlet")
public class upvoteServlet extends HttpServlet{

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//if assume it is one everytime call this function
		int uppostNum = 1;

		//if it is not 1
		//		String updatepost = request.getParameter("upvoteNum");
		//		int uppostNum = Integer.parseInt(updatepost);
		String postID = request.getParameter("postId"); 

		//testing purpose only
		//		String postID = "36";

		synchronized(this){
			Connection conn = null;
			PreparedStatement ps = null;
			PrintWriter out = response.getWriter();  
			String url       = "jdbc:mysql://127.0.0.1:3306/sctea";
			String sqluser   = "root";
			String sqlpwd    = "password";
			Statement stat = null;


			// create a connection to the database
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				conn = DriverManager.getConnection(url, sqluser, sqlpwd);
				stat = conn.createStatement();

				Statement mstat = null;
				mstat = conn.createStatement();

				String sql = "Select upvoteNum from scteatest.post Where postID= " + postID;

				ResultSet rs = stat.executeQuery(sql);

				if (rs.next())
				{
					int curr_upvote = rs.getInt("UpvoteNum"); 		
					curr_upvote++;
					mstat.execute("UPDATE scteatest.post SET UpvoteNum = " + curr_upvote + " WHERE postID = "+ postID + ";");

					ResultSet rs1 = stat.executeQuery("SELECT * FROM scteatest.post");

					ArrayList<post> postlist=new ArrayList<post>();
					while(rs1.next())
					{
						post post = new post(rs1.getInt("postID"), rs1.getString("userID"), rs1.getString("content"), rs1.getString("fakeName"), rs1.getString("timestamp"), rs1.getInt("upvoteNum"), rs1.getString("title"));
						postlist.add(post);
					}
					request.setAttribute("postlist", postlist);

					request.setAttribute("upvoteNum", curr_upvote);
					RequestDispatcher dispachter = request.getRequestDispatcher("/landingpage.jsp");
					dispachter.forward (request, response);
				}
				else {
					RequestDispatcher dispachter = request.getRequestDispatcher("/landingpage.jsp");
					dispachter.forward (request, response);
				}
				stat.close();
				conn.close();
			}catch(SQLException e) {
				e.printStackTrace();
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
}
