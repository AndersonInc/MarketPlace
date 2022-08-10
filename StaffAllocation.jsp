<%-- 
    Document   : StaffCat
    Created on : Aug 7, 2022, 10:21:50 PM
    Author     : ADMIN
--%>
 <%@page import="java.sql.*,java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="styling.css" type="text/css"/>
        <title>staff allocation</title>
          
        <style>
            table,td{
                border:1px black solid
            }
        </style>
    </head>
    <body>
        <div class="container" >
    <table>
        <th>product_Line</th>
        <th>product</th>
        <th>number of workers assigned</th>
   <%
                try{
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn1=DriverManager.getConnection("jdbc:mysql://localhost:3306/marketplex_one","root","");
                Statement st=conn1.createStatement();
                Statement st1=conn1.createStatement();
                Statement st2=conn1.createStatement();
                Statement st3=conn1.createStatement();
                String sql1="select count(*) from staffdetails where catId=1";
                String sql2="select count(*) from staffdetails where catId=2";
                String sql3="select count(*) from staffdetails where catId=3";
                String sql4="select count(*) from staffdetails where catId=4";
                ResultSet r1=st.executeQuery(sql1);
                ResultSet r2=st1.executeQuery(sql2);
                 ResultSet r3=st2.executeQuery(sql3);
                  ResultSet r4=st3.executeQuery(sql4);
                while(r1.next()){
              
               %>
              
        
        <tr>
                <td rowspan="3">Furniture</td>
                <td>Sofas(long_Term)</td>
                <td>
                   <%=r1.getInt(1)*4/7%>
                 </td>
         </tr> 
            <tr>  <td>Beds(Middle_Term)</td>
                <td><%=r1.getInt(1)*2/7%></td>
            </tr>
            <tr>  <td>Chairs(Short_Term)</td>
                <td><%=r1.getInt(1)*1/7%></td>
            </tr><%}%>
           <% 
            while(r2.next()){
            %>
            <tr>
                 
                <td rowspan="3">Bakery</td>
                <td>Cakes(long_Term)</td>
                <td><%=r2.getInt(1)*4/7%></td>
            </tr> 
            
                
            
                <tr><td>Bread(Middle_Term)</td>
                    <td><%=r2.getInt(1)*2/7%></td>
                </tr>
            <tr>  <td>Cookies(Short_term)</td>
                <td><%=r2.getInt(1)*1/7%></td>
            </tr><%}%>
            <% 
            while(r3.next()){
            %>
             <tr>
                 <td rowspan="3">Clothing</td>
                  <td>Jackets(long_Term)</td>
                  <td><%=r3.getInt(1)*4/7%></td>
            </tr> 
            <tr>
                <td>T-shirts(Short_Term)</td>
                <td><%=r3.getInt(1)*2/7%></td>
            </tr>
                <tr>
                    <td>Socks(Middle_Term)</td>
                     <td><%=r3.getInt(1)*1/7%></td>
                </tr><%}%>
                 <% 
            while(r4.next()){
            %>
             <tr>
                <td rowspan="3">Stationary</td>
                 <td>Black_Books(long_Term)</td>
                 <td><%=r4.getInt(1)*4/7%></td>
                
            </tr> 
           
               
            <tr> <td>Pens(Middle_Term)</td>
                 <td><%=r4.getInt(1)*2/7%></td>
            </tr>
            <tr>   <td>Pencils(Short_Term)</td>
                   <td><%=r4.getInt(1)*1/7%></td>
            </tr><%}%>
        
              
              
             <% }catch(Exception e){
               e.printStackTrace();
} %> 
    
        
           
        </table>
        </div>
     </boby>
 </html>
