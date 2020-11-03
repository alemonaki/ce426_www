<%-- 
    Document   : newjsp
    Created on : Nov 2, 2020, 6:50:04 PM
    Author     : alkis
--%>

<%@page import="java.io.*"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <style>
        body{
            background-image: url("product.jpg");
        }
        table {
            border: 5px solid black;
            border-collapse: collapse;
            width: 70%;
            margin-left: auto;
            margin-right: auto;
        }
    </style>
    <body>
        <h1 style="text-align: center; color: blanchedalmond; font-size: 200%">Product page:</h1>
    <table border="3" width="1000" align="center">
            <tr bgcolor="#ffccff">
                <th style="text-align: center; font-size:200%;"><b>Barcode</b></th>
                <th style="text-align: center; font-size:200%;"><b>Name</b></th>
                <th style="text-align: center; font-size:200%;"><b>Color</b></th>
                <th style="text-align: center; font-size:200%;"><b>Description</b></th>
            </tr>
            <%
            String name = (String) request.getAttribute("jname");
            String barcode = (String) request.getAttribute("jbarcode");
            String color = (String) request.getAttribute("jcolor");
            String description = (String) request.getAttribute("jdescription");
            %>
            <tr bgcolor="#ffccff">
                <td style="text-align: center; font-size:200%;"><%=barcode%></td>
                <td style="text-align: center; font-size:200%;"><%=name%></td>
                <td style="text-align: center; font-size:200%;"><%=color%></td>
                <td style="text-align: center; font-size:200%;"><%=description%></td>
            </tr>
        </table>
            <hr/>
    </body>
</html>
