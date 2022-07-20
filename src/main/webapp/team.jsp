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
            else if (loggedin.equals("true")){%>
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
			href="login.html">Join Now! <svg fill="none"
				stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"
				stroke-width="2" class="w-4 h-4 ml-1" viewBox="0 0 24 24">
              <path d="M5 12h14M12 5l7 7-7 7"></path>
            </svg>
		</a>
		<%} 
            else if (loggedin.equals("true")){%>
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
	<section class="text-gray-700 body-font">
		<div class="container px-5 py-24 mx-auto">
			<div class="flex flex-col text-center w-full mb-20">
				<h1
					class="text-2xl font-medium title-font mb-4 text-gray-900 tracking-widest">OUR
					TEAM</h1>
				<p class="lg:w-2/3 mx-auto leading-relaxed text-base">for our cs
					201 final project <333</p>
			</div>
			<div class="flex flex-wrap -m-4">

				<div class="p-4 lg:w-1/2">
					<div
						class="h-full flex sm:flex-row flex-col items-center sm:justify-start justify-center text-center sm:text-left">
						<img alt="team"
							class="flex-shrink-0 rounded-lg w-48 h-48 object-cover object-center sm:mb-0 mb-4"
							src="https://i.pinimg.com/736x/d7/ed/33/d7ed33c2c1041841909ce6b3b463df45.jpg">
						<div class="flex-grow sm:pl-8">
							<h2 class="title-font font-medium text-lg text-gray-900">Gloria</h2>
							<span class="inline-flex"> <a class="text-gray-500"
								href="https://www.instagram.com/yuuuuyunn/"> <svg
										fill="none" stroke="currentColor" stroke-linecap="round"
										stroke-linejoin="round" stroke-width="1" class="w-5 h-5"
										viewBox="0 0 24 24">
                            <path
											d="M8 0C5.829 0 5.556.01 4.703.048 3.85.088 3.269.222 2.76.42a3.917 3.917 0 0 0-1.417.923A3.927 3.927 0 0 0 .42 2.76C.222 3.268.087 3.85.048 4.7.01 5.555 0 5.827 0 8.001c0 2.172.01 2.444.048 3.297.04.852.174 1.433.372 1.942.205.526.478.972.923 1.417.444.445.89.719 1.416.923.51.198 1.09.333 1.942.372C5.555 15.99 5.827 16 8 16s2.444-.01 3.298-.048c.851-.04 1.434-.174 1.943-.372a3.916 3.916 0 0 0 1.416-.923c.445-.445.718-.891.923-1.417.197-.509.332-1.09.372-1.942C15.99 10.445 16 10.173 16 8s-.01-2.445-.048-3.299c-.04-.851-.175-1.433-.372-1.941a3.926 3.926 0 0 0-.923-1.417A3.911 3.911 0 0 0 13.24.42c-.51-.198-1.092-.333-1.943-.372C10.443.01 10.172 0 7.998 0h.003zm-.717 1.442h.718c2.136 0 2.389.007 3.232.046.78.035 1.204.166 1.486.275.373.145.64.319.92.599.28.28.453.546.598.92.11.281.24.705.275 1.485.039.843.047 1.096.047 3.231s-.008 2.389-.047 3.232c-.035.78-.166 1.203-.275 1.485a2.47 2.47 0 0 1-.599.919c-.28.28-.546.453-.92.598-.28.11-.704.24-1.485.276-.843.038-1.096.047-3.232.047s-2.39-.009-3.233-.047c-.78-.036-1.203-.166-1.485-.276a2.478 2.478 0 0 1-.92-.598 2.48 2.48 0 0 1-.6-.92c-.109-.281-.24-.705-.275-1.485-.038-.843-.046-1.096-.046-3.233 0-2.136.008-2.388.046-3.231.036-.78.166-1.204.276-1.486.145-.373.319-.64.599-.92.28-.28.546-.453.92-.598.282-.11.705-.24 1.485-.276.738-.034 1.024-.044 2.515-.045v.002zm4.988 1.328a.96.96 0 1 0 0 1.92.96.96 0 0 0 0-1.92zm-4.27 1.122a4.109 4.109 0 1 0 0 8.217 4.109 4.109 0 0 0 0-8.217zm0 1.441a2.667 2.667 0 1 1 0 5.334 2.667 2.667 0 0 1 0-5.334z"></path>
                          </svg>
							</a>
							</span>
						</div>
					</div>
				</div>

				<div class="p-4 lg:w-1/2">
					<div
						class="h-full flex sm:flex-row flex-col items-center sm:justify-start justify-center text-center sm:text-left">
						<img alt="team"
							class="flex-shrink-0 rounded-lg w-48 h-48 object-cover object-center sm:mb-0 mb-4"
							src="https://i.pinimg.com/736x/91/7d/6f/917d6fe868189926002ca0db7e80ccd4.jpg">
						<div class="flex-grow sm:pl-8">
							<h2 class="title-font font-medium text-lg text-gray-900">Ethan</h2>
							<span class="inline-flex"> <a class="text-gray-500"
								href="https://www.instagram.com/ethanparrk/"> <svg
										fill="none" stroke="currentColor" stroke-linecap="round"
										stroke-linejoin="round" stroke-width="1" class="w-5 h-5"
										viewBox="0 0 24 24">
                            <path
											d="M8 0C5.829 0 5.556.01 4.703.048 3.85.088 3.269.222 2.76.42a3.917 3.917 0 0 0-1.417.923A3.927 3.927 0 0 0 .42 2.76C.222 3.268.087 3.85.048 4.7.01 5.555 0 5.827 0 8.001c0 2.172.01 2.444.048 3.297.04.852.174 1.433.372 1.942.205.526.478.972.923 1.417.444.445.89.719 1.416.923.51.198 1.09.333 1.942.372C5.555 15.99 5.827 16 8 16s2.444-.01 3.298-.048c.851-.04 1.434-.174 1.943-.372a3.916 3.916 0 0 0 1.416-.923c.445-.445.718-.891.923-1.417.197-.509.332-1.09.372-1.942C15.99 10.445 16 10.173 16 8s-.01-2.445-.048-3.299c-.04-.851-.175-1.433-.372-1.941a3.926 3.926 0 0 0-.923-1.417A3.911 3.911 0 0 0 13.24.42c-.51-.198-1.092-.333-1.943-.372C10.443.01 10.172 0 7.998 0h.003zm-.717 1.442h.718c2.136 0 2.389.007 3.232.046.78.035 1.204.166 1.486.275.373.145.64.319.92.599.28.28.453.546.598.92.11.281.24.705.275 1.485.039.843.047 1.096.047 3.231s-.008 2.389-.047 3.232c-.035.78-.166 1.203-.275 1.485a2.47 2.47 0 0 1-.599.919c-.28.28-.546.453-.92.598-.28.11-.704.24-1.485.276-.843.038-1.096.047-3.232.047s-2.39-.009-3.233-.047c-.78-.036-1.203-.166-1.485-.276a2.478 2.478 0 0 1-.92-.598 2.48 2.48 0 0 1-.6-.92c-.109-.281-.24-.705-.275-1.485-.038-.843-.046-1.096-.046-3.233 0-2.136.008-2.388.046-3.231.036-.78.166-1.204.276-1.486.145-.373.319-.64.599-.92.28-.28.546-.453.92-.598.282-.11.705-.24 1.485-.276.738-.034 1.024-.044 2.515-.045v.002zm4.988 1.328a.96.96 0 1 0 0 1.92.96.96 0 0 0 0-1.92zm-4.27 1.122a4.109 4.109 0 1 0 0 8.217 4.109 4.109 0 0 0 0-8.217zm0 1.441a2.667 2.667 0 1 1 0 5.334 2.667 2.667 0 0 1 0-5.334z"></path>
                          </svg>
							</a>

							</span>
						</div>
					</div>
				</div>

				<div class="p-4 lg:w-1/2">
					<div
						class="h-full flex sm:flex-row flex-col items-center sm:justify-start justify-center text-center sm:text-left">
						<img alt="team"
							class="flex-shrink-0 rounded-lg w-48 h-48 object-cover object-center sm:mb-0 mb-4"
							src="https://i.pinimg.com/736x/17/1a/2e/171a2edc232c9e531739350942ca6a51.jpg">
						<div class="flex-grow sm:pl-8">
							<h2 class="title-font font-medium text-lg text-gray-900">
								Tiffany Chen
								<h2>
									<span class="inline-flex"> <a class="text-gray-500"
										href="instagram.com/tiffany_chennn/"> <svg fill="none"
												stroke="currentColor" stroke-linecap="round"
												stroke-linejoin="round" stroke-width="1" class="w-5 h-5"
												viewBox="0 0 24 24">
                            <path
													d="M8 0C5.829 0 5.556.01 4.703.048 3.85.088 3.269.222 2.76.42a3.917 3.917 0 0 0-1.417.923A3.927 3.927 0 0 0 .42 2.76C.222 3.268.087 3.85.048 4.7.01 5.555 0 5.827 0 8.001c0 2.172.01 2.444.048 3.297.04.852.174 1.433.372 1.942.205.526.478.972.923 1.417.444.445.89.719 1.416.923.51.198 1.09.333 1.942.372C5.555 15.99 5.827 16 8 16s2.444-.01 3.298-.048c.851-.04 1.434-.174 1.943-.372a3.916 3.916 0 0 0 1.416-.923c.445-.445.718-.891.923-1.417.197-.509.332-1.09.372-1.942C15.99 10.445 16 10.173 16 8s-.01-2.445-.048-3.299c-.04-.851-.175-1.433-.372-1.941a3.926 3.926 0 0 0-.923-1.417A3.911 3.911 0 0 0 13.24.42c-.51-.198-1.092-.333-1.943-.372C10.443.01 10.172 0 7.998 0h.003zm-.717 1.442h.718c2.136 0 2.389.007 3.232.046.78.035 1.204.166 1.486.275.373.145.64.319.92.599.28.28.453.546.598.92.11.281.24.705.275 1.485.039.843.047 1.096.047 3.231s-.008 2.389-.047 3.232c-.035.78-.166 1.203-.275 1.485a2.47 2.47 0 0 1-.599.919c-.28.28-.546.453-.92.598-.28.11-.704.24-1.485.276-.843.038-1.096.047-3.232.047s-2.39-.009-3.233-.047c-.78-.036-1.203-.166-1.485-.276a2.478 2.478 0 0 1-.92-.598 2.48 2.48 0 0 1-.6-.92c-.109-.281-.24-.705-.275-1.485-.038-.843-.046-1.096-.046-3.233 0-2.136.008-2.388.046-3.231.036-.78.166-1.204.276-1.486.145-.373.319-.64.599-.92.28-.28.546-.453.92-.598.282-.11.705-.24 1.485-.276.738-.034 1.024-.044 2.515-.045v.002zm4.988 1.328a.96.96 0 1 0 0 1.92.96.96 0 0 0 0-1.92zm-4.27 1.122a4.109 4.109 0 1 0 0 8.217 4.109 4.109 0 0 0 0-8.217zm0 1.441a2.667 2.667 0 1 1 0 5.334 2.667 2.667 0 0 1 0-5.334z"></path>
                          </svg>
									</a>

									</span>
						</div>
					</div>
				</div>

				<div class="p-4 lg:w-1/2">
					<div
						class="h-full flex sm:flex-row flex-col items-center sm:justify-start justify-center text-center sm:text-left">
						<img alt="team"
							class="flex-shrink-0 rounded-lg w-48 h-48 object-cover object-center sm:mb-0 mb-4"
							src="https://media.istockphoto.com/photos/playful-dog-face-black-white-and-brown-with-nose-close-to-the-camera-picture-id836716796?k=20&m=836716796&s=612x612&w=0&h=xVevChbjXcYFlGKgyFQZI3VBKjYrwXi9rS_DDir-7uU=">
						<div class="flex-grow sm:pl-8">
							<h2 class="title-font font-medium text-lg text-gray-900">Angela
								Sun</h2>
							<span class="inline-flex"> <a class="text-gray-500"
								href="https://www.instagram.com/_angela.sun/"> <svg
										fill="none" stroke="currentColor" stroke-linecap="round"
										stroke-linejoin="round" stroke-width="1" class="w-5 h-5"
										viewBox="0 0 24 24">
                                <path
											d="M8 0C5.829 0 5.556.01 4.703.048 3.85.088 3.269.222 2.76.42a3.917 3.917 0 0 0-1.417.923A3.927 3.927 0 0 0 .42 2.76C.222 3.268.087 3.85.048 4.7.01 5.555 0 5.827 0 8.001c0 2.172.01 2.444.048 3.297.04.852.174 1.433.372 1.942.205.526.478.972.923 1.417.444.445.89.719 1.416.923.51.198 1.09.333 1.942.372C5.555 15.99 5.827 16 8 16s2.444-.01 3.298-.048c.851-.04 1.434-.174 1.943-.372a3.916 3.916 0 0 0 1.416-.923c.445-.445.718-.891.923-1.417.197-.509.332-1.09.372-1.942C15.99 10.445 16 10.173 16 8s-.01-2.445-.048-3.299c-.04-.851-.175-1.433-.372-1.941a3.926 3.926 0 0 0-.923-1.417A3.911 3.911 0 0 0 13.24.42c-.51-.198-1.092-.333-1.943-.372C10.443.01 10.172 0 7.998 0h.003zm-.717 1.442h.718c2.136 0 2.389.007 3.232.046.78.035 1.204.166 1.486.275.373.145.64.319.92.599.28.28.453.546.598.92.11.281.24.705.275 1.485.039.843.047 1.096.047 3.231s-.008 2.389-.047 3.232c-.035.78-.166 1.203-.275 1.485a2.47 2.47 0 0 1-.599.919c-.28.28-.546.453-.92.598-.28.11-.704.24-1.485.276-.843.038-1.096.047-3.232.047s-2.39-.009-3.233-.047c-.78-.036-1.203-.166-1.485-.276a2.478 2.478 0 0 1-.92-.598 2.48 2.48 0 0 1-.6-.92c-.109-.281-.24-.705-.275-1.485-.038-.843-.046-1.096-.046-3.233 0-2.136.008-2.388.046-3.231.036-.78.166-1.204.276-1.486.145-.373.319-.64.599-.92.28-.28.546-.453.92-.598.282-.11.705-.24 1.485-.276.738-.034 1.024-.044 2.515-.045v.002zm4.988 1.328a.96.96 0 1 0 0 1.92.96.96 0 0 0 0-1.92zm-4.27 1.122a4.109 4.109 0 1 0 0 8.217 4.109 4.109 0 0 0 0-8.217zm0 1.441a2.667 2.667 0 1 1 0 5.334 2.667 2.667 0 0 1 0-5.334z"></path>
                            </svg>
							</a>

							</span>
						</div>
					</div>
				</div>

				<div class="p-4 lg:w-1/2">
					<div
						class="h-full flex sm:flex-row flex-col items-center sm:justify-start justify-center text-center sm:text-left">
						<img alt="team"
							class="flex-shrink-0 rounded-lg w-48 h-48 object-cover object-center sm:mb-0 mb-4"
							src="https://images.unsplash.com/photo-1615751072497-5f5169febe17?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8Y3V0ZSUyMGRvZ3xlbnwwfHwwfHw%3D&w=1000&q=80">
						<div class="flex-grow sm:pl-8">
							<h2 class="title-font font-medium text-lg text-gray-900">Tiffany
								Yoon</h2>
							<span class="inline-flex"> <a class="text-gray-500"
								href="https://www.instagram.com/tiffany.yoon/"> <svg
										fill="none" stroke="currentColor" stroke-linecap="round"
										stroke-linejoin="round" stroke-width="1" class="w-5 h-5"
										viewBox="0 0 24 24">
                                <path
											d="M8 0C5.829 0 5.556.01 4.703.048 3.85.088 3.269.222 2.76.42a3.917 3.917 0 0 0-1.417.923A3.927 3.927 0 0 0 .42 2.76C.222 3.268.087 3.85.048 4.7.01 5.555 0 5.827 0 8.001c0 2.172.01 2.444.048 3.297.04.852.174 1.433.372 1.942.205.526.478.972.923 1.417.444.445.89.719 1.416.923.51.198 1.09.333 1.942.372C5.555 15.99 5.827 16 8 16s2.444-.01 3.298-.048c.851-.04 1.434-.174 1.943-.372a3.916 3.916 0 0 0 1.416-.923c.445-.445.718-.891.923-1.417.197-.509.332-1.09.372-1.942C15.99 10.445 16 10.173 16 8s-.01-2.445-.048-3.299c-.04-.851-.175-1.433-.372-1.941a3.926 3.926 0 0 0-.923-1.417A3.911 3.911 0 0 0 13.24.42c-.51-.198-1.092-.333-1.943-.372C10.443.01 10.172 0 7.998 0h.003zm-.717 1.442h.718c2.136 0 2.389.007 3.232.046.78.035 1.204.166 1.486.275.373.145.64.319.92.599.28.28.453.546.598.92.11.281.24.705.275 1.485.039.843.047 1.096.047 3.231s-.008 2.389-.047 3.232c-.035.78-.166 1.203-.275 1.485a2.47 2.47 0 0 1-.599.919c-.28.28-.546.453-.92.598-.28.11-.704.24-1.485.276-.843.038-1.096.047-3.232.047s-2.39-.009-3.233-.047c-.78-.036-1.203-.166-1.485-.276a2.478 2.478 0 0 1-.92-.598 2.48 2.48 0 0 1-.6-.92c-.109-.281-.24-.705-.275-1.485-.038-.843-.046-1.096-.046-3.233 0-2.136.008-2.388.046-3.231.036-.78.166-1.204.276-1.486.145-.373.319-.64.599-.92.28-.28.546-.453.92-.598.282-.11.705-.24 1.485-.276.738-.034 1.024-.044 2.515-.045v.002zm4.988 1.328a.96.96 0 1 0 0 1.92.96.96 0 0 0 0-1.92zm-4.27 1.122a4.109 4.109 0 1 0 0 8.217 4.109 4.109 0 0 0 0-8.217zm0 1.441a2.667 2.667 0 1 1 0 5.334 2.667 2.667 0 0 1 0-5.334z"></path>
                            </svg>
							</a>

							</span>
						</div>
					</div>
				</div>

				<div class="p-4 lg:w-1/2">
					<div
						class="h-full flex sm:flex-row flex-col items-center sm:justify-start justify-center text-center sm:text-left">
						<img alt="team"
							class="flex-shrink-0 rounded-lg w-48 h-48 object-cover object-center sm:mb-0 mb-4"
							src="https://s11.favim.com/orig/7/784/7841/78416/dog-pfp-cute-Favim.com-7841606.jpg">
						<div class="flex-grow sm:pl-8">
							<h2 class="title-font font-medium text-lg text-gray-900">Marina</h2>
							<span class="inline-flex"> <a class="text-gray-500"
								href="https://www.instagram.com/marinaaqii/"> <svg
										fill="none" stroke="currentColor" stroke-linecap="round"
										stroke-linejoin="round" stroke-width="1" class="w-5 h-5"
										viewBox="0 0 24 24">
                            <path
											d="M8 0C5.829 0 5.556.01 4.703.048 3.85.088 3.269.222 2.76.42a3.917 3.917 0 0 0-1.417.923A3.927 3.927 0 0 0 .42 2.76C.222 3.268.087 3.85.048 4.7.01 5.555 0 5.827 0 8.001c0 2.172.01 2.444.048 3.297.04.852.174 1.433.372 1.942.205.526.478.972.923 1.417.444.445.89.719 1.416.923.51.198 1.09.333 1.942.372C5.555 15.99 5.827 16 8 16s2.444-.01 3.298-.048c.851-.04 1.434-.174 1.943-.372a3.916 3.916 0 0 0 1.416-.923c.445-.445.718-.891.923-1.417.197-.509.332-1.09.372-1.942C15.99 10.445 16 10.173 16 8s-.01-2.445-.048-3.299c-.04-.851-.175-1.433-.372-1.941a3.926 3.926 0 0 0-.923-1.417A3.911 3.911 0 0 0 13.24.42c-.51-.198-1.092-.333-1.943-.372C10.443.01 10.172 0 7.998 0h.003zm-.717 1.442h.718c2.136 0 2.389.007 3.232.046.78.035 1.204.166 1.486.275.373.145.64.319.92.599.28.28.453.546.598.92.11.281.24.705.275 1.485.039.843.047 1.096.047 3.231s-.008 2.389-.047 3.232c-.035.78-.166 1.203-.275 1.485a2.47 2.47 0 0 1-.599.919c-.28.28-.546.453-.92.598-.28.11-.704.24-1.485.276-.843.038-1.096.047-3.232.047s-2.39-.009-3.233-.047c-.78-.036-1.203-.166-1.485-.276a2.478 2.478 0 0 1-.92-.598 2.48 2.48 0 0 1-.6-.92c-.109-.281-.24-.705-.275-1.485-.038-.843-.046-1.096-.046-3.233 0-2.136.008-2.388.046-3.231.036-.78.166-1.204.276-1.486.145-.373.319-.64.599-.92.28-.28.546-.453.92-.598.282-.11.705-.24 1.485-.276.738-.034 1.024-.044 2.515-.045v.002zm4.988 1.328a.96.96 0 1 0 0 1.92.96.96 0 0 0 0-1.92zm-4.27 1.122a4.109 4.109 0 1 0 0 8.217 4.109 4.109 0 0 0 0-8.217zm0 1.441a2.667 2.667 0 1 1 0 5.334 2.667 2.667 0 0 1 0-5.334z"></path>
                          </svg>
							</a>

							</span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
</body>