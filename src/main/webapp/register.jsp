<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.List"%>
<%@ page import="csci201_project.post"%>
<!DOCTYPE html>
<html>
<head>
<title>Register</title>
<link href="https://unpkg.com/tailwindcss@^2/dist/tailwind.min.css"
	rel="stylesheet">
<style>
input {
	border-top-style: hidden;
	border-right-style: hidden;
	border-left-style: hidden;
	border-bottom-style: groove;
	background-color: #eee;
}
</style>
</head>
<header class="text-gray-700 body-font bg-red-600">
	<div
		class="container mx-auto flex flex-wrap p-5 flex-col md:flex-row items-center">
		<a
			class="flex title-font font-medium items-center text-white mb-4 md:mb-0">
			<img alt="USC Logo"
			src="https://customsitesmedia.usc.edu/wp-content/uploads/sites/55/2019/01/15234738/PrimShield-Mono_SmallUse_CardOnTrans_RGB.png"
			width="70" length="70"> <span class="ml-3 text-xl">SCTea</span>
		</a>
		<nav
			class="md:ml-auto flex flex-wrap items-center text-base justify-center">
			<form action="newpost" method="POST">
				<button>
					<svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6 inline-flex"
						fill="none" viewBox="0 0 24 24" stroke="#ffffff">
					  <path stroke-linecap="round" stroke-linejoin="round"
							stroke-width="2"
							d="M3 12l2-2m0 0l7-7 7 7M5 10v10a1 1 0 001 1h3m10-11l2 2m-2-2v10a1 1 0 01-1 1h-3m-6 0a1 1 0 001-1v-4a1 1 0 011-1h2a1 1 0 011 1v4a1 1 0 001 1m-6 0h6" />
					</svg>
				</button>
				<!--  <a class="mr-5 hover: text-white" href="landingpage.jsp">Posts</a> -->
			</form>
			<a class="mr-5 hover: text-white" href="team.jsp">&nbsp&nbsp&nbspMeet
				the Team</a> <a class="mr-5 hover: text-white" href="contact.jsp">Contact
				Us</a>
		</nav>
	</div>
</header>


<body>
	<div class="container mx-auto flex flex-wrap p-5 flex-col items-center">
		<h1 class="text-3xl font-serif">Register here to start posting
			and voting!</h1>
		<div
			class="container mx-auto flex flex-wrap p-5 flex-col items-center w-full max-w-full">
			<form name="loginForm" action="registerauth" method="POST"
				class="text-2xl bg-white font-serif shadow-md rounded px-8 pt-6 pb-8 mb-4">
				<div class="mb-4">
					<label for="email"> Email:</label> <input
						class="border rounded w-full py-2 px-3 text-gray-700 leading-tight"
						type="text" name="email" /> <br>
				</div>
				<div class="mb-6">
					<label for="password">Password: </label> <input
						class="border rounded w-full py-2 px-3 text-gray-700 leading-tight"
						type="text" name="password" /> <br>
				</div>


				<input type="submit" value="Register"
					class="flex mx-auto mt-8 text-white bg-red-500 border-0 py-2 px-8 focus:outline-none hover:bg-red-600 rounded text-lg" />
			</form>

		</div>
		<div class="mb-5">
			<a class="text-xl font-serif" href="login.jsp">Already have an
				account? Log in here!</a>
		</div>

		<% 
            String Error = (String) request.getAttribute("Error");
       if(Error != null){
       	if(Error.equals("emailError"))
       	{
       %>
		<div class="mx-auto flex mb-5 ">
			<a class="text-xl font-serif text-red-600">Please enter a valid
				email address!</a>
		</div>
		<%} 
       	else if(Error.equals("PasswordError"))
       	{
       	%><div class="mx-auto flex mb-5 text-red-600">
			<a class="text-xl font-serif">Don't forget the password!</a>
		</div>

		<% }}%>

	</div>


</body>


</html>