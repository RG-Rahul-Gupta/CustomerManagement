<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
margin-top:5%;
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
 padding:5px;
font-size:xx-large;
font-weight:bolder;
border: medium;
border: double; 
border-color: orange;
margin-left:28%;
margin-right:5%;
margin-bottom:5%;
width: 80%;
}
fieldset{
  padding: 10px;
  color: black;
  width: inherit;
}
table {
  font-family: Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
  align-content: center;
  text-align: center;
}
table td,table th {
  border: 1px solid #ddd;
  padding: 8px;
}
table tr:nth-child(even){background-color: #ccffcc;}
table tr:nth-child(odd){background-color: #e6ffff;}
table tr:hover {background-color: #ddd;}
table th {
  padding-top: 5px;
  padding-bottom: 5px;
  text-align: center;
  background-color: #04AA6D;
  color: white;
}
li{
display:inline-block;
text-align: center;
margin-left: 10%;
margin-right: 10%;
margin-top: -2%;
}
img{
padding:10px;
align-content: center;
border: medium;
border: double; 
border-color: orange;
margin-left:10%;
margin-right:5%;
margin-top:5%;
margin-bottom:1%;
width: 80%;
}
</style> 
<title>Insert title here</title>
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
<img alt="HomePage" src="https://res.cloudinary.com/der6mjm7p/image/upload/v1664554670/CustomerManagement/HomePage_nm9iby.jpg" />
<label> Home Page ScreenShot and Its Button Functionalities</label>
<img alt="RegistrationForm" src="https://res.cloudinary.com/der6mjm7p/image/upload/v1664554670/CustomerManagement/RegistrationForm_tpb3mk.jpg"/>
<label> Registration Form ScreenShot and Its Button Functionalities</label>
<img alt="SearchForm" src="https://res.cloudinary.com/der6mjm7p/image/upload/v1664554670/CustomerManagement/SearchForm_s0djqy.jpg"/>
<label> Search Form ScreenShot and Its Button Functionalities</label>
<img alt="Message Confirmation for Updating Record " src="https://res.cloudinary.com/der6mjm7p/image/upload/v1664643407/CustomerManagement/Confirmation_Message_of_Updating_Record_uqclov.jpg"/>
<label> Record Updation Confirmation Message ScreenShot </label>
<img alt="Message Confirmation for Searching Record " src="https://res.cloudinary.com/der6mjm7p/image/upload/v1664643407/CustomerManagement/Confirmation_Message_of_Deleting_Record_yj4hwf.jpg"/>
<label> Record Deletion Confirmation Message ScreenShot </label>
<footer>
<h1>CUSTOMER RELATIONSHIP MANAGER</h1>
</footer>
</body>
</html>