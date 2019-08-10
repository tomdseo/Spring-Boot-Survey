<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Dojo Survey Index</title>
<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>
	<form method="POST" action="/formSubmit" class="border-default mx-auto max-width mt-3 padding-form">
		<div class="d-block"><span>Your Name:</span><input type="text" name="nameInput" required></div>
		<div class="d-block mt-2">
			<span>Dojo Location:</span>
			<select name="locationInput" required>
				<option value="Los Angeles">Los Angeles</option>
				<option value="San Jose">San Jose</option>
				<option value="Seattle">Seattle</option>
			</select>
		</div>
		<div class="d-block mt-2">
		<span>Favorite Language:</span>
		<select name="languageInput" required>
			<option value="Python">Python</option>
			<option value="Java">Java</option>
			<option value="Javascript">Javascript</option>
		</select>
		</div>
		<div class="d-block mt-2">
		<p>Comment (optional):</p>
		<textarea name="commentInput" cols="40" id="textarea-form" required></textarea>
		</div>
		<button class="btn btn-primary d-block mt-2">Submit</button>
	</form>
</body>
</html>