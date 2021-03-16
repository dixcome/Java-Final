<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page import="variables.News" %>
<%@ page import="contants.Database" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>News</title>
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
        .a-author{
            color: white;
        }
        .e-block{
            margin-top: 20px;
            border-radius: 50px;
            display: block;
            border: 3px solid white;
            background: url("3.jpg") no-repeat;
            background-size: cover;
        }
        
        
        .content{
    display: grid;
    grid-template-columns: 80%;
    justify-content: center;
}

	.a-header{
    font-weight: bold;
    color: white;
}
	.article{
    width: 90%;
    padding-left: 30px;
}
	.a-author{
    padding-right: 30px;
    text-align: end;
}
	hr{
    height: 3px;
    background-color: white;
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
<!-- Header -->
<header>
    <nav>
  <ul>
    <li>
      <a style = 'text-decoration: none;' href="news.jsp">NEWS</a>
    </li>
    <li>
      <a style = 'text-decoration: none;' href="clubs.jsp">CLUBS</a>
    </li>
    <li>
      <a style = 'text-decoration: none;' href="StudentsListServlet">STUDENTS</a>
    </li>
    <li>
      <a style = 'text-decoration: none;' href="events.jsp">EVENTS</a>
    </li>
     <li>
      <a  style = 'text-decoration: none;' href="logout.jsp">LOG OUT</a>
    </li>
  </ul>
</nav>
</header>
<!-- Main part -->
<center><h1 style="color: white; font-size: 40px; font-family: 'Raleway', sans-serif;">News</h1></center>
<div class="content">
    <%
        Class.forName(Database.DRIVER_NAME);
    Connection con = DriverManager.getConnection(Database.CONNECTION_STRING,Database.USER_NAME,Database.PASSWORD);
        Stack<News> newsStack = new Stack<>();
        int n=0;
        try {
            PreparedStatement pst = con.prepareStatement("select * from news");
            ResultSet rs=pst.executeQuery();
            while(rs.next()) {
                News news = new News(rs.getString("Header"),rs.getString("Main_part"),rs.getString("Author"));
                newsStack.push(news);
                n++;
            }
        } catch(Exception e) {
            out.println(e);
        }
        News[] newsArray = new News[n];
        for (int i=0; i<n; i++) {
            newsArray[i]= (News) newsStack.pop();
        }
        ArrayList<News> newsList = new ArrayList<>();
        for (int i=0; i<n; i++) {
            newsList.add(newsArray[i]);
            out.println("<div class='e-block'>\n" +
                    "        <center><h2 class='a-header'>"+newsList.get(newsList.size() - 1).getA_name()+"</h2></center>" +
                    "        <hr>");
            out.println("<p class='article'>"+ newsList.get(newsList.size() - 1).getMain_part()+"</p>" +
                    "<p class='a-author'> Author: "+ newsList.get(newsList.size() - 1).getAuthor()+"</p>" +
                    "</div>");
        }
    %>
</div>
</body>
</html>
