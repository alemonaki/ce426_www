<%-- 
    Document   : error
    Created on : Nov 3, 2020, 4:25:02 PM
    Author     : alkis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://kit.fontawesome.com/a076d05399.js">
        <style>
            table{
                margin-left: auto;
                margin-right: auto;
                color:white;
            }
            body{
                background-image: url("error.jpg");
            }
            .btn {
                background-color: grey;
                border: none;
                color: white;
                padding: 12px 16px;
                font-size: 16px;
                cursor: pointer;
                
            }
            .btn:hover {
                background-color: black;
            }
            th, td {
                padding: 15px;
            }
        </style>
    </head>
    <body>
        <%
        String barcode = (String) request.getAttribute("jbarcode");
        %>
        <form action="index.html" method="post">
        <table border="10" width="1000" height="200">
            <thead>
                <tr>
                    <th style="font-size: 200%">ERROR!!</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td style="text-align: center; font-size: 120%">Sorry, this barcode:(<%=barcode%>) is already in the database.Press the button to enter another barcode.</td>
                </tr>
            </tbody>
        </table><br>
                <group>
                    <div style="text-align:center">
                       <button type="submit" class="btn"><i class="fas fa-arrow-circle-right"></i>Return</button>s
                </div>
                </group>
        </form>          
    </body>
</html>
