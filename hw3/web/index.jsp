<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>Product Database</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://kit.fontawesome.com/a076d05399.js">
        <style>
            body{
                background-image: url("images.jpg");
                text-align: center;
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
     </head>
    <body>
        <form action="insert" method="post">
            <h1 style="color:grey"><b>Enter the product you want to insert to the database.</b></h1>
        <pre>
            <input type="text" name="barcode" placeholder="barcode" autofocus required/>


            <input type="text" name="name" placeholder="name" required/>


            <input type="text" name="color" placeholder="color" required/>


            <input type="text" name="description" placeholder="description" required/>


            <button type="submit" class="btn"><i class="fas fa-arrow-circle-right"></i>Insert</button>
        </pre>
        </form>
        <form action="list" method="post">
        <pre>
            <button type="submit" class="btn"><i class="fas fa-arrow-circle-right"></i>Show List of Products</button>   
        </pre>
        </form>       
    </body>
</html>