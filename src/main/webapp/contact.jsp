<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.List"%>
<%@ page import="csci201_project.post"%>

<!DOCTYPE html>
<html>
<%String loggedin = "false";
loggedin = (String)request.getSession().getAttribute("loggedin"); 
String name = "false";
name = (String)request.getSession().getAttribute("userID");
%>
<head>
<link href="https://unpkg.com/tailwindcss@^2/dist/tailwind.min.css"
	rel="stylesheet">
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
			<!-- if logged in, landingpage.jsp if not logged in, go to landingpagefresh.jsp -->

			<%if (loggedin==null || !loggedin.equals("true")){ %>
			<form action="newpost" method="POST">
				<button>
					<svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6 inline-flex"
						fill="none" viewBox="0 0 24 24" stroke="#ffffff">
					  <path stroke-linecap="round" stroke-linejoin="round"
							stroke-width="2"
							d="M3 12l2-2m0 0l7-7 7 7M5 10v10a1 1 0 001 1h3m10-11l2 2m-2-2v10a1 1 0 01-1 1h-3m-6 0a1 1 0 001-1v-4a1 1 0 011-1h2a1 1 0 011 1v4a1 1 0 001 1m-6 0h6" />
					</svg>
				</button>
			</form>
			<%} 
            else if (loggedin.equals("true")){ %>
			<form action="updatepost" method="POST">
				<button>
					<svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6 inline-flex"
						fill="none" viewBox="0 0 24 24" stroke="#ffffff">
					  <path stroke-linecap="round" stroke-linejoin="round"
							stroke-width="2"
							d="M3 12l2-2m0 0l7-7 7 7M5 10v10a1 1 0 001 1h3m10-11l2 2m-2-2v10a1 1 0 01-1 1h-3m-6 0a1 1 0 001-1v-4a1 1 0 011-1h2a1 1 0 011 1v4a1 1 0 001 1m-6 0h6" />
					</svg>
				</button>
			</form>

			<%}%>

			<a class="mr-5 hover: text-white" href="team.jsp">&nbsp&nbsp&nbspMeet
				the Team</a> <a class="mr-5 hover: text-white" href="contact.jsp">Contact
				Us</a>
		</nav>


		<%if (loggedin==null || !loggedin.equals("true")){ %>
		<a
			class="inline-flex items-center bg-gray-100 border-0 py-1 px-3 focus:outline-none hover:bg-gray-300 rounded text-base mt-4 md:mt-0"
			href="register.jsp">Join Now! <svg fill="none"
				stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"
				stroke-width="2" class="w-4 h-4 ml-1" viewBox="0 0 24 24">
              <path d="M5 12h14M12 5l7 7-7 7"></path>
            </svg>
		</a>
		<%} 
          else if (loggedin.equals("true")){ %>
		<div class="inline-flex text-white">
			<%=name %>
		</div>
		<form action="newpost" method="POST">
			<button>
				        
				<svg xmlns="http://www.w3.org/2000/svg"
					class="inline-flex items-center h-6 w-6  " fill="none"
					viewBox="0 0 24 24" stroke="#ffffff">
						  <path stroke-linecap="round" stroke-linejoin="round"
						stroke-width="2" d="M6 18L18 6M6 6l12 12" />
						</svg>
			</button>
			<script>
		       			loggedin = "false";
					</script>
		</form>


		<%}%>




	</div>
</header>
<body>
	<section class="text-gray-700 body-font relative">
		<div class="container px-5 py-24 mx-auto">
			<div class="flex flex-col text-center w-full mb-12">
				<h1
					class="sm:text-3xl text-2xl font-medium title-font mb-4 text-gray-900">Contact
					Us</h1>
				<p class="lg:w-2/3 mx-auto leading-relaxed text-base">If you
					have any problems, please contact us! These are fake so we won't
					respond tho <3</p>
			</div>
			<div class="lg:w-1/2 md:w-2/3 mx-auto">
				<div class="flex flex-wrap -m-2">
					<div class="p-2 w-1/2">
						<div class="relative">
							<label for="name" class="leading-7 text-sm text-gray-600">Name</label>
							<input type="text" id="name" name="name"
								class="w-full bg-gray-100 rounded border border-gray-300 focus:border-indigo-500 text-base outline-none text-gray-700 py-1 px-3 leading-8 transition-colors duration-200 ease-in-out">
						</div>
					</div>
					<div class="p-2 w-1/2">
						<div class="relative">
							<label for="email" class="leading-7 text-sm text-gray-600">Email</label>
							<input type="email" id="email" name="email"
								class="w-full bg-gray-100 rounded border border-gray-300 focus:border-indigo-500 text-base outline-none text-gray-700 py-1 px-3 leading-8 transition-colors duration-200 ease-in-out">
						</div>
					</div>
					<div class="p-2 w-full">
						<div class="relative">
							<label for="message" class="leading-7 text-sm text-gray-600">Message</label>
							<textarea id="message" name="message"
								class="w-full bg-gray-100 rounded border border-gray-300 focus:border-indigo-500 h-32 text-base outline-none text-gray-700 py-1 px-3 resize-none leading-6 transition-colors duration-200 ease-in-out"></textarea>
						</div>
					</div>
					<div class="p-2 w-full">
						<a href="submit.html">
							<button
								class="flex mx-auto text-white bg-red-500 border-0 py-2 px-8 focus:outline-none hover:bg-red-600 rounded text-lg">Submit</button>
						</a>
					</div>
					<div
						class="p-2 w-full pt-8 mt-8 border-t border-gray-200 text-center">
						<a class="text-indigo-500">amsun@usc.edu</a>
						<p class="leading-normal my-5">
							Univeresity of Southern California <br>Los Angeles, CA 90007
						</p>
						<span class="inline-flex"> <a class="text-gray-500"> <svg
									fill="currentColor" stroke-linecap="round"
									stroke-linejoin="round" stroke-width="2" class="w-5 h-5"
									viewBox="0 0 24 24">
                          <path
										d="M18 2h-3a5 5 0 00-5 5v3H7v4h3v8h4v-8h3l1-4h-4V7a1 1 0 011-1h3z"></path>
                        </svg>
						</a> <a class="ml-4 text-gray-500"> <svg fill="currentColor"
									stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
									class="w-5 h-5" viewBox="0 0 24 24">
                          <path
										d="M23 3a10.9 10.9 0 01-3.14 1.53 4.48 4.48 0 00-7.86 3v1A10.66 10.66 0 013 4s-4 9 5 13a11.64 11.64 0 01-7 2c9 5 20 0 20-11.5a4.5 4.5 0 00-.08-.83A7.72 7.72 0 0023 3z"></path>
                        </svg>
						</a> <a class="ml-4 text-gray-500"> <svg fill="none"
									stroke="currentColor" stroke-linecap="round"
									stroke-linejoin="round" stroke-width="2" class="w-5 h-5"
									viewBox="0 0 24 24">
                          <rect width="20" height="20" x="2" y="2"
										rx="5" ry="5"></rect>
                          <path
										d="M16 11.37A4 4 0 1112.63 8 4 4 0 0116 11.37zm1.5-4.87h.01"></path>
                        </svg>
						</a> <a class="ml-4 text-gray-500"> <svg fill="currentColor"
									stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
									class="w-5 h-5" viewBox="0 0 24 24">
                          <path
										d="M21 11.5a8.38 8.38 0 01-.9 3.8 8.5 8.5 0 01-7.6 4.7 8.38 8.38 0 01-3.8-.9L3 21l1.9-5.7a8.38 8.38 0 01-.9-3.8 8.5 8.5 0 014.7-7.6 8.38 8.38 0 013.8-.9h.5a8.48 8.48 0 018 8v.5z"></path>
                        </svg>
						</a>
						</span>
					</div>
				</div>
			</div>
		</div>
	</section>
</body>
</html>