<!DOCTYPE html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
	<script src='<c:url value="/resources/theme1/jslib/jquery-2.1.4.js" />'></script>
<%-- 	<script src="<c:url value='/resources/theme1/js/newcomp.js' />"></script>
	<script src="http://w2ui.com/web/css/master.css"></script> --%>
	
    
    <script src="<c:url value='/resources/theme1/jslib/bootstrap.js' />"></script>
	<link rel="stylesheet" type="text/css"  href="<c:url value='/resources/theme1/css/bootstrap.css' />" />
    <link rel="stylesheet" type="text/css"  href="<c:url value='/resources/theme1/css/bootstrap-theme.css' />" />
    
    <link rel="stylesheet" type="text/css"  href="<c:url value='/resources/theme1/css/simple-sidebar.css' />" />
    
    <link rel="stylesheet" type="text/css"  href="<c:url value='/resources/theme1/css/custom.css' />" />
    
    <script src="<c:url value='/resources/theme1/jslib/typeahead.js' />"></script>
</head>
<body>
<div id="wrapper">
<div class="container"> 
<%@include file="../layout/sidebar-report.jsp" %>
	

<%@include file="../layout/header.jsp" %>
</div>
</div>
</body>
</html>