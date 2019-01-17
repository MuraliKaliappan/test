<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%> 
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<meta name="viewport" content="width=device-width, initial-scale=1">
		
		<link rel="stylesheet" href="resources\bootstrap-3.3.7-dist\css\bootstrap.css">
		<link rel="stylesheet" href="resources\bootstrap-3.3.7-dist\css\bootstrap.min.css">
		
		<script src="resources\jquery-3.3.1\jquery.js"></script>
		
		<script src="resources\bootstrap-3.3.7-dist\js\bootstrap.min.js"></script>
		
		<title>
			Student's Dashboard
		</title>

		<script type="text/javascript">
			$(document).ready(function() {				
				var studentMail = "${studentMail}";
				if(studentMail != "") {
					sessionStorage.setItem("user",studentMail);
				} else {
					if(sessionStorage.getItem("user") == null){						
						window.location.href = '/AJBusManagement/'
					}					
				}
				
				
				
				$(".nav a[href='#additionalDetails']").click(function() {
					$('#additionalDetails').load('showAdditionalDetails?userName='+studentMail);
				})
		
				$(".nav a[href='#busTripSelection']").click(function() {
					$('#busTripSelection').load('showBusTripSelection');
				})
		
				$(".nav a[href='#updateForm']").click(function() {
					$('#updateForm').load('showUpdate');
				})
		
				$(".nav a[href='#passwordChange']").click(function() {
					$('#passwordChange').load('showPasswordChange');
				})
		
				$(".nav a[href='#paymentSlip']").click(function() {
					$('#paymentSlip').load('showPaymentSlip');
				})
		
				$(".nav a[href='#busId']").click(function() {
					$('#busId').load('showBusId');
				})
				
				$(".nav a[href='#logout']").click(function() {	
					sessionStorage.removeItem("user");
					window.location.href="/AJBusManagement/"
				})
				
			})
		</script>
</head>
	
	
	<body>
	
		<div class="page-header"> <center>  <h3>  <strong> Student's Dashboard </strong>  </h3> </center>  </div>
		
		
		<div class="container-fluid">
			
			
			<ul class="nav nav-tabs ">
			
				<li class="active"> <a data-toggle="tab" href="#profile"> <i class="glyphicon glyphicon-user"> </i> </a> </li>
				
				<li> <a data-toggle="tab" href="#additionalDetails"> Additional Details </a> </li>
				
				<li> <a data-toggle="tab" href="#busTripSelection"> Bus Trip Selection </a> </li>
				
				<li> <a data-toggle="tab" href="#updateForm" > Update the Details </a> </li>
				
				<li> <a data-toggle="tab" href="#passwordChange" > Change Password </a> </li>
				
				<li> <a data-toggle="tab" href="#paymentSlip" > Payment Slip </a> </li>
				
				<li> <a data-toggle="tab" href="#busId" > Bus ID </a> </li>
				
				<li> <a data-toggle="tab" href="#notification"> <i class="glyphicon glyphicon-bell"> </i> </a> </li>
				
				<li class="navbar-right" title="logout"> <a data-toggle="tab" href="#logout"> <i class="glyphicon glyphicon-off"> </i> </a> </li>

			</ul>
			
				
			
			

			<div class="tab-content">
			
				<div id="profile" class="tab-pane fade in active"> Hi , Welcome  ${studentUser} </div>
				
				<div id="additionalDetails" class="tab-pane fade ">   </div>
				
				<div id="busTripSelection" class="tab-pane fade"> <%-- <jsp:include page="/WEB-INF/views/tripSelection.jsp"></jsp:include> --%> </div>
				
				<div id="updateForm" class="tab-pane fade"><%-- <jsp:include page="/WEB-INF/views/update.jsp"></jsp:include>  --%> </div>
				 
				<div id="passwordChange" class="tab-pane fade"> <%-- <jsp:include page="/WEB-INF/views/passwordChange.jsp"></jsp:include> --%> </div>
				
				<div id="paymentSlip" class="tab-pane fade"> <%-- <jsp:include page="/WEB-INF/views/challan.jsp"></jsp:include>  --%> </div>
				
				<div id="busId" class="tab-pane fade"> <%-- <jsp:include page="/WEB-INF/views/id.jsp"></jsp:include> --%>  </div>
				
				<div id="notification" class="tab-pane fade">  notification </div>
				
				<div id="logout" class="tab-pane fade">  logout</div>
				
			</div>
			
			
			
		</div>		
	</body>
	
</html>