<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page import="contants.Database" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>

<html>
<head>
    <title>AITU students</title>
    <style>
        html, body {
            padding: 0px;
            margin: 0px;
            
            font-family: 'Raleway', sans-serif;
            color: white;
             a:link {
  				text-decoration: none;
				}

			a:visited {
				  text-decoration: none;
				}
            
        }
        :root {
            --base-grid: 8px;
            --colour-white: #fff;
            --colour-black: #1a1a1a;
        }

        *,
        :after,
        :before {
            box-sizing: border-box;
        }
        body {
          
            font-family: Josefin Sans, sans-serif;
            margin: 0;
            padding: 0;
             background-size: cover;
         background-image: url("2.jpg");
         background-repeat: no-repeat;
         
            
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
  box-shadow: 0 0 10px rgba(0, 0, 0, 0.1), inset 0 0 1px rgba(255, 255, 255, 0.6);
  background: rgba(255, 255, 255, 0.1);
  color: rgba(0, 35, 122, 0.7);
}


    </style>
</head>
<header>
   
</header>

<!-- Header -->
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

<body>
<center><h1 style="margin-left: 3vw;">Welcome, <c:out value="${sessionScope.username}"/>!</h1></center>
</body>
</html>
