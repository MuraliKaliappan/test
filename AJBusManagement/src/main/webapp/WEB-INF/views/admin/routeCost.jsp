<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Admin Route Cost</title>
</head>
<body>

	<div class="container-fluid">		
		<h3>  <strong> Trip Route Cost </strong>  </h3>		
	</div>

	<div class="row">
			
				<div class="col-md-offset-1 col-md-9"> 
				
					<form class="form-default" role="form" action="saveRouteCost" method="post">
			
						<div class="page-header">											
							
							<div class="row form-group">
								<label class="control-label col-md-3" for="fee"> Rajapalayam : </label> 
								<input type="hidden" name="adminRouteCostModels[0].routeName" value="rajapalayam"/>
								<div class="col-md-7"> <input type="number" class="form-control" " name="adminRouteCostModels[0].amount"> </div>
							</div>
							
							<div class="row form-group">
								<label class="control-label col-md-3" for="fee"> Srivilliputhur : </label> 
								<input type="hidden" name="adminRouteCostModels[1].routeName" value="srivilliputhur"/>
								<div class="col-md-7"> <input type="number" class="form-control" " name="adminRouteCostModels[1].amount"> </div>
							</div>
							
							<div class="row form-group">
								<label class="control-label col-md-3" for="fee"> Sivakasi : </label> 
								<input type="hidden" name="adminRouteCostModels[2].routeName" value="sivakasi"/>
								<div class="col-md-7"> <input type="number" class="form-control"  name="adminRouteCostModels[2].sivakasi"> </div>
							</div>
								
							
							
																			
						</div>
						
						<div class="row form-group">
							<div class="col-md-offset-9">
								<button type="submit" class="btn btn-success"> Save Trip Cost </button> 
								<button type="button" class="btn btn-danger"> Cancel </button> 
							</div>
						</div>
						
					</form>
				
				</div>
			
			</div>


</body>
</html>