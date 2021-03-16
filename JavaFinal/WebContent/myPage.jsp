<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page import="contants.Database" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>My page</title>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
    <style>
        html, body {
            padding: 0px;
            margin: 0px;
            background: black;
            font-family: 'Raleway', sans-serif;
            color: #FFF;
        }
        body {
          background-size: cover;
         background-image: url("2.jpg");
         background-repeat: no-repeat;
        }
        .user{
            margin-top: 30px;
            border: 3px solid white;
            width: 80%;
            background: url("3.jpg") no-repeat;
            background-size: cover;
        }
        .info{
            display: grid;
            grid-template-columns: 1fr 1fr;
            grid-template-rows: 1fr;
        }
        li {
            list-style-type: none;
            font-size: 25px;
            margin-bottom: 1em;
        }
        
        
        
      
      @import url(https://fonts.googleapis.com/css?family=Open+Sans);
html {
  height:100%;
}
nav {
  max-width: 960px;
  mask-image: linear-gradient(90deg, rgba(255, 255, 255, 0) 0%, #ffffff 25%, #ffffff 75%, rgba(255, 255, 255, 0) 100%);
  margin: 0 auto;
  padding: 60px 0;
  opacity:1;
}
nav ul {
  text-align: center;
  background: linear-gradient(90deg, rgba(255, 255, 255, 0) 0%, rgba(255, 255, 255, 0.2) 25%, rgba(255, 255, 255, 0.2) 75%, rgba(255, 255, 255, 0) 100%);
  box-shadow: 0 0 25px rgba(0, 0, 0, 0.1), inset 0 0 1px rgba(255, 255, 255, 0.6);
}
nav ul li {
  display: inline-block;
}
nav ul li a {
  padding: 18px;
  font-family: "Open Sans";
  text-transform:uppercase;
  color: white;
  font-size: 18px;
  text-decoration: none;
  display: block;
}
nav ul li a:hover {
  box-shadow: 0 0 10px rgba(0, 0,
0, 0.1), inset 0 0 1px rgba(255, 255, 255, 0.6);
  background: rgba(255, 255, 255, 0.1);
  color: rgba(0, 35, 122, 0.7);
}

    </style>
</head>
<body>
<%
    PrintWriter pw = response.getWriter();
    response.setContentType("text/html");
    try {
        Class.forName(Database.DRIVER_NAME);
        Connection con = DriverManager.getConnection(Database.CONNECTION_STRING,Database.USER_NAME,Database.PASSWORD);
        String username=(String) session.getAttribute("username");
        PreparedStatement ps = con.prepareStatement("Select * from users where Username='"+username+"'");
        ResultSet rs = ps.executeQuery();
        pw.println("<header>" +
                "<nav>"+"<ul>"+
    "<li>"+
    "<a style = 'text-decoration: none;' href='news.jsp'>NEWS</a>"+
   " </li>"+
    "<li>"+
      "<a style = 'text-decoration: none;' href='clubs.jsp'>CLUBS</a>"+
    "</li>"+
   " <li>"+
      "<a style = 'text-decoration: none;' href='StudentsListServlet'>STUDENTS</a>"+
    "</li>"+
    "<li>"+
      "<a style = 'text-decoration: none;' href='events.jsp'>EVENTS</a>"+
    "</li>"+
     "<li>"+
      "<a  style = 'text-decoration: none;' href='logout.jsp'>LOG OUT</a>"+
   " </li>"+
  "</ul>"+
"</nav>"   +
                "</header>");
       // pw.println("<center style='padding-top:50px;'><div style='border: 1px solid silver; box-shadow:  0 10px 20px #39ace7; width: 200px; border-radius: 100px;'>" +
              //  "    <img width='200' style='border-radius: 100px;' src='https://cdns.iconmonstr.com/wp-content/assets/preview/2018/240/iconmonstr-user-circle-thin.png' id='icon' alt='User Icon'/>" +
             //   "</div></center>");
        while(rs.next())
        {
            String name = rs.getString(3);
            String surname = rs.getString(4);
            String major = rs.getString(5);
            String group = rs.getString(6);
            String year = rs.getString(7);
            
            pw.println("<center><div class='user'><div><center><h3 style='font-weight:bold; font-size: 30px;'>"+username+"</h3></center></div><div class='info'><div><ul>"+
                    "<li>Name: </li>" +
                    "<li>Surname: </li>" +
                    "<li>Major: </li>" +
                    "<li>Group: </li>" +
                    
                    
                    "</ul></div>");
            pw.println("<div><ul><li>"+name+"</li>");
            pw.println("<li>"+surname+"</li>");
            pw.println("<li>"+major+"</li>");
            pw.println("<li>"+group+"</li>");
         
        }
        pw.println("</div></center>");
    } catch(Exception e) {
        out.println(e);
    }
%>
</body>
</html>
