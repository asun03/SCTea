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
<%-- <%String loggedin = "false";
loggedin = (String)request.getSession().getAttribute("loggedin"); %> --%>
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
		</a> </a>


	</div>
</header>

<section class="text-gray-600 body-font">
	<div class="container px-5 py-24 mx-auto">
		<div
			class="flex flex-wrap w-full mb-20 flex-col items-center text-center">
			<h1
				class="sm:text-3xl text-2xl font-medium title-font mb-2 text-gray-900">Welcome
				to SCTea, Ready to Start?!</h1>
			<p class="lg:w-1/2 w-full leading-relaxed text-gray-500">Your
				best gossip source at USC</p>


			<form action="newpost" method="POST">
				<button>
					        
					<svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6" fill="none"
						viewBox="0 0 24 24" stroke="currentColor">
					  <path stroke-linecap="round" stroke-linejoin="round"
							stroke-width="2"
							d="M4.318 6.318a4.5 4.5 0 000 6.364L12 20.364l7.682-7.682a4.5 4.5 0 00-6.364-6.364L12 7.636l-1.318-1.318a4.5 4.5 0 00-6.364 0z" />
					</svg>
				</button>
			</form>

		</div>
</section>
</html>