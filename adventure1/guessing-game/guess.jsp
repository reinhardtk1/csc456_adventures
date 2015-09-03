<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "guess.GuessNumber" %>
<jsp:useBean id="guess" class="guess.GuessNumber" scope="session"/>
<jsp:setProperty name="guess" property="*"/>

<html>
<head><title>Number Guess</title></head>
<body>
<font size=4>

<% if (guess.getSuccess()) { %>

  <p>Congrats!  You got it.
  It was <%= guess.getNumber() %> .</p>

  <% guess.reset(); %>

  <p><a href="guess.jsp">Play Again?</a></p>

<% } else if (guess.getCounter()== 0) { %>

  <p>Guess a Number.</p>

  <p>I'm thinking of a number between 1 and 10.</p>

  <form method="post" action="guess.jsp">
  Guess a Number 
  <br>
  <input type="text" name="guess">
  <input type="hidden" id="number" value="<%= guess.getNumber() %>" name="number">
  <br><br>
  <input type="submit" value="Submit">
   <input type="button" value="Hint" onclick="showHint()">
	<p id="showHint">
	</p>
  </form>

<% } else { %>

  <p>Sorry that was incorrect.  
  Try going <b><%= guess.getHelp() %></b>.</p>

  <p>I'm thinking of a number between 1 and 10.</p>

  <form method="post" action="guess.jsp">
	  What's your guess?
	  <br>
	  <input type="text" name="guess">
  <input type="hidden" id="number" value="<%= guess.getNumber() %>" name="number">
	  <br><br>
	  <input type="submit" value="Submit">
	  <input type="button" value="Hint" onclick="showHint()">
	<p id="showHint">
	</p>
  </form>

<% } %>
<script>
function showHint(){
	var number = document.getElementById("number").value;
    document.getElementById("showHint").innerHTML = number;
}
</script>
</font>
</body>
</html>