<%-- 
    Document   : product-list
    Created on : Nov 12, 2020, 8:35:20 PM
    Author     : alkis
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>List of products</title>
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
    </style>
    <body>
        <h1 style="text-align: center; color: blanchedalmond; font-size: 200%">List of products:</h1>
        <table border="3" width="1000" align="center">
            <tr bgcolor="#ffccff">
                <th style="text-align: center; font-size:200%;"><b>Barcode</b></th>
                <th style="text-align: center; font-size:200%;"><b>Name</b></th>
                <th style="text-align: center; font-size:200%;"><b>Color</b></th>
                <th style="text-align: center; font-size:200%;"><b>Description</b></th>
            </tr>
            <c:forEach items="${listProduct}" var="product">
                <tr bgcolor="#ffccff">
                    <td style="text-align: center; font-size:200%;"><c:out value="${product.barcode}" /></td>
                    <td style="text-align: center; font-size:200%;"><c:out value="${product.name}" /></td>
                    <td style="text-align: center; font-size:200%;"><c:out value="${product.color}" /></td>
                    <td style="text-align: center; font-size:200%;"><c:out value="${product.description}" /></td>
                </tr>
            </c:forEach>
        </table>
        <br>
        <form action="index.jsp" method="post">
                <group>
                    <div style="text-align:center">
                       <button type="submit" class="btn"><i class="fas fa-arrow-circle-right"></i>Return</button>
                </div>
                </group>
            </form>
    </body>
</html>
