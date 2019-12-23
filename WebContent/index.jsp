<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<html>
<head>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script>
	            $(document).on(
			"click",
			"#buttonLoad",
			function() {
				$.get("list", function(responseJson) {
					var $select = $("#dropdownlist");
					$select.find("option").remove();
					$.each(responseJson, function(index, category) {
						$("<option>").val(category.id).text(category.name)
								.appendTo($select);
					});

				});
			});

	$(document).on("click", "#buttonSubmit", function() {
		var params = {
			category : $("#dropdownlist option:selected").text()
		};
		$.post("list", $.param(params), function(responseText) {
			alert(responseText);
		});
	});
</script>
</head>
<body>
	<div align="center">
		    
		<h2>Dynamic Drop Down List (AJAX) Demo</h2>
		    
		<button id="buttonLoad">Load</button>
		&nbsp;     <select id="dropdownlist"></select>     <br /> <br />
		    
		<button id="buttonSubmit">Submit</button>
	</div>
</body>
</html>