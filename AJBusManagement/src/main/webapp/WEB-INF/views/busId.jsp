<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<meta name="viewport" content="width=device-width, initial-scale=1">
		
		<link rel="stylesheet" href="resources\bootstrap-3.3.7-dist\css\bootstrap.css">
		<script src="resources\jquery-3.3.1\jquery.js"></script>
		<script src="resources\bootstrap-3.3.7-dist\js\bootstrap.min.js"></script>
		
		
		<title>
			Bus ID
		</title>
		
	</head>
	
	
	<body>
		
		<div class="container-fluid">
		
		<h3> <strong> Bus ID </strong> </h3>
			
			<div class="row">
			
				<div class="col-md-offset-2 col-md-7"> 
				
					<form class="form-default" role="form">
			
						<div class="page-header">
						
							<fieldset>
							
								<div class="row form-group "> 
									<div class="col-md-offset-5 col-md-5"> 
										<div class="input-group"> 
												<div class="input-group-addon"><label class="control-label" for="photo"> Photo : </label></div>
												<input type="text" value="" class="form-control" id="photo" >
										</div>
									</div>
								</div>
																
								<div class="row form-group">
									<label class="control-label col-md-3" for="name"> Name : </label> 
									<div class="col-md-7"> 
										<div class="input-group">
											<span class="input-group-addon"> <i class="glyphicon glyphicon-user"> </i> </span>
											<input type="text" value="FULLNAME" class="form-control" id="name" disabled> 
										</div>					
									</div>
								</div>	
												
														
								<div class="row form-group">
									<label class="control-label col-md-3" for="degree"> Degree : </label> 
									<div class="col-md-7"> 
										<div class="input-group">
											<span class="input-group-addon"> <i class="glyphicon glyphicon-education"> </i> </span>
											<input type="text" value="UG" class="form-control" id="degree" disabled> 
										</div>
									</div>
								</div>

								<div class="row form-group">
									<label class="control-label col-md-3" for="year"> Joining Month & Year : </label>
									<div class="col-md-7"> 
										<div class="input-group">
											<span class="input-group-addon"> <i class="glyphicon glyphicon-bookmark"> </i> </span>
											<input type="text" value="JUNE,2014" class="form-control" id="year" disabled> 
										</div>
									</div>
								</div>
							
								<div class="row form-group">
									<label class="control-label col-md-3" for="blood"> Blood Group : </label> 
									<div class="col-md-7"> 
										<div class="input-group">
											<span class="input-group-addon"> <i class="glyphicon glyphicon-tint"> </i> </span>
											<input type="text" value="AB+" class="form-control" id="blood" disabled> 
										</div>
									</div>
								</div>
								
								<div class="row form-group">
									<label class="control-label col-md-3" for="dob"> Date Of Birth : </label> 
									<div class="col-md-7"> 
										<div class="input-group">
											<span class="input-group-addon"> <i class="glyphicon glyphicon-calendar"> </i> </span>
											<input type="text" value="12/04/1994" class="form-control" id="dob" disabled> 
										</div>
									</div>
								</div>
								
								<div class="row form-group">
									<label class="control-label col-md-3" for="mob"> Contact Number : </label> 
									<div class="col-md-7"> 
										<div class="input-group">
											<span class="input-group-addon"> <i class="glyphicon glyphicon-earphone"> </i> </span>
											<input type="number" value="9999999999" class="form-control" id="mob" disabled> 
										</div>
									</div>
								</div>
								
								<div class="row form-group">
									<div class="col-md-3"> <label class="control-label" for="emergency"> Emergency Contact : </label> </div>
									<div class="col-md-7"> 
										<div class="input-group">
											<span class="input-group-addon"> <i class="glyphicon glyphicon-phone"> </i> </span>
											<input type="number" class="form-control" id="emergency" value="9999999999" disabled> 
										
										</div>
									</div>
								</div>	
							
								<div class="row form-group">
									<label class="control-label col-md-3" for="area"> Area : </label> 
									<div class="col-md-7"> 
										<div class="input-group">
											<span class="input-group-addon"> <i class="glyphicon glyphicon-map-marker"> </i> </span>
											<input type="text" value="Rjplm" class="form-control" id="area" disabled> 
										</div>
									</div>
								</div>
								
								<div class="row form-group">
									<label class="control-label col-md-3" for="trip"> Trip : </label> 
									<div class="col-md-7"> 
										<div class="input-group">
											<span class="input-group-addon"> <i class="glyphicon glyphicon-transfer"> </i> </span>
											<input type="text" value="Trip I" class="form-control" id="trip" disabled> 
										</div>
									</div>
								</div>
								
								<div class="row form-group">
									<label class="control-label col-md-3" for="validMonth"> ID validation Month : </label> 
									<div class="col-md-7"> 
										<div class="input-group">
											<span class="input-group-addon"> <i class="glyphicon glyphicon-time"> </i> </span>
											<input type="text" value="NOVEMBER, 2018" class="form-control" id="validMonth" disabled> 
										</div>
									</div>
								</div>
								
							</fieldset>
						</div>
						
						<div class="row form-group ">
							<span class="col-md-offset-9 btn glyphicon glyphicon-print btn-lg btn-info" data-toggle="tooltip" data-placement="auto" title="Print"></span> 
						</div>
						
					</form>
				
				</div>
			
			</div>
					
		</div>
		
		<div class="container">
			<div class="row">
				<div class="col-md-5">
					<div class="alert alert-warning alert-dismissable"> 
						<button type="button" class="close" data-dismiss="alert"> x </button>
						<strong> Your Bus Time (in the morning) at your area : 8.00 am and (in the evening) at your college : 4.00 pm  </strong> 
					</div>
				</div>
			</div>
		</div>
		
	</body>
	
</html>