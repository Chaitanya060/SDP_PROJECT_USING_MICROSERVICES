<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Spring Boot Project</title>
    <style>
     
        .search{
            float: right;
            color: white;
            padding: 12px 75px;
        }
        
        .button {
  background-color: black;
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
}
input[type=text],input[type=password],input[type=number],input[type=email],
select,input[type=date],input[type=file],textarea
{
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

label 
{
  padding: 12px 12px 12px 0;
  display: inline-block;
  font-weight: bold;
}

    </style>
</head>

<body>

<%@ include file="navbar.jsp" %>

<h3 align=center><u>Add Items</u></h3>

<br>

<form action="insertitem" method="post" enctype="multipart/form-data">

<table align=center>

<tr>
<td><label>Category</label></td>
<td>
<select name="category" required="required">
<option value="">---Select---</option>
<option value="Quick Eats">Quick Eats</option>
<option value="Chinese">Chinese</option>
<option value="Smoothies">Smoothies</option>
<option value="Ice Creams">Ice Creams</option>
<option value="Japanese">Japanese</option>


</select>
</td>
</tr>

<tr><td></td></tr>

<tr>
<td><label>Item Name</label></td>
<td><input type="text" name="name" required="required"/></td>
</tr>

<tr><td></td></tr>

<tr>
<td><label>Description</label></td>
<td>
<textarea name="description"></textarea>
</td>
</tr>

<tr><td></td></tr>

<tr>
<td><label>Price</label></td>
<td><input type="number" name="price" required="required" step="0.01" /></td>
</tr>


<tr><td></td></tr>

<tr>
<td><label>Image</label></td>
<td><input type="file" name="productimage" required="required"/></td>
</tr>

<tr><td></td></tr>
<tr><td></td></tr>

<tr align=center>
<td colspan=2><input type="submit" value="Add" class="button"></td>
</tr>

</table>

</form>
    
    
</body>

</html>
