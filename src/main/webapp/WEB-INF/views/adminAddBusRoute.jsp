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

    <title>Add Bus Route Page</title>
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
			<h1>Add Bus Route</h1>
		</div>

		
		
		
	<div style="background:#e2e2e2; width:45%; margin:auto;">
		<form action="adminAddedBusRoute" method="post" style=" margin:auto;  width:88%; ">
			
				 <div style="margin-top:-15px; ">
		            	<%
		            		String msg = (String)session.getAttribute("message");
		            		if(msg!=null)
		            		{
		            	%>
		            	
				            	<div style="margin-top:15px; " class="alert alert-success text-center" role="alert">
								  <strong> <%=msg %> </strong>
								</div>
			            	
		            	<%
			            		session.removeAttribute("message");
			            	}
		            	%>
		            	
		            </div>
	            
	            
				  <div class="form-group" >
				    <label  style="margin-top:10px; " for="exampleInputEmail1">Enter Bus.No</label>
				    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="busno" required>
				   </div>
				   
				  <div class="form-group">
				    <label for="exampleInputPassword1">Enter Route No</label>
				    <input type="text" class="form-control" id="exampleInputPassword1" name="routeno" required>
				  </div>
				  
				  <div class="form-group">
				    <label for="exampleInputPassword1">Enter Driver Name</label>
				    <input type="text" class="form-control" id="exampleInputPassword1" name="drivername" required>
				  </div>
				  
				  <div class="form-group">
				    <label for="exampleInputPassword1">Enter Driver Phone.No</label>
				    <input type="text" class="form-control" id="exampleInputPassword1" name="phoneno" required>
				  </div>
				  
				  <div class="form-group">
				    <label for="exampleInputPassword1">Enter Source</label>
				    <input type="text" class="form-control" id="exampleInputPassword1" name="source" required>
				  </div>
				  
				  <div class="form-group">
				    <label for="exampleInputPassword1">Enter Destination</label>
				    <input type="text" class="form-control" id="exampleInputPassword1" name="destination" required>
				  </div>
				  
				  <label for="exampleInputPassword1">Enter Stopping</label>
				  
				  <div class="form-group text-center" style="display:flex;">
				        
					    <label for="exampleInputPassword1">Stop1 </label>
					    <input type="text" class="form-control" id="exampleInputPassword1" name="stop1" required>
					     <label for="exampleInputPassword1">Stop2</label>
					    <input type="text" class="form-control" id="exampleInputPassword1" name="stop2" required>
					     <label for="exampleInputPassword1">Stop3</label>
					    <input type="text" class="form-control" id="exampleInputPassword1" name="stop3" required>
					     <label for="exampleInputPassword1">Stop4</label>
					    <input type="text" class="form-control" id="exampleInputPassword1" name="stop4" required>
					     <label for="exampleInputPassword1">Stop5</label>
					    <input type="text" class="form-control" id="exampleInputPassword1" name="stop5" required>
				  </div>
				  
				    <div class="form-group" style="display:flex; width=50%;" >
					     <label for="exampleInputPassword1">Stop6</label>
					    <input type="text" class="form-control" id="exampleInputPassword1" name="stop6" required>
					     <label for="exampleInputPassword1">Stop7</label>
					    <input type="text" class="form-control" id="exampleInputPassword1" name="stop7" required>
					     <label for="exampleInputPassword1">Stop8</label>
					    <input type="text" class="form-control" id="exampleInputPassword1" name="stop8" required>
					     <label for="exampleInputPassword1">Stop9</label>
					    <input type="text" class="form-control" id="exampleInputPassword1" name="stop9" required>
					    <label for="exampleInputPassword1">Stop10</label>
					    <input type="text" class="form-control" id="exampleInputPassword1" name="stop10" required>
				  </div>
				  
				  <div class="form-group">
				    <label for="exampleInputPassword1">Bus Fee Amount</label>
				    <input type="number" class="form-control" id="exampleInputPassword1"  name="feesAmount" required>
				  </div>
				  
				  <button style="margin-left: 245px;  margin-bottom:20px;" type="submit" class="btn btn-primary ">Add Bus Detail</button>
		  
		  </form>
	</div>
		
		
		
		
		
		
		    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
		    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
		
		
		
		    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
		    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
		    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
		   
  </body>
</html>

