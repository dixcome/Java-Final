<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page import="variables.Clubs" %>
<%@ page import="contants.Database" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit clubs</title>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/alphardex/aqua.css@master/dist/aqua.min.css">
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
        .content{
            width: 80%;
            display: grid;
            grid-template-columns: 1fr 1fr 1fr 1fr;
            grid-column-gap: 50px;
            grid-row-gap: 20px;
            padding-top: 30px;
        }
        .clubs{
            border: 3px solid white;
            background-image: url("3.jpg");
            color: white;
            border-radius: 20px;
            padding-right: 20px;
        }
    <!-- Button css -->
    <style type="text/scss">
      body {
        display: flex;
        justify-content: center;
        align-items: center;
        min-height: 100vh;
        background: #eceffc;
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
      .form-input-material {
        --input-default-border-color: white;
        --input-border-bottom-color: white;
        input {
          color: white;
        }
      }
      .login-form {
        display: flex;
        flex-direction: column;
        align-items: center;
        padding: 50px 40px;
        color: white;
        background: rgba(0, 0, 0, 0.8);
        border-radius: 10px;
        box-shadow: 0 0.4px 0.4px rgba(128, 128, 128, 0.109),
        0 1px 1px rgba(128, 128, 128, 0.155),
        0 2.1px 2.1px rgba(128, 128, 128, 0.195),
        0 4.4px 4.4px rgba(128, 128, 128, 0.241),
        0 12px 12px rgba(128, 128, 128, 0.35);
        h1 {
          margin: 0 0 24px 0;
        }
        .form-input-material {
          margin: 12px 0;
        }
        .btn {
          width: 100%;
          margin: 18px 0 9px 0;
        }
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
<center><h1 style="color: white; font-size: 40px; font-family: 'Raleway', sans-serif;">University clubs</h1></center>
<center><form method="post" action="AddClubServlet" class="adder">
    <input type="text" name="name" placeholder="Club name">
    <input type="submit" value="Add" class="btn btn-primary btn-ghost">
</form></center>
<center><div class='content'>
    <%
        Class.forName(Database.DRIVER_NAME);
        Connection con = DriverManager.getConnection(Database.CONNECTION_STRING,Database.USER_NAME,Database.PASSWORD);
        LinkedList<Clubs> clubsLinkedList = new LinkedList<>();
        int n=0;
        try {
            PreparedStatement pst = con.prepareStatement("select * from clubs");
            ResultSet rs=pst.executeQuery();
            while(rs.next()) {
                Clubs clubs = new Clubs(rs.getString("Name"));
                clubsLinkedList.add(clubs);
                n++;
            }
        } catch(Exception e) {
            out.println(e);
        }
        Clubs[] clubsArray = new Clubs[n];
        for (int i=0; i<n; i++) {
            clubsArray[i]= (Clubs) clubsLinkedList.pop();
        }
        ArrayList<Clubs> clubsArrayList = new ArrayList<>();
        for (int i=0; i<n; i++) {
            clubsArrayList.add(clubsArray[i]);
            out.println("<div class='clubs'><div style='padding-top=40%'><center><h3 style='font-weight:bold; font-size: 25px;'>"+
                    clubsArrayList.get(clubsArrayList.size() - 1).getClub_name()+"</h3></center></div>" +
                    "<div><form method='post' action='DeleteClubServlet'><input type='hidden' name='name' value='" +
                    clubsArrayList.get(clubsArrayList.size() - 1).getClub_name() +"'><button type='submit' class='btn btn-primary btn-ghost'><span>Delete</span></button></form></div>" +
                    "<div><form method='post' action='EditClubsServlet'><input type='hidden' name='name' value='" +
                    clubsArrayList.get(clubsArrayList.size() - 1).getClub_name() + "'><input type='text' name='newName'><button type='submit' class='btn btn-primary btn-ghost'><span>Change</span></button></form></div></div>");
        }
    %>
</div></center>
</body>
</html>
