<!DOCTYPE html>
 <%@page import="java.sql.*,java.util.*"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!--<link rel="stylesheet" href="styling.css" type="text/css"/>-->
        <title>Staff_Details</title>
        <style>table,th,td{
    border: 1px solid black;
            }th{
                background-color:black;
                color:white;
            }
      </style>
    </head>
    <body>
  
    <diV class="container">
               <div>
               <h1>Staff Details</h1>
               <h1>furniture</h1>
               </div>
         
        <div class="tab">
           
            <table>
                <th>Employee Id</th>
                <th>First Name</th>
                <th>Last Name</th>
                <th>email</th>
                <th>gender</th>
               
                <%
                try{
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn1=DriverManager.getConnection("jdbc:mysql://localhost:3306/marketplex_one","root","");
                Statement st=conn1.createStatement();
                String sql="select sid,fname,lname,email,gender from staffdetails where catId=1";
                ResultSet r=st.executeQuery(sql);
                while(r.next()){
                     %>
                <tr>
                    <td><%=r.getString("sid")%></td>
                    <td><%=r.getString("fname")%></td>
                    <td><%=r.getString("lname")%></td>
                    <td><%=r.getString("email")%></td>
                    <td><%=r.getString("gender")%></td>
                 </tr>
          <%}%>
            </table>
                  <%
                    String sql1="select count(sid ) from staffdetails where catId=1";
               
                
                ResultSet r1=st.executeQuery(sql1);
                while(r1.next()){
              
               %>
               <p>The total Number of staff  : <%=r1.getInt(1)%></p>
              
               </table>
             <% }}catch(Exception e){
               e.printStackTrace();
} %> 
         
       
        </div>
               <div>
              
               </div>
        <div class="tab">
            <h1>Bakery</h1>
          
            <table>
                <th>Employee Id</th>
                <th>First Name</th>
                <th>Last Name</th>
                <th>email</th>
                <th>gender</th>
               
                <%
                try{
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn1=DriverManager.getConnection("jdbc:mysql://localhost:3306/marketplex_one","root","");
                Statement st=conn1.createStatement();
                String sql2="select sid,fname,lname,email,gender from staffdetails where catId=2";
                ResultSet r2=st.executeQuery(sql2);
                while(r2.next()){
                     %>
                <tr>
                    <td><%=r2.getString("sid")%></td>
                    <td><%=r2.getString("fname")%></td>
                    <td><%=r2.getString("lname")%></td>
                    <td><%=r2.getString("email")%></td>
                    <td><%=r2.getString("gender")%></td>
                 </tr>
          <%}%>
            </table>
                  <%
                    String sql3="select count(sid ) from staffdetails where catId=2";
               
                
                ResultSet r3=st.executeQuery(sql3);
                while(r3.next()){
              
               %>
               <p>The total Number of staff  : <%=r3.getInt(1)%></p>
              
               </table>
             <% }}catch(Exception e){
               e.printStackTrace();
} %> 
         
        
        </div>
              <div>
              
               </div>
        <div class="tab">
            <h1>Clothing</h1>
           
            <table>
                <th>Employee Id</th>
                <th>First Name</th>
                <th>Last Name</th>
                <th>email</th>
                <th>gender</th>
               
                <%
                try{
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn1=DriverManager.getConnection("jdbc:mysql://localhost:3306/marketplex_one","root","");
                Statement st=conn1.createStatement();
                String sql4="select sid,fname,lname,email,gender from staffdetails where catId=3";
                ResultSet r4=st.executeQuery(sql4);
                while(r4.next()){
                     %>
                <tr>
                    <td><%=r4.getString("sid")%></td>
                    <td><%=r4.getString("fname")%></td>
                    <td><%=r4.getString("lname")%></td>
                    <td><%=r4.getString("email")%></td>
                    <td><%=r4.getString("gender")%></td>
                 </tr>
          <%}%>
            </table>
                  <%
                    String sql5="select count(sid ) from staffdetails where catId=3";
               
                
                ResultSet r5=st.executeQuery(sql5);
                while(r5.next()){
              
               %>
               <p>The total Number of staff  : <%=r5.getInt(1)%></p>
              
               </table>
             <% }}catch(Exception e){
               e.printStackTrace();
} %> 
         
       
        </div>
              <div>
              
               </div>
        <div class="tab">
            <h1>Stationary</h1>
          
            <table>
                <th>Employee Id</th>
                <th>First Name</th>
                <th>Last Name</th>
                <th>email</th>
                <th>gender</th>
               
                <%
                try{
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn1=DriverManager.getConnection("jdbc:mysql://localhost:3306/marketplex_one","root","");
                Statement st=conn1.createStatement();
                String sql7="select sid,fname,lname,email,gender from staffdetails where catId=4 ";
                ResultSet r7=st.executeQuery(sql7);
                while(r7.next()){
                     %>
                <tr>
                    <td><%=r7.getString("sid")%></td>
                    <td><%=r7.getString("fname")%></td>
                    <td><%=r7.getString("lname")%></td>
                    <td><%=r7.getString("email")%></td>
                    <td><%=r7.getString("gender")%></td>
                 </tr>
          <%}%>
            </table>
                  <%
                    String sql8="select count(sid ) from staffdetails where catId=4";
               
                
                ResultSet r8=st.executeQuery(sql8);
                while(r8.next()){
              
               %>
               <p>The total Number of staff  : <%=r8.getInt(1)%></p>
              
               </table>
             <% }}catch(Exception e){
               e.printStackTrace();
} %> 
         
    
        </div>
   <form method="post" action="buttonReallocation.jsp">
          <input type="submit" value="reallocate" style="background-color:blue" >
     </form> 
    </div>
    
    </body>
    </html>