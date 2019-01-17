<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Trip Management</title>
</head>
<body>

	<div class="container-fluid">		
		<h3>  <strong> Student's Trip Selection Summary</strong>  </h3>		
	</div>

	<div class="row">
			
				<div class="col-md-offset-1 col-md-9"> 
				
					<form class="form-default" role="form" action="getTripDetails" method="post">
			
						<div class="page-header">						
							
							<div class="row form-group">
									<label class="control-label col-md-3" for="area"> Degree : </label> 
									<div class="col-md-6"> 
										<div class="input-group">
											<span class="input-group-addon"> <i class="glyphicon glyphicon-education"> </i> </span>
											<select class="form-control" name="degree"> 
												<option disabled> Select Degree </option>
												<option> UG</option>
												<option> PG</option>
												<option> M.Phil</option>
												<option> Diploma</option>
											</select>	
										</div>
									</div>
								</div>	
							
							
							<div class="row form-group">
								<label class="control-label col-md-3" for="area"> Year : </label> 
								<div class="col-md-6"> 
									<div class="input-group">
										<span class="input-group-addon"> <i class="glyphicon glyphicon-bookmark"> </i> </span>
										<select class="form-control" name="dateOfJoining"> 
											<option disabled> Select Year </option>
											<option> First Year</option>
											<option> Second Year</option>
											<option> Third Year</option>												
										</select>	
									</div>
								</div>
							</div>	
																				
							<div class="row form-group">
								<label class="control-label col-md-3" for="area"> Area : </label> 
								<div class="col-md-6"> 
									<div class="input-group">
										<span class="input-group-addon"> <i class="glyphicon glyphicon-map-marker"> </i> </span>
										<select class="form-control" name="area"> 
											<option disabled> Select Area </option>
											<option> Rajapalayam </option>
											<option> Srivilliputur </option>
											<option> Sivakasi </option>
										</select> 
									</div>
								</div>
							</div>												
						</div>
						
						<div class="row form-group">
							<div class="col-md-offset-9">
								<button type="submit" class="btn btn-success"> Get Trip Details </button> 
								<button type="button" class="btn btn-danger"> Cancel </button> 
							</div>
						</div>
						
					</form>
				
				</div>
			
			</div>


</body>
</html>