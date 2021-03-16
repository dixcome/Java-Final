<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page import="variables.News" %>
<%@ page import="contants.Database" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/alphardex/aqua.css@master/dist/aqua.min.css">
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
            background-image: linear-gradient(270deg, #2b67ac 3px, transparent 0),
            linear-gradient(#2b67ac 3px, transparent 0),
            linear-gradient(270deg, rgba(43, 103, 172, 0.4) 1px, transparent 0),
            linear-gradient(#2b67ac 1px, transparent 0),
            linear-gradient(270deg, rgba(43, 103, 172, 0.4) 1px, transparent 0),
            linear-gradient(#2b67ac 1px, transparent 0);
            background-size: 112px 112px, 112px 112px, 56px 56px, 56px 56px, 28px 28px,
            28px 28px;
        }
        .a-author{
            color:#e0ed68;
        }
        .adder{
            display: grid;
            grid-template-columns: 1fr 4fr 1fr 0.5fr;
            width: 80%;
            grid-column-gap: 20px;
        }
        input, textarea{
            border: 3px solid white;
            border-radius: 10px;
            font-size: 18px;
        }
        .add-btn{
            font-weight: bold;
            color: #0950e8;
        }
        .panel{
            padding-top: 30px;
            display: grid;
            grid-template-columns: 0.3fr 1fr 1fr 1fr;
            width: 80%;
            grid-column-gap: 20px;
        }
        button{
            font-weight: bold;
            color: #0950e8;
        }
        input,button{
            font-size: 18px;
        }
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
  .e-block{
            margin-top: 20px;
            border-radius: 50px;
            display: block;
            border: 3px solid white;
            background: url("3.jpg") no-repeat;
            background-size: cover;
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


  .btn {
        padding: 8px 20px;
        border-radius: 0;
        overflow: hidden;
        &::before {
          position: absolute;
          content: "";
          top: 0;
          left: 0;
          width: 100%;
          height: 100%;
          background: linear-gradient(
                          120deg,
                          transparent,
                          var(--primary-color),
                          transparent
          );
          transform: translateX(-100%);
          transition: 0.6s;
        }
        &:hover {
          background: transparent;
          box-shadow: 0 0 20px 10px hsla(204, 70%, 53%, 0.5);
          &::before {
            transform: translateX(100%);
          }
        }
      }
    </style>
  
</head>
<body>
<!-- Header -->
<header>
<nav>
  <ul>
    <li>
      <a style = 'text-decoration: none;' href="editNews.jsp">NEWS</a>
    </li>
    <li>
      <a style = 'text-decoration: none;' href="editClubs.jsp">CLUBS</a>
    </li>
    <li>
      <a style = 'text-decoration: none;' href="StudentListAdminServlet">STUDENTS</a>
    </li>
    <li>
      <a style = 'text-decoration: none;' href="editEvents.jsp">EVENTS</a>
    </li>
     <li>
      <a  style = 'text-decoration: none;' href="logout.jsp">LOG OUT</a>
    </li>
  </ul>
</nav>
</header>

<!-- Main part -->
<center><h1 style="color: white; font-size: 40px; font-family: 'Raleway', sans-serif;">News</h1></center>
<center><form method="post" action="AddNewsServlet" class="adder">
    <input type="text" name="header" placeholder="Header">
    <textarea name="main_part"></textarea>
    <input type="text" name="author" placeholder="Author">
    <input type="submit" value="Add" class='btn btn-primary btn-ghost'>
</form></center>
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
            out.println("<center><div class='panel'><form method='post' action='DeleteNewsServlet'><input type='hidden' name='id' value='"+
                    newsList.get(newsList.size() - 1).getA_name()+"'><input type='hidden' name='type' value='news'><button class='btn btn-primary btn-ghost' type='submit'>Delete</button></form>" +
                    "<form method='post' action='EditNewsServlet'><input type='hidden' name='id' value='"+
                    newsList.get(newsList.size() - 1).getA_name()+"'><input type='hidden' name='type' value='Header'>" +
                    "<input type='text' name='txt' placeholder='Header...'><button class='btn btn-primary btn-ghost' type='submit'>Change</button></form>"+
                    "<form method='post' action='EditNewsServlet'><input type='hidden' name='id' value='"+
                    newsList.get(newsList.size() - 1).getA_name()+"'><input type='hidden' name='type' value='Main_part'>" +
                    "<input type='text' name='txt' placeholder='Main part...'><button class='btn btn-primary btn-ghost' type='submit'>Change</button></form>"+
                    "<form method='post' action='EditNewsServlet'><input type='hidden' name='id' value='"+
                    newsList.get(newsList.size() - 1).getA_name()+"'><input type='hidden' name='type' value='Author'>" +
                    "<input type='text' name='txt' placeholder='Author...'><button class='btn btn-primary btn-ghost' type='submit'>Change</button></form>"+
                    "</div></center>");
        }
    %>
</div>
</body>
</html>
