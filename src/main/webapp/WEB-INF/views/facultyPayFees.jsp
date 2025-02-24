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

    <title>Faculty Pay Fees Page</title>
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
						        <a class="nav-link" href="facultyPage">Home <span class="sr-only">(current)</span></a>
						      </li>
						      
						      <li class="nav-item">
						        <a class="nav-link" href="facultyViewProfile">View Profile</a>
						      </li>
						      
						      <li class="nav-item">
						        <a class="nav-link" href="facultyBusRoute">Enroll Bus Route</a>
						      </li>
						      
						      <li class="nav-item">
						        <a class="nav-link" href="facultyPayFees">Pay Fees</a>
						      </li>
						      
						      <li class="nav-item">
						        <a class="nav-link" href="facultyLogout">Logout</a>
						      </li>
					    </ul>
				  </div>
		</nav>
		
		<div class="jumbotron text-center p-3 bg-danger text-white rounded-0">
			<h1>Pay Fees details</h1>
		</div>
		
		
		
			
	<div style="margin-top:15px; margin:auto width:50%;heigth:10%;font-size: 19px;" class="text-center">
		  <strong>${faculty} you have to pay Rs ${rem_amt}</strong>
	 </div>	
	 
	 <div style="margin:auto; margin-top:15px; width:35%;heigth:10%;font-size: 20px;" class="alert-success text-center">
		  <strong> ${msg}  </strong>
	 </div>
	 
	 <br>
	 
	<div style="background:#e2e2e2; width:45%; margin:auto;">
	    
	    <div style=" margin:auto;  width:88%;">
			<form action="facultyPayment" method="post">

			    <div class="form-group">
			    		<label style=" margin-top:15px;" for="exampleInputEmail1">Enter Account No</label>
						<input type="number" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="accountno" required>
					        
				</div>
			    
			    <div class="form-group" >
			    			<label  style="margin-top:10px; " for="exampleInputEmail1">Enter Account Holder Name</label>
						    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="accountname" required>
				</div>
				
				
			    <div class="form-group" >
			    			<label  style="margin-top:10px; " for="exampleInputEmail1">Enter The Amount You Want To Pay</label>
						    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="feestobepay" required>
				</div>
				
			     <div class="form-group">
			            <label for="exampleInputPassword1">Select Payment Method</label>		 
						<select  id="exampleInputEmail1" class="form-control" name="role" required>
							<option value=""></option>
							<option value="">Net Banking</option>
							<option value="">Credit Card</option>
							<option value="">Debit Card</option>
							<option value="">UPI</option>
						</select>
				 </div>
				 
				 <button style="margin-left: 245px;  margin-bottom:20px;" type="submit" class="btn btn-primary ">Pay Now</button>
				 
		</form>
	  </div>
		
	</div>	
		
		
		
		
		
		
		    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
		    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
		
		
		
		    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
		    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
		    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
		   
  </body>
</html>

