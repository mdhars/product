<!DOCTYPE html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>New Order</title>
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
	src="<c:url value='/resources/component/SidebarOrder.js' />"></script>
<script type="text/jsx"
	src="<c:url value='/resources/component/Sidebar.js' />"></script>
<script type="text/jsx"
	src="<c:url value='/resources/component/Header.js' />"></script>
<script type="text/jsx">
$(document).ready(function(){
	renderHeader('navmenu','Order');
});
</script>
</head>
<body>
	<div id="wrapper">
		<div class="container">
			<div id="smenu"></div>
			<script type="text/jsx">
				React.render(<SidebarOrder path='/order/new'/>,document.getElementById('smenu'));
			</script>
			
			<div id="navmenu"></div>
			<script type="text/jsx">
				//React.render(<Header/>,document.getElementById('navmenu'));
			</script>
			
		</div>
	</div>
</body>
</html>