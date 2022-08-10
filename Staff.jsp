<!DOCTYPE html>
<!--
Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Html.html to edit this template
-->
<html lang="en-us">
    <head>
        <link href="style.css " rel="stylesheet" >
        <meta charset="UTF-8">
        <title>Registration Form</title>
        <link rel="stylesheet" href="styling.css" type="text/css"/>

      
    </head>
       
    <body>
        <h1>Employee Registration</h1>
        <form method="post" action="Staff.jsp">
        <div class="container">

            <div class="row">
                <div class="col-10">
                    <label for="fname">First Name:</label>
                </div>
                <div class="col-90">
                    <input type="text" id="fname" name="firstname" placeholder="Enter your first name">
                </div>
            </div>
            <div class="row">
                <div class="col-10">
                    <label for="lname">Last Name:</label>
                </div>
                <div class="col-90">
                    <input type="text" id="lname" name="lastname" placeholder="Enter your last name">
                </div>
            </div>
            <div class="row">
                <div class="col-10">
                    <label for="email">Email:</label>
                </div>
                <div class="col-90">
                    <input type="email" id="email" name="email" placeholder="eg hairatu@gmail.com">
                </div>
            </div>
            
            <div class="row">
                <div class="col-10">
                    <label for="gender" required >Gender:</label>
                </div>
                <div class="col-90">
                    <input type="radio" id="male" name="gender" value="male"/>Male
                    <input type="radio" id="female" name="gender" value="female"/>Female
                </div>
            </div>
            <div class="row">
                <div class="col-10">
                    <label for="product">Category:</label>
                </div>
                <div class="col-90">
                    <input type="text" id="cat" name="cat" >
                </div>
            </div>

             <div class="row">
                <div class="col-10">
                    <label for="product">Category_ID:</label>
                </div>
                <div class="col-90">
                    <input type="text" id="catId" name="catId" >
                </div>
            </div>
            <div class="row">
                <input type="submit" value="Registered">
            </div>  
        </div>
    </form>
        <%@page import="java.sql.*,java.util.*"%>
          <%
  //  String sId=request.getParameter("sid");
    String fname=request.getParameter("firstname");
    String lname=request.getParameter("lastname");
    String email=request.getParameter("email");
    String gender=request.getParameter("gender");
    String category=request.getParameter("cat");
   // String designation=request.getParameter("des");
    String catId=request.getParameter("catId");

    System.out.println(fname);

    try{
         Class.forName("com.mysql.jdbc.Driver");
        Connection conn1=DriverManager.getConnection("jdbc:mysql://localhost:3306/marketplex_one","root","");
   
        Statement st2= conn1.createStatement();
       // while(rs1.next()){


        String InsertQuery = "insert into staffdetails(fname,lname,email,gender,category,catId) values('"+fname+"','"+lname+"', '"+email+"','"+gender+"','"+category+"','"+catId+"')";




        st2.executeUpdate(InsertQuery);

       //  }

      }

    catch(Exception error){
    out.println(error);

         }
     %>
    </body>
</html
             
        


