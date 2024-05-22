<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<%@page isELIgnored="false" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register Here</title>
<link rel="stylesheet"  href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
	
</head>


<body>
	
	<!-- navbar -->
			<nav style="background:green;" class="navbar navbar-expand-lg navbar-light bg-light " >
				  <a class="navbar-brand" href="#">College Bus Facility System</a>
				  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
				    <span class="navbar-toggler-icon"></span>
				  </button>
				
				  <div class="collapse navbar-collapse" id="navbarSupportedContent">
					    <ul class="navbar-nav ml-auto">
						      <li class="nav-item active">
						        <a class="nav-link" href="/">Home <span class="sr-only">(current)</span></a>
						      </li>
						      
						      <li class="nav-item">
						        <a class="nav-link" href="adminLogin">Admin</a>
						      </li>
						      
						      <li class="nav-item">
						        <a class="nav-link" href="studentLogin">Student</a>
						      </li>
						      
						      <li class="nav-item">
						        <a class="nav-link" href="facultyLogin">Faculty</a>
						      </li>
						      
						      <li class="nav-item">
						        <a class="nav-link" href="register">Register</a>
						      </li>
					    </ul>
				  </div>
		</nav>
		
	
	<section class="vh-150 bg-image"
  style="background-image: url('https://mdbcdn.b-cdn.net/img/Photos/new-templates/search-box/img4.webp');">
  <div class="mask d-flex align-items-center h-100 gradient-custom-3">
    <div class="container h-100">
      <div class="row d-flex justify-content-center align-items-center h-100">
        <div style="flex: 0 0 60%; max-width: 57%;" class="col-12 col-md-9 col-lg-7 col-xl-6">
          <div class="card" style="border-radius: 15px; margin-top: 20px;">
            <div class="card-body p-5">
  
            
            <div>
            	<%
            	
            		String msg = (String)session.getAttribute("message");
            		if(msg!=null)
            		{
            			
            			
            			
            	%>
            	
            	<div class="alert alert-success text-center" role="alert">
				  <strong> <%=msg %> </strong>
				</div>
            	
            	<%
	            		session.removeAttribute("message");
	            	}
            	
            	%>
            	
            
            </div>
            
            
            
              <h2 class="text-uppercase text-center mb-5">Register Here!!</h2>

              <form action="registered" method="post" style=" margin-top: -15px;">

		                <div class="form-outline mb-4">
		                
		                  <input type="text" id="form3Example1cg" class="form-control form-control-lg" name="name" placeholder="" required/>
		                   <label class="form-label" for="form3Example1cg">User Name</label> 
		                </div>
		
		                <div class="form-outline mb-4">
		                
		                  <input type="password" id="form3Example1cg" class="form-control form-control-lg" name="password" placeholder="" required/>
		                   <label class="form-label" for="form3Example1cg">User Password</label> 
		                </div>
		                
		                <div class="form-outline mb-4">
		                
		                  <input type="text" id="form3Example1cg" class="form-control form-control-lg" name="dob" placeholder="" required/>
		                   <label class="form-label" for="form3Example1cg">User Dob</label> 
		                </div>
		                
		                <div class="form-outline mb-4">
		                
		                  <input type="text" id="form3Example1cg" class="form-control form-control-lg" name="department" placeholder="" required/>
		                   <label class="form-label" for="form3Example1cg">User Department</label> 
		                </div>
						
						
						 <div class="form-outline mb-4">
						 
							  <select id="role" id="form3Example1cg" class="form-control form-control-lg" name="role" placeholder="" required>
							    <option value=""></option>
							    <option value="admin">Admin</option>
							    <option value="student">Student</option>
							    <option value="faculty">Faculty</option>
							  </select>
							   <label class="form-label" for="form3Example1cg">Select a role</label> 
						 </div>
						 
						 
						<div class="form-outline mb-4">
		                
		                  <input type="text" id="form3Example1cg" class="form-control form-control-lg" name="phoneNo" placeholder="" required />
		                   <label class="form-label" for="form3Example1cg">User Ph.No</label> 
		                </div>
		                
		                <div class="form-outline mb-4">
		                
		                  <input type="text" id="form3Example1cg" class="form-control form-control-lg" name="address" placeholder="" required />
		                    <label class="form-label" for="form3Example1cg">User Address</label> 
		                </div>
						
		                <div class="form-check d-flex justify-content-center mb-5">
		                  <input style="margin-top: 0.41rem;margin-left: -18.2rem" class="form-check-input justify-content-left" type="checkbox" value="" id="form2Example3cg" />
		                  <label class="form-check-label" for="form2Example3g">
		                    <a href="#!" class="text-body"> I agree to the terms and conditions </a>
		                  </label>`
		                </div>
		
		                <div style=" margin-top: -25px;" class="d-flex justify-content-center">
		                  <button type="reset" style="margin-right:14px;"
		                    class="btn btn-success btn-lg btn-warning gradient-custom-4 text-body">Reset&nbsp;&nbsp;&nbsp;</button>
		                  <button type="submit"
		                    class="btn btn-success btn-lg gradient-custom-4 text-body">Register</button>
		                </div>

     
              </form>

              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
	  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
		    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
		
		
		
		    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
		    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
		    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
		    
</body>
</html>