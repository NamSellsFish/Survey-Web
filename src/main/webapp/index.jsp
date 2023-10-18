<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="./main.css" type="text/css" />
</head>

<body>
	<main>
		<!-- Breadcrumb -->
		<c:import url="breadcrumb.html" />
		<img src="data:image/png;base64,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" alt="">
		<h1 class="sec-header">Survey</h1>
		<p> This website build base on the email list app last week
			If you have a moment, we'd appreciate it if you would fill out this survey.</p>
			
		<form action="surveyWeb" method="post">
			<input type="hidden" name="action" value="add">
			<br>
			<div id="user-info">
				<h1 class="sec-header">Your infomation:</h1>
				<h3>First Name: <input type="text" name="firstName" required></h3>
				<h3>Last Name: <input type="text" name="lastName" required></h3>
				<h3>Email: <input type="email" name="email" required></h3>
				<h3>Date of Birth: <input type="date" name="birthday" required></h3>
			</div>
			<br>
			<div id="question-1">
				<h1 class="sec-header">How did you hear about us?</h1>
				<p><input type="radio" name="hearingFrom" value="se">Search engine</p>
				<p><input type="radio" name="hearingFrom" value="wom">Word of mouth</p>
				<p><input type="radio" name="hearingFrom" value="sm">Social Media</p>
				<p><input type="radio" name="hearingFrom" value="o">Other</p>
			</div>
			<br>
			<div id="question-2">
				<h1 class="sec-header">Would you like to receive announcements about new CDs and special offers?</h1>
				<p><input type="checkbox" name="wannaContact" value="contactNo">NO, thank you.</p>
				<p><input type="checkbox" name="wannaContact" value="contactYes">YES, please send me annoucements</p>
				<p>Please contact me by:
					<select name="contact" >
						<option value="eNp">Email or postal mail</option>
						<option value="e">Email only</option>
						<option value="p">Postal only</option>
					</select>
				</p>
			</div>
			<button type="submit">Submit</button>
		</form>
	</main>
</body>
</html>