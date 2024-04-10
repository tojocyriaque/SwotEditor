package collab0x;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

/**
 * Servlet implementation class CollabServlet
 */
public class CollabServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CollabServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		try {
			RequestDispatcher disp = null ;
			String type = request.getParameter("type");

			if(type==null) {
				disp = request.getRequestDispatcher("choice.jsp");
			}
			else if(type.equals("mesprojets")) {
				try {
					Class.forName("com.mysql.cj.jdbc.Driver");
					
					Connection conn = DBConnector.getConnection();
					Statement getProjects = conn.createStatement();
					getProjects.executeQuery("SELECT * from projects");
					
					ResultSet projects = getProjects.getResultSet();
					ArrayList<String> projectsName = new ArrayList<String>();
					while(projects.next()) {
						projectsName.add(projects.getString("project_name"));
					}
					request.setAttribute("projects", projectsName);
					disp = request.getRequestDispatcher("projects.jsp");
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			else if(type.equals("nouveau")) {
				disp = request.getRequestDispatcher("index.jsp");
			}
			disp.include(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			out.close();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

}
