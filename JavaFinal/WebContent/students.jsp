<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Students list</title>
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
        }
        .user{
            border: 3px solid white;
            background-image: url("3.jpg");
            display: grid;
            grid-template-rows: auto 1fr;
            color: white;
            border-radius: 20px;
            padding-right: 20px;
        }
        .info{
            display: grid;
            grid-template-columns: 1fr 1fr;
            grid-template-rows: 1fr;
        }
        li {
            list-style-type: none;
            font-size: 18px;
            margin-bottom: 1em;
        }
        .search-box{
            display: grid;
            grid-template-columns: repeat(5, 1fr);
        }
        .search-columns{
            display: grid;
            grid-template-rows: 1fr 1fr;
        }
        .searcher, .button{
            font-size: 18px;
            border-radius: 10px;
           
            color: #white;
            background-color: darkgray;
        }
        .searcher{
            padding-left: 5px;
        }
        #show_all{
            border: 3px solid black;
            color: #black;;
            display: block;
            border-radius: 10px;
            font-size: 20px;
            background-color: darkgray;
            text-decoration: none;
            width: 60%;
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
</body>
</html>
