<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "guess.GuessNumber" %>
<jsp:useBean id="guess" class="guess.GuessNumber" scope="session"/>
<jsp:setProperty name="guess" property="*"/>
<html>
<head><title>Guessing Game</title></head>
<body>
<% if (guess.getCorrectNumber() == 1) { %>
	<h1>Guessing Game.</h1>
  	<p>Congratulations!  You got it.
  	It was ${ guess.getNumber() } .</p>
  	<% guess.reset(); %>
  	<p><a href="guess.jsp">Play Again?</a></p>
<% } else if (guess.getCounter()== 0) { %>
	  <h1>Guessing Game.</h1>
	  <p>Guess a number between 1 and 10.</p>
	  <form method="post" action="guess.jsp">
	  	Guess a Number: 
		<input type="text" name="guess">
		<input type="hidden" id="number" value="${ guess.getNumber() }" name="number">
		<br><br>
		<input type="submit" value="Submit">
		<input type="button" value="Hint" onclick="showHint()">
		<p id="showHint"></p>
	  </form>
<% } else { %>
	<h1>Guessing Game.</h1>
  	<p>Sorry that was incorrect.  
  	Try going ${ guess.getHelp() }.</p>
  	<p>Guess a number between 1 and 10.</p>
  	<form method="post" action="guess.jsp">
	  	Guess a Number 
		<br>
		<input type="text" name="guess">
		<input type="hidden" id="number" value="${ guess.getNumber() }" name="number">
		<br><br>
		<input type="submit" value="Submit">
		<input type="button" value="Hint" onclick="showHint()">
		<p id="showHint"></p>
  	</form>
<% } %>
<script>
function showHint(){
	var number = document.getElementById("number").value;
    document.getElementById("showHint").innerHTML = number;
}
</script>
</body>
</html>