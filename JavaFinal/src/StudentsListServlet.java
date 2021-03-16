import java.io.*;
import java.sql.*;
import javax.servlet.*;


public class StudentsListServlet extends GenericServlet{
    public void service(ServletRequest req,ServletResponse res) throws IOException,ServletException
    {
        PrintWriter pw = res.getWriter();
        res.setContentType("text/html");
        try {
            Connection con = DBConnection.getCon();
            PreparedStatement ps = con.prepareStatement("Select * from users");
            ResultSet rs = ps.executeQuery();
            RequestDispatcher rd = req.getRequestDispatcher("students.jsp");
            rd.include(req, res);
            pw.println("<div><center><h1 style='color: white; font-size: 40px; font-family: 'Raleway', sans-serif;'>Students list</h1></center>" +
                    "<center><a href=\"myPage.jsp\"><button class='btn btn-primary btn-ghost'><span>My page</span></button></a></center><br><br><br>");
            //Searchers
            pw.println("<center><div class='search-box'>" +
                    "<div class='search-columns'><div><a class='btn btn-primary btn-ghost' id='show_all' href='StudentsListServlet'>Show all</a></div></div>"+
                    "<div class='search-columns'>" +
                    "<form method='post' action='GroupSearchServlet'>" +
                    "  <input class='searcher' type='search' name='group' placeholder='Group'>" +
                    "  <input class='btn btn-primary btn-ghost' type='submit' value='Search'>" +
                    "</form></div>" +
                    "<div class='search-columns'>" +
                    "<form method='post' action='MajorSearchServlet'>" +
                    "  <input class='searcher' type='search' name='major' placeholder='Major'>" +
                    "  <input class='btn btn-primary btn-ghost' type='submit' value='Search'>" +
                    "</form></div>" +
                    "<div class='search-columns'>" +
                    "<form method='post' action='YearSearchServlet'>" +
                    "  <input class='searcher' type='search' name='year' placeholder='Year'>" +
                    "  <input class='btn btn-primary btn-ghost' type='submit' value='Search'>" +
                    "</form></div>" +
                    "<div class='search-columns'>" +
                    "<form method='post' action='AnySearchServlet'>" +
                    "  <input class='searcher' type='search' name='anything' placeholder='Anything'>" +
                    "  <input class='btn btn-primary btn-ghost' type='submit' value='Search'>" +
                    "</form></div>" +
                    "</div></center>");
            pw.println("<center><div class='content'>");
            //students list
            while(rs.next())
            {
                String username = rs.getString(2);
                String name = rs.getString(3);
                String surname = rs.getString(4);
                String major = rs.getString(5);
                String group = rs.getString(6);
                String year = rs.getString(7);
                pw.println("<div class='user'><div><center><h3 style='font-weight:bold; font-size: 25px;'>"+username+"</h3></center></div><div class='info'><div><ul>"+
                        "<li>Name: </li>" +
                        "<li>Surname: </li>" +
                        "<li>Major: </li>" +
                        "<li>Group: </li>" +
                        "<li>Year: </li>" +
                        "</ul></div>");
                pw.println("<div><ul><li>"+name+"</li>");
                pw.println("<li>"+surname+"</li>");
                pw.println("<li>"+major+"</li>");
                pw.println("<li>"+group+"</li>");
                pw.println("<li>"+year+"</li></ul></div></div></div>");
            }
            pw.println("</div></center>");
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
    }
}
