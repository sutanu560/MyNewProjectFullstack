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

    <title>Bus Detail Page</title>
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
			<h1>Bus Details</h1>
		</div>
		
		
		
		<div class="card justify-content-center" style="width: 18rem; background:#b3f0ff; margin:auto; width:29rem">
		  <div class="card-body">
		    <h4 class="card-title">Bus No :&nbsp;&nbsp;<strong style="color:MediumSeaGreen;">${busno}</strong> </h4>
		    <h4 class="card-title ">Route No :&nbsp;&nbsp;<strong style="color:MediumSeaGreen;">${routeno}</strong></h4>
		    <h4 class="card-title ">Driver Name :&nbsp;&nbsp;<strong style="color:MediumSeaGreen;">${drivername}</strong></h4>
		    <h4 class="card-title ">Driver Phone.No :&nbsp;<strong style="color:MediumSeaGreen;">${phoneno}</strong></h4>
		    <h4 class="card-title ">Destination :&nbsp;&nbsp;<strong style="color:MediumSeaGreen;">${destination}</strong></h4>
		    <h4 class="card-title ">Stopping :&nbsp;&nbsp;<strong style="color:MediumSeaGreen;">${source}</strong></h4>
		    <h4> <a href="#" class="card-link">Edit Bus Details</a> </h4>
		  </div>
		</div>
		
		
		
		
		
		
		    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
		    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
		
		
		
		    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
		    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
		    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
		   
  </body>
</html>

