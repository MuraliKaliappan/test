<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Admin's Dashboard</title>
		
	<link rel="stylesheet" href="resources\bootstrap-3.3.7-dist\css\bootstrap.css">
	<link rel="stylesheet" href="resources\bootstrap-3.3.7-dist\css\bootstrap.min.css">
	
	<script src="resources\jquery-3.3.1\jquery.js"></script>
	
	<script src="resources\bootstrap-3.3.7-dist\js\bootstrap.min.js"></script>
	<script type="text/javascript">
		$(document).ready(function(){
			
			$(".nav a[href='#tripManagement']").click(function() {
				$('#tripManagement').load('showTripManagement');
			})
			
			$(".nav a[href='#routeCost']").click(function() {
				$('#routeCost').load('showRouteCost');
			})
	
			
		})
	
	</script>
	
</head>
<body>
		<div class="page-header"> <center>  <h3>  <strong> Admin's Dashboard </strong>  </h3> </center>  </div>
		
		
		<div class="container-fluid">
			
			
			<ul class="nav nav-tabs ">
			
				<li class="active"> <a data-toggle="tab" href="#profile"> <i class="glyphicon glyphicon-user"> </i> </a> </li>
				
				<li> <a data-toggle="tab" href="#tripManagement"> Trip Management </a> </li>
				
				<li> <a data-toggle="tab" href="#routeCost"> Admin menu 2 </a> </li>
				
				<li> <a data-toggle="tab" href="#adminMenu3" > Admin menu 3 </a> </li>
				
				<li> <a data-toggle="tab" href="#adminMenu4" > Admin menu 4 </a> </li>
				
				<li> <a data-toggle="tab" href="#adminMenu5" > Change Password </a> </li>		
				
				<li class="navbar-right" title="logout"> <a data-toggle="tab" href="#logout"> <i class="glyphicon glyphicon-off"> </i> </a> </li>

			</ul>
			
				
			
			

			<div class="tab-content">
			
				
				
				<div id="tripManagement" class="tab-pane fade ">   </div>
				
				<div id="routeCost" class="tab-pane fade"> <%-- <jsp:include page="/WEB-INF/views/tripSelection.jsp"></jsp:include> --%> </div>
				
				<div id="adminMenu3" class="tab-pane fade"><%-- <jsp:include page="/WEB-INF/views/update.jsp"></jsp:include>  --%> </div>
				 
				<div id="adminMenu4" class="tab-pane fade"> <%-- <jsp:include page="/WEB-INF/views/challan.jsp"></jsp:include>  --%> </div>
				
				<div id="passwordChange" class="tab-pane fade"> <%-- <jsp:include page="/WEB-INF/views/passwordChange.jsp"></jsp:include> --%> </div>
				
				
				
				<div id="logout" class="tab-pane fade">  logout</div>
				
			</div>
		</div>
</body>
</html>