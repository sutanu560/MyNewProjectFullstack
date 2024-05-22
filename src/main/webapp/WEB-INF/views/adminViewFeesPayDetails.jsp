<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page isELIgnored="false" %>

<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

    <title>Fees Pay Details Page</title>
  </head>
  <body>
		
			
			<!-- navbar -->
			<nav class="navbar navbar-expand-lg navbar-light bg-light">
				  <a class="navbar-brand" href="#">College Bus Facility System</a>
				  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
				    <span class="navbar-toggler-icon"></span>
				  </button>
				
				  <div class="collapse navbar-collapse" id="navbarSupportedContent">
					    <ul class="navbar-nav ml-auto">
						      <li class="nav-item active">
						        <a class="nav-link" href="adminPage">Home <span class="sr-only">(current)</span></a>
						      </li>
						      
						      <li class="nav-item">
						        <a class="nav-link" href="adminAddBusRoute">Add Bus Route</a>
						      </li>
						      
						      <li class="nav-item">
						        <a class="nav-link" href="adminViewUserDetails">View User Details</a>
						      </li>
						      
						      <li class="nav-item">
						        <a class="nav-link" href="adminViewFeesPayDetails">View Fees Pay details</a>
						      </li>
						      
						      <li class="nav-item">
						        <a class="nav-link" href="adminLogout">Logout</a>
						      </li>
					    </ul>
				  </div>
		</nav>
		
		<div class="jumbotron text-center p-3 bg-danger text-white rounded-0">
			<h1>Fees Pay Details</h1>
		</div>
		
		
		
		
					
	<div class="card shadow">
	  <div class="card-body">
	
		<h4 class="p-2" style="border-bottom:2px solid green;">Student Fees List</h4>
		
		<table class="table table-bordered table-sm">
			<thead>
				<tr>
					<th>Student Id</th>
					<th>Student Name</th>
					<th>Account Name</th>
					<th>Account No</th>
					<th>Fees to be pay</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="s" items="${studentfees}">
					<tr>
						<td>${s.studentfeesid }</td>
						<td>${s.studentname }</td>
						<td>${s.accountname }</td>
						<td>${s.accountno }</td>
						<td>${s.feestobepay }</td>
						
					</tr>
				</c:forEach>
			</tbody>
		</table>	
		
		</div>
	</div>		
		
		
					
	<div class="card shadow">
	  <div class="card-body">	
		<h4 class="p-2" style="border-bottom:2px solid green;">Faculty Fees List</h4>
		<table class="table table-bordered table-sm">
			<thead>
				<tr>
					<th>Faculty Id</th>
					<th>Faculty Name</th>
					<th>Account Name</th>
					<th>Account No</th>
					<th>Fees to be pay</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="f" items="${facultyfees}">
					<tr>
						<td>${f.facultyfeesid }</td>
						<td>${f.facultyname }</td>
						<td>${f.accountname }</td>
						<td>${f.accountno }</td>
						<td>${f.feestobepay }</td>
						
					</tr>
				</c:forEach>
			</tbody>
		</table>	
		
		</div>
	</div>		
			
		
		
		    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
		    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
		
		
		
		    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
		    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
		    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
		   
  </body>
</html>

