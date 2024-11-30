package moffatbay;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import moffatbay.model.DataManager;

/**
 * Servlet implementation class MBServlet
 */
@WebServlet(name = "MBServlet", urlPatterns = {"/mbay/*"})
public class MBServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MBServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

    public void init(ServletConfig config) throws ServletException {
        System.out.println("*** initializing controller servlet.");
        super.init(config);

        //this is how you set the DB info for the DataManager
        //It can't access web.xml since it's in a package
        DataManager dataManager = new DataManager();
        dataManager.setDbURL(config.getInitParameter("dbURL"));
        dataManager.setDbUserName(config.getInitParameter("dbUserName"));
        dataManager.setDbPassword(config.getInitParameter("dbPassword"));

        ServletContext context = config.getServletContext();
        context.setAttribute("base", config.getInitParameter("base"));
        context.setAttribute("imageURL", config.getInitParameter("imageURL"));
        context.setAttribute("dataManager", dataManager);

        try {  // load the database JDBC driver
          Class.forName(config.getInitParameter("jdbcDriver"));
          }
        catch (ClassNotFoundException e) {
          System.out.println(e.toString());
          }
        }
    
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	/* Adapted from source: "Beginning Jakarta EE Web Development" by Luciano Manelli and Giulio Zambon */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 String base = "/jsp/";
		 String url = base + "index.jsp";
		 String action = request.getParameter("action");
	    var parammap = request.getParameterMap();
	    for (String a : parammap.keySet()) {
	        System.out.println("Parameters: " + a + " values:" + String.join(", ", parammap.get(a))) ;	
	    }
		 if (action != null) {
		        switch (action) {
		        case "login":
		          url = base + "login.jsp";
		          break;
		        case "register":
		          url = base + "register.jsp";
		          break;
		        case "about":
		          url = base + "AboutUs.jsp";
		          break;
		        case "reserve": //two cases go to the same page as different actions
		        case "validate":
		          url = base + "Reserve.jsp";
		          break;
		        case "confirm":
		        case "success": //two cases go to the same page as different actions
		          url = base + "ResSummary.jsp";
		          break;
		        case "lookup":
		          url = base + "ResLookup.jsp";
		          break;
		        case "attractions":
			      url = base + "Attractions.jsp";
			      break;
		        case "contact":
			      url = base + "ContactUs.jsp";
			      break;
		        case "contactUsSummary":
			      url = base + "ContactUsSummary.jsp";
			      break;
			    default:
		          url = base + "login.jsp";
		          break;
		        }
		      }
		    RequestDispatcher requestDispatcher =
		      getServletContext().getRequestDispatcher(url);
		    requestDispatcher.forward(request, response);
	}

}
