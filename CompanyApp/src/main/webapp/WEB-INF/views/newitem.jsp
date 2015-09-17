<!DOCTYPE html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
	<script src='<c:url value="/resources/js/jquery-2.1.4.js" />'></script>
	<script src='<c:url value="/resources/js/react.js" />'></script>
	<script src='<c:url value="/resources/js/JSXTransformer.js" />'></script>
    <script src="<c:url value='/resources/js/typeahead.js' />"></script>
    <script src="<c:url value='/resources/js/bootstrap.js' />"></script>
    <script src="<c:url value='/resources/js/bootstrap-confirmation.js' />"></script>
    
	<link rel="stylesheet" type="text/css"  href="<c:url value='/resources/css/bootstrap.css' />" />
    <link rel="stylesheet" type="text/css"  href="<c:url value='/resources/css/bootstrap-theme.css' />" />
    
    <link rel="stylesheet" type="text/css"  href="<c:url value='/resources/css/simple-sidebar.css' />" />
    
    <link rel="stylesheet" type="text/css"  href="<c:url value='/resources/css/custom.css' />" />
    
    
	<script type="text/jsx" src="<c:url value='/resources/component/Sidebar.js' />"></script>
	<script type="text/jsx" src="<c:url value='/resources/component/SidebarManage.js' />"></script>
	<script type="text/jsx"	src="<c:url value='/resources/component/NameTypeahead.js' />"></script>
	<script type="text/jsx"	src="<c:url value='/resources/component/NewItemDialog.js' />"></script>
	<script type="text/jsx"	src="<c:url value='/resources/component/ItemList.js' />"></script>
	<script type="text/jsx" src="<c:url value='/resources/component/Header.js' />"></script>
	<script type="text/jsx">
	$(document).ready(function(){
		//render header
		$(document).ready(function(){
			renderHeader('navmenu','Manage');
		});

		//on select of customer name
		$('#cnames ').focusout(function(){
			var custId = $("#companyName").val();
			$.ajax({url:"getItems",data:"custid="+custId,success:function(result){
				//React.render(<ItemList items={[{dimension:"11x11x11",ply:"5",gsm:"120",price:"25"}]}/>,document.getElementById('listItem'));
				React.render(<ItemList items={result}/>,document.getElementById('listItem'));
			}});
		});
	});
	$(document).on("click", ".editItem", function () {
	     //var dimension = ;
	     $(".modal-body #dimension").val( $(this).data('dimension') );
		$(".modal-body #price").val( $(this).data('price') );
		$(".modal-body #ply").val( $(this).data('ply') );
		$(".modal-body #gsm").val( $(this).data('gsm') );
		$(".modal-body #itemId").val( $(this).data('itemId') );
		$(".modal-body #companyId").val( $("#companyName").val());
	});

	$(document).on("click", ".addItem", function () {
		$(".modal-body #companyId").val( $("#companyName").val());
	});
	</script>
</head>
<body>
<div id="wrapper">

 <div class="container"> 
<div id="smenu"></div>
<script type="text/jsx" >
	React.render(<SidebarManage path="newitem"/>,document.getElementById('smenu'));
</script>

<%-- <%@include file="../layout/header.jsp" %> --%>
<div id="navmenu"></div>

<div id="page-content-wrapper">
	<div id="cnames" class="form-group row">
	</div>
	<script type="text/jsx">
			React.render(<NameTypeahead compId="companyName" compLabel="Company Name" path="/manage/findCustomer"/>,document.getElementById('cnames'));
	</script>
	<div class="form-group row">
	<div class="col-xs-6 ">
		<div class="scrollable-dropdown-menu">
			<label for="dimension">Items</label>
			<button type="button" class="btn btn-link addItem" data-toggle="modal" data-target="#myModal">Add</button>
			<div id="listItem"></div>
			<script type="text/jsx" >
				
			</script>
			<!-- insert itemList component here -->
		
		
		<!-- <input id="dimension" class="typeahead" type="text" placeholder="dimension"> -->
		<!-- <select class="form-control" id="dimension">
    		<option value="1">11x12x13</option>
    		<option value="2">1x2x3</option>
    		<option value="3">6x7x8</option>
		</select> -->
		</div>
	</div>
	</div>
	<div class="modal-dialog " id="newItemModel">
	</div>
	
	<script type="text/jsx">
		React.render(<NewItemDialog />,document.getElementById('newItemModel'));
	</script>
	
 </div> 
</div>
</div>

</body>
</html>