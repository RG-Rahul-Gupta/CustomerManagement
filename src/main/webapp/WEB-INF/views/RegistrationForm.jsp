<%@ page language="java" contentType="text/html; charset=UTF-8" 
pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<!DOCTYPE html>
<html>
<head>
<title>Customer Management System</title>
<meta name="viewport" content="width=device-width" charset="UTF-8">
<style>
body {
font-family: "Roboto", sans-serif;
background-image: url("https://st2.depositphotos.com/7752738/11353/v/450/depositphotos_113539176-stock-illustration-crm-vector-icon-customer-relationship.jpg");
background-size:50%;
background-repeat:no-repeat;
background-position: top;
}
header {
background-color:green;
padding: 2px;
text-align: center;
font-size: 15px;
color: white;
}
section {
float: inherit;
width: inherit;
height: 50px; 
background:black;
padding: 5px;
text-align: center;
}
button{
border-width:5px;
border-style:double;
border-color:green;
padding: 5px;
text-align: center;
margin-bottom:inherit;
margin-top: inherit; 
}
footer {
background-color:gray;
padding: 2px;
text-align: center;
font-size: 10px;
color: white;
}
input[type=text], select {
  width: 25%;
  height: 30px;
  border: 1px solid #ccc;
  border-radius: 4px;
  resize: vertical;
  position: inherit;
  margin-left: 1%;
}
label{
  padding: 10px;
  color: black;
  font-size: large;
  font-weight: bold;
  display: inline;
}
fieldset{
  padding: 10px;
  color: black;
  width: inherit;
}
li{
display:inline-block;
text-align: center;
margin-left: 10%;
margin-right: 10%;
margin-top: -2%;
}
</style>
</head>
<body>
<header>
<h1>CUSTOMER MANAGEMENT SYSTEM</h1>
</header>
<section>
<nav>
    <ul>
      <li><a href="/CustomerManagement/"><button>HomePage</button></a></li>
      <li><a href="showForm"><button>Register New Customer</button></a></li>
      <li><a href="searchForm"><button>Search Old Customer</button></a></li>
    </ul>
  </nav>
</section>
<form action="/CustomerManagement/addRecord" style="align-items: center;" class="" method="post">
<fieldset>
<legend>Registration of Customers Visiting the Stores</legend>
<input type="hidden" name="id" id="id" value="${Customers.id}"/>
<br>
<label>First Name :</label><br>
<input type="text" name="firstName" id="firstName" value="${Customers.firstName}" placeholder="Enter Your First Name"/>
<br>
<br>
<label>Last Name :</label><br>
<input type="text" name ="lastName" id="lastName" value="${Customers.lastName}" placeholder="Enter Your Last Name"/>
<br>
<br>
<label>Email ID    :</label><br>
<input type="text" name="emailId" id="emailId" value="${Customers.emailId}" placeholder="Enter Your Email ID"/>
<br>
<br>
<label>Submit the Details :</label>
<button type="submit" value="submit">SUBMIT</button>
<br>
<br>
<label>Update the Details of Existing Customers:</label>
<button type="submit" value="update" formaction="/CustomerManagement/saveRecord">UPDATE</button>
</fieldset>
</form>
<footer>
<h1>CUSTOMER RELATIONSHIP MANAGER</h1>
</footer>
</body>
</html>