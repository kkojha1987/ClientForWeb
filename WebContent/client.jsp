<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update User</title>
<script type="text/javascript">
function loadResponse()
{
	var xmlhttp=new XMLHttpRequest();
	xmlhttp.onreadystatechange=function()
	{
		if(xmlhttp.readyState==4 && xmlhttp.status==200)
			{
			document.getElementById("myDiv").innerHTML=xmlhttp.responseText;
			}
	}
	xmlhttp.open("DELETE","http://localhost:8080/WebServicesExample/backend/user/service" ,true);
	xmlhttp.send();
}
</script>
</head>
<body>
<!-- <form method="post" action="http://localhost:8080/WebServicesExample/backend/user/service">
Name:- <input type="text" name="username"/>
<input type="submit" value="Submit"/>
</form> -->
<div id="myDiv">The response text would come here</div>
<button type="button" onclick="loadResponse()" value="Submit">Submit</button>
</body>
</html>