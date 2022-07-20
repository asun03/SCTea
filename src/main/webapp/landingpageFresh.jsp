<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.List"%>
<%@ page import="csci201_project.post"%>
<!-- 
TODO:
registering page and link log in page 
make join now button visible only if not registered
make post/like/comment buttons only available if registered
make posts, likes, and comments
post page 
make post history 
-->
<!DOCTYPE html>
<html>
<%String loggedin = "false";
loggedin = (String)request.getSession().getAttribute("loggedin"); %>
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
		<a
			class="inline-flex items-center bg-gray-100 border-0 py-1 px-3 focus:outline-none hover:bg-gray-300 rounded text-base mt-4 md:mt-0"
			href="login.jsp">Login <path d="M5 12h14M12 5l7 7-7 7"></path>
		</a> </a>


	</div>
</header>

<section class="text-gray-600 body-font">
	<div class="container px-5 py-24 mx-auto">
		<div
			class="flex flex-wrap w-full mb-20 flex-col items-center text-center">
			<h1
				class="sm:text-3xl text-2xl font-medium title-font mb-2 text-gray-900">Welcome
				to SCTea</h1>
			<p class="lg:w-1/2 w-full leading-relaxed text-gray-500">Your
				best gossip source at USC</p>
			<%-- <% String email = (String)request.getSession().getAttribute("email2");%> --%>
			<%-- <br ><p><%=email%></p> --%>

			<a
				class="flex mx-auto mt-8 text-white bg-red-500 border-0 py-2 px-8 focus:outline-none hover:bg-red-600 rounded text-lg"
				href="register.jsp">Register</a>
		</div>
		<div class="flex flex-wrap -m-4">

			<%  
				// retrieve your list from the request, with casting 
				ArrayList<post> list = new ArrayList<post>();
				list = (ArrayList<post>) request.getAttribute("postlist");
				
				if (list != null){
				// print the information about every category of the list
				for(int i = list.size()-1; i >= 0; i--) {%>
			<div class="xl:w-1/3 md:w-1/2 p-4 left=0">
				<!-- border of post bbox -->
				<div class="border border-gray-200 p-3 rounded-lg">

					<!-- heart icon -->
					<div
						class="w-10 h-10 inline-flex items-center justify-center rounded-full bg-red-100 text-red-500 mb-4">
						<svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6"
							fill="none" viewBox="0 0 24 24" stroke="currentColor">
							  <path stroke-linecap="round" stroke-linejoin="round"
								stroke-width="2"
								d="M4.318 6.318a4.5 4.5 0 000 6.364L12 20.364l7.682-7.682a4.5 4.5 0 00-6.364-6.364L12 7.636l-1.318-1.318a4.5 4.5 0 00-6.364 0z" />
							</svg>
					</div>

					<!-- title and content -->
					<h2 class="text-lg text-gray-900 font-medium title-font mb-2"><%= list.get(i).get_title() %></h2>
					<p class="leading-relaxed text-base"><%=list.get(i).get_content() %></p>

					<br>

					<!-- upvote -->
					<form action="register.jsp" method="POST">
						<button>
							<svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6"
								fill="none" viewBox="0 0 24 24" stroke="currentColor">
	                              <path stroke-linecap="round"
									stroke-linejoin="round" stroke-width="2"
									d="M5 10l7-7m0 0l7 7m-7-7v18" />
	                          </svg>
						</button>
					</form>

					<!-- number of upvotes/downvotes -->
					<br> <a> &nbsp <%=list.get(i).get_upvoteNum()%></a>

					<!--  downvote -->
					<form action="register.jsp" method="POST">
						<br>
						<button>
							<svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6"
								fill="none" viewBox="0 0 24 24" stroke="currentColor">
	                              <path stroke-linecap="round"
									stroke-linejoin="round" stroke-width="2"
									d="M19 14l-7 7m0 0l-7-7m7 7V3" />
	                            </svg>
						</button>
					</form>

				</div>
			</div>

			<% }}%>

		</div>
</section>
</html>