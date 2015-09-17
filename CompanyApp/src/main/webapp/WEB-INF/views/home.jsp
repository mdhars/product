<!DOCTYPE html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>



<!-- bootstrap -->
</head>
<body>
	<div id="grid" style="width: 100%; height: 250px;">
		<input class="typeahead" type="text" id="companyName" name="cName" />

	</div>

	<script src='<c:url value="/resources/js/jquery-2.1.4.js" />'></script>
	<script src='<c:url value="/resources/js/react.js" />'></script>
	<script src='<c:url value="/resources/js/typeahead.js" />'></script>
	<script >
	$(document).ready(function(){
		var companyName = new Bloodhound({
			datumTokenizer: Bloodhound.tokenizers.obj.whitespace('name'),
			queryTokenizer: Bloodhound.tokenizers.whitespace,
			//remote: 'findCustomer?query=%QUERY', 
			remote: {
    			url: 'findCustomer?query=%QUERY',
   				wildcard: '%QUERY'
			}
		});
		companyName.initialize();
		
		 $('#grid .typeahead').typeahead({
			 hint : true,
			 highlight : true,
			 minLength : 2
		 },
		 {
			  name: 'customer',
			  displayKey: 'name',
			  source: companyName
			});
	});
	</script>
</body>
</html>