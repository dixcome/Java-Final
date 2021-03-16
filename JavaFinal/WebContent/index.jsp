<%@ page import="java.sql.*" %>
<%@ page import="contants.Database" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>AITU students</title>
    <script>
        var signin = document.querySelector('#signin')
        var register = document.querySelector('#register')
        setTimeout(function(){ register.checked = true}, 1000)
        setTimeout(function(){ signin.checked = true}, 2000)
    </script>
    <style>
        html, body {
            padding: 0px;
            margin: 0px;
            
            font-family: 'Raleway', sans-serif;
            color: #FFF;
        }
        body {
           background-size: cover;
           background-color: #D1D1D1;
         background-image: url("2.jpg");
         background-repeat: no-repeat;
        }

        .container {
            min-height: 300px;
            max-width: 300px;
            margin: 40px auto;
            background: red;
            border-radius: 2px;
            box-shadow: 0px 2px 3px rgba(0, 0, 0, 0.2);
            display: -webkit-box;
            display: flex;
            -webkit-box-orient: vertical;
            -webkit-box-direction: normal;
            flex-direction: column;
            overflow: hidden;
            -webkit-animation: hi 0.5s;
            animation: hi 0.5s;
            -webkit-transform: translateZ(0px);
        }
        .container * {
            box-sizing: border-box;
        }

        .pages {
            -webkit-box-flex: 1;
            flex: 1;
            white-space: nowrap;
            position: relative;
            -webkit-transition: all 0.4s;
            transition: all 0.4s;
            display: -webkit-box;
            display: flex;
        }
        .pages .page {
            min-width: 100%;
            padding: 20px 15px;
            padding-top: 0px;
            backgound-color: red;
            background-image: url('3.jpg')
              /*background: -webkit-gradient(linear, right top, left top, from(#226F48), to(#81DEB0));
           background: linear-gradient(to left, #955DFF, #6FAAFF); */
        }
        .pages .page:nth-of-type(1) .input {
            -webkit-transform: translateX(-100%) scale(0.5);
            transform: translateX(-100%) scale(0.5);
        }
        .pages .page:nth-of-type(2) .input {
            -webkit-transform: translateX(100%) scale(0.5);
            transform: translateX(100%) scale(0.5);
        }
        .pages .page .input {
            -webkit-transition: all 1s;
            transition: all 1s;
            opacity: 0;
            -webkit-transition-delay: 0s;
            transition-delay: 0s;
        }
        .pages .page.signup {
        background-image: url('3.jpg')
           /* background: -webkit-gradient(linear, right top, left top, from(#6A3677), to(#C885D8));
            background: linear-gradient(to left, #6FAAFF, #955DFF);*/
        }
        .pages .page .title {
            margin-bottom: 10px;
            font-size: 14px;
            position: relative;
            line-height: 14px;
        }
        .pages .page .title i {
            vertical-align: text-bottom;
            font-size: 19px;
        }
        .pages .page .input {
            margin-top: 20px;
        }
        .pages .page input.text {
            background: #F6F7F9;
            border: none;
            border-radius: 4px;
            width: 100%;
            height: 40px;
            line-height: 40px;
            padding: 0px 10px;
            color: rgba(0, 0, 0, 0.5);
            outline: none;
        }
        .pages .page input[type=submit] {
            background: rgba(0, 0, 0, 0.5);
            color: #F6F7F9;
            height: 40px;
            line-height: 40px;
            width: 100%;
            border: none;
            border-radius: 4px;
            font-weight: 600;
        }

        .tabs {
            max-height: 50px;
            height: 50px;
            display: -webkit-box;
            display: flex;
            background: #FFF;
        }
        .tabs .tab {
            -webkit-box-flex: 1;
            flex: 1;
            color: #5D708A;
            text-align: center;
            line-height: 50px;
            -webkit-transition: all 0.2s;
            transition: all 0.2s;
        }
        .tabs .tab .text {
            font-size: 14px;
            -webkit-transform: scale(1);
            transform: scale(1);
            -webkit-transition: all 0.2s;
            transition: all 0.2s;
        }

        input[type=radio] {
            display: none;
        }

        input[type=radio]:nth-of-type(1):checked ~ .tabs .tab:nth-of-type(1) {
            box-shadow: inset -3px 2px 5px rgba(0, 0, 0, 0.25);
            color: #3F4C7F;
        }
        input[type=radio]:nth-of-type(1):checked ~ .tabs .tab:nth-of-type(1) .text {
            -webkit-transform: scale(0.9);
            transform: scale(0.9);
        }
        input[type=radio]:nth-of-type(1):checked ~ .pages {
            -webkit-transform: translateX(0%);
            transform: translateX(0%);
        }
        input[type=radio]:nth-of-type(1):checked ~ .pages .page:nth-of-type(1) .input {
            opacity: 1;
            -webkit-transform: translateX(0%);
            transform: translateX(0%);
            -webkit-transition: all 0.5s;
            transition: all 0.5s;
        }
        input[type=radio]:nth-of-type(1):checked ~ .pages .page:nth-of-type(1) .input:nth-child(1) {
            -webkit-transition-delay: 0.2s;
            transition-delay: 0.2s;
        }
        input[type=radio]:nth-of-type(1):checked ~ .pages .page:nth-of-type(1) .input:nth-child(2) {
            -webkit-transition-delay: 0.4s;
            transition-delay: 0.4s;
        }
        input[type=radio]:nth-of-type(1):checked ~ .pages .page:nth-of-type(1) .input:nth-child(3) {
            -webkit-transition-delay: 0.6s;
            transition-delay: 0.6s;
        }
        input[type=radio]:nth-of-type(1):checked ~ .pages .page:nth-of-type(1) .input:nth-child(4) {
            -webkit-transition-delay: 0.8s;
            transition-delay: 0.8s;
        }
        input[type=radio]:nth-of-type(1):checked ~ .pages .page:nth-of-type(1) .input:nth-child(5) {
            -webkit-transition-delay: 1s;
            transition-delay: 1s;
        }

        input[type=radio]:nth-of-type(2):checked ~ .tabs .tab:nth-of-type(2) {
            box-shadow: inset 3px 2px 5px rgba(0, 0, 0, 0.25);
            color: #3F4C7F;
        }
        input[type=radio]:nth-of-type(2):checked ~ .tabs .tab:nth-of-type(2) .text {
            -webkit-transform: scale(0.9);
            transform: scale(0.9);
        }
        input[type=radio]:nth-of-type(2):checked ~ .pages {
            -webkit-transform: translateX(-100%);
            transform: translateX(-100%);
        }
        input[type=radio]:nth-of-type(2):checked ~ .pages .page:nth-of-type(2) .input {
            opacity: 1;
            -webkit-transform: translateX(0%);
            transform: translateX(0%);
            -webkit-transition: all 0.5s;
            transition: all 0.5s;
        }
        input[type=radio]:nth-of-type(2):checked ~ .pages .page:nth-of-type(2) .input:nth-child(1) {
            -webkit-transition-delay: 0.2s;
            transition-delay: 0.2s;
        }
        input[type=radio]:nth-of-type(2):checked ~ .pages .page:nth-of-type(2) .input:nth-child(2) {
            -webkit-transition-delay: 0.4s;
            transition-delay: 0.4s;
        }
        input[type=radio]:nth-of-type(2):checked ~ .pages .page:nth-of-type(2) .input:nth-child(3) {
            -webkit-transition-delay: 0.6s;
            transition-delay: 0.6s;
        }
        input[type=radio]:nth-of-type(2):checked ~ .pages .page:nth-of-type(2) .input:nth-child(4) {
            -webkit-transition-delay: 0.8s;
            transition-delay: 0.8s;
        }
        input[type=radio]:nth-of-type(2):checked ~ .pages .page:nth-of-type(2) .input:nth-child(5) {
            -webkit-transition-delay: 1s;
            transition-delay: 1s;
        }

        @-webkit-keyframes hi {
            from {
                -webkit-transform: translateY(50%) scale(0, 0);
                transform: translateY(50%) scale(0, 0);
                opacity: 0;
            }
        }

        @keyframes hi {
            from {
                -webkit-transform: translateY(50%) scale(0, 0);
                transform: translateY(50%) scale(0, 0);
                opacity: 0;
            }
        }
    </style>
</head>
<body>
<!-- Header -->
<header style = 'background-color: #D1D1D1'><p style = 'color: #D1D1D1'></p></header>
<!-- Login/Register looking -->
<div class="container">
    <input type="radio" name="tab" id="signin" checked="checked"/>
    <input type="radio" name="tab" id="register"/>
    <div class="pages">
        <div class="page">
            <form method="post" action="LoginServlet">
            <div class="input">
            <img  style='width: 200px; height: 120px; margin-bottom:40px;' src="https://astanait.edu.kz/wp-content/uploads/2020/05/aitu-logo-white-2-300x154.png" >
                <div class="title">USERNAME</div>
                <input class="text" type="text" name="username" placeholder=""/>
            </div>
            <div class="input">
                <div class="title">PASSWORD</div>
                <input class="text" name="password" type="password" placeholder=""/>
            </div>
            <div class="input">
                <input type="submit" value="GO"/>
            </div></form>
        </div>
       <div class="page signup">
           <form method="post" action="index.jsp">
            <div class="input">
                <div class="title">USERNAME</div>
                <input class="text" name="username" type="text" placeholder=""/>
            </div>
            <div class="input">
                <div class="title">NAME</div>
                <input class="text" name="name" type="text" placeholder=""/>
            </div>
            <div class="input">
                <div class="title">SURNAME</div>
                <input class="text" name="surname" type="text" placeholder=""/>
            </div>
            <div class="input">
                <div class="title">GROUP</div>
                <input class="text" name="group" type="text" placeholder=""/>
            </div>
            <div class="input">
                <div class="title">PASSWORD</div>
                <input class="text" name="password" type="password" placeholder=""/>
            </div>
            <div class="input">
                <input type="submit" value="SIGN UP"/>
            </div></form>
        </div>
    </div>
    <div class="tabs">
        <label class="tab" for="signin">
            <div class="text">Sign In</div>
        </label>
   
        <label class="tab" for="register">
            <div class="text">Register</div>
        </label>
    </div>
</div>
<!-- Registration -->
<%
    try {
        Class.forName(Database.DRIVER_NAME);
        Connection con = DriverManager.getConnection(Database.CONNECTION_STRING,Database.USER_NAME,Database.PASSWORD);
        String username,name,surname,major,group,year,password, type;
        username=request.getParameter("username");
        name=request.getParameter("name");
        surname=request.getParameter("surname");
        group=request.getParameter("group");
        password=request.getParameter("password");
        major="undefinded";
        year="undefinded";
        type="0";
        if (group.length() == 7) {
            major=group.toUpperCase().substring(0,2);
            year="20"+group.substring(3,5);
        }else if(group.length()==8){
            major=group.toUpperCase().substring(0,3);
            year="20"+group.substring(4,6);
        }
        String query;
        if(username!=null) {
            query="insert into users(Username, Name, Surname, Major, SGroup, Year, Password, Type) values('"+username+"','"+name+"','"+surname+"','"+major+"','"+group+"','"+year+"','"+password+"','"+type+"')";
            Statement stmt=con.createStatement();
            ResultSet check= stmt.executeQuery("select * from users where Username='"+username+"'");
            if(check.next()) {
                out.println("<script>alert('This username is already used!');</script>");
            } else {
                PreparedStatement pst=con.prepareStatement(query);
                int i=pst.executeUpdate();
                Statement st=con.createStatement();
                ResultSet rs=st.executeQuery("select * from users");
                out.println("<script>alert('Thank you for registration!');</script>");
            }
        }
    } catch(Exception ignore) {
        //out.println(ignore);
    }
%>
</body>

</html>
