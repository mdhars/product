<!DOCTYPE html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>New Customer</title>
<script src='<c:url value="/resources/js/jquery-2.1.4.js" />'></script>
<script src='<c:url value="/resources/js/react.js" />'></script>
<script src='<c:url value="/resources/js/typeahead.js" />'></script>
<script src='<c:url value="/resources/js/JSXTransformer.js" />'></script>
<script src='<c:url value="/resources/js/custom.js" />'></script>

<script src="<c:url value='/resources/js/bootstrap.js' />"></script>
<link rel="stylesheet" type="text/css"
	href="<c:url value='/resources/css/bootstrap.css' />" />
<link rel="stylesheet" type="text/css"
	href="<c:url value='/resources/css/bootstrap-theme.css' />" />

<link rel="stylesheet" type="text/css"
	href="<c:url value='/resources/css/simple-sidebar.css' />" />

<script type="text/jsx"
	src="<c:url value='/resources/component/Header.js' />"></script>
<script type="text/jsx"
	src="<c:url value='/resources/component/SidebarManage.js' />"></script>
	
<script type="text/jsx"
	src="<c:url value='/resources/component/Sidebar.js' />"></script>
<script type="text/jsx"
	src="<c:url value='/resources/component/NameTypeahead.js' />"></script>
<script type="text/jsx">
	$(document).ready(function(){
		//render header
		renderHeader('topnav','Manage');
	});
</script>
<script >
	$(document).ready(function(){

		//on select of customer name
		$('#cnames ').focusout(function(){
			var custId = $("#companyName").val();
			$.ajax({url:"getInfo",data:"custid="+custId,success:function(result){
				$('#contactName').val(result.contactName);
				$('#email').val(result.email);
				$("#mobileNum").val(result.phone1);
				$('#contactNum').val(result.phone2);
				$('#address').val(result.address);
			}});
		});
		$('#resetForm').click(function(){
			$('#companyName').val("");
			$('#contactName').val("");
			$('#email').val("");
			$("#mobileNum").val("");
			$('#contactNum').val("");
			$('#address').val("");
		})
	});
	
	
		
</script>
</head>
<body>

	<div id="wrapper">
		<div class="container">

			<%-- <%@include file="../layout/sidebar-new.jsp" %> --%>
			<div id="sidemenu"></div>
			<script type="text/jsx">
				React.render(<SidebarManage path="newcust"/>,document.getElementById('sidemenu'));
			</script>
			<div id="topnav"></div>
			<script type="text/jsx">
				//React.render(<Header tab="Manage"/>,document.getElementById('topnav'));
			</script>
			<c:if test="${not empty successMsg}">
 				<div id="sucessDiv" class="alert alert-success">
 					<c:out value="${successMsg}"/>
 				</div>
			</c:if>
			<c:if test="${not empty errorMsg}">
 				<div id="errorDiv" class="alert alert-danger">
 					<c:out value="${errorMsg}"/>
 				</div>
 			</c:if>
			<div id="page-content-wrapper">
				<form class="form-horizontal" action='newcust' method='POST'>
					<div id="cnames" class="form-group row">
					</div>
					<script type="text/jsx">
						React.render(<NameTypeahead compId="companyName" compLabel="Company Name" path="/manage/findCustomer"/>,document.getElementById('cnames'));
					</script> 
					<div class="form-group   ">
						<div class="col-xs-5">
							<label for="contactName" class="control-label">Contact Name</label> 
							<input type="text" class="form-control" name="contactName" id="contactName" placeholder="contact name">
						</div>
					</div>
					<div class="form-group  ">
						<div class="col-xs-5">
							<label for="phone1" class="control-label">Phone Number 1</label>
							<input type="tel" class="form-control" name="phone1" id="mobileNum" placeholder="mobile number">
						</div>
					</div>
					<div class="form-group  ">
						<div class="col-xs-5">
							<label for="phone2" class="control-label">Phone Number 2</label> 
							<input type="tel" class="form-control" name="phone2" id="phone2" placeholder="contact number">
						</div>
					</div>
					<div class="form-group  ">
						<div class="col-xs-5">
							<label for="email" class="control-label">Email</label> 
							<input type="email" class="form-control" name="email" id="email" placeholder="example@email.com">
						</div>
					</div>
					<div class="form-group  ">
						<div class="col-xs-5">
							<label for="address" class="control-label">Address</label>
							<textarea class="form-control" name="address" id="address" placeholder="address" rows="3"></textarea>
						</div>
					</div>

					<div class="form-group">
						<button type="submit" class="btn btn-primary">Save</button>
						<button type="button" id="resetForm" class="btn btn-link">Reset</button>
					</div>
				</form>
			</div>
		</div>
	</div>
	<script type="text/js">
	
	</script>   
</body>
</html>