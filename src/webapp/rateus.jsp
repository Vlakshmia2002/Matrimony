<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>FeedBack Form</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href='https://unpkg.com/boxicons@2.1.1/css/boxicons.min.css'
	rel='stylesheet'>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

<script type="text/javascript"
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.1/jquery.validate.min.js"></script>
	
<style>

@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap');

:root {
	--yellow: #FFBD13;
	--blue: #4383FF;
	--blue-d-1: #3278FF;
	--light: #F5F5F5;
	--grey: #AAA;
	--white: #FFF;
	--shadow: 8px 8px 30px rgba(0,0,0,.05);
}

* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: sans-serif;
}
body {
	align-items: center;
	min-height: 100vh;
}
.main{
width:100%;
height:80vh;
background-color: whitesmoke;
padding:50px;
}
.error{
color:red;
}
td input{
display:block;
}
.jumbotron{
background-color: white;
}
#err{
padding: 10px;
width: 50%;
font-weight: bold;
}
#msg {
	color: green;
	width: 100%;
	font-weight: bold;
	font-size: 25px;
	padding: 5px;
}
.wrapper {
	
	padding: 2rem;
	max-width: 450px;
	width: 70%;
	border-radius:2%;
	box-shadow:0px 0px 10px 10px rgba(0,0,0,.24),0 17px 50px 0 rgba(0,0,0,.19);
	text-align: center;
}
.wrapper h3 {
	font-size: 1.5rem;
	font-weight: 600;
	margin-bottom: 1rem;
	background-color: orange;
	padding:10px;
	border-radius:2%;
}
.rating {
	display: flex;
	justify-content: center;
	align-items: center;
	grid-gap: .5rem;
	font-size: 2rem;
	color: var(--yellow);
	margin-bottom: 2rem;
}
.rating .star {
	cursor: pointer;
}
.rating .star.active {
	opacity: 0;
	animation: animate .5s calc(var(--i) * .1s) ease-in-out forwards;
}

@keyframes animate {
	0% {
		opacity: 0;
		transform: scale(1);
	}
	50% {
		opacity: 1;
		transform: scale(1.2);
	}
	100% {
		opacity: 1;
		transform: scale(1);
	}
}


.rating .star:hover {
	transform: scale(1.1);
}
textarea {
	width: 100%;
	background: var(--light);
	padding: 1rem;
	border-radius: .5rem;
	border: none;
	outline: none;
	resize: none;
	margin-bottom: .5rem;
}
.btn-group {
	display: flex;
	grid-gap: .5rem;
	align-items: center;
}
.btn-group .btn {
	padding: .75rem 1rem;
	border-radius: .5rem;
	border: none;
	outline: none;
	cursor: pointer;
	font-size: .875rem;
	font-weight: 500;
}
.btn-group .btn.submit {
	background: var(--blue);
	color: var(--white);
}
.btn-group .btn.submit:hover {
	background: var(--blue-d-1);
}
.btn-group .btn.cancel {
	background: var(--white);
	color: var(--blue);
}
.btn-group .btn.cancel:hover {
	background: var(--light);
}
</style>
</head>
<body>
	<%@ include file="header.jsp"%>
	</br>
	<div class="main">
	<center>
		<div class="wrapper">
			<center>
				<%
				if (request.getAttribute("status") != null) {
				%>
				<div id="msg">
					<%=request.getAttribute("status")%></div>
				<%
				}
				%>
			</center>
			<h3 style="color:green;">Rate Your Experience</h3>
			<form method="POST" id="review" action="register">
				<div class="rating">
					<input type="text" name="rating" hidden> <i class='bx bx-star star' style="--i: 1;"></i>
						 
						<i class='bx bx-star star' style="--i: 2;"></i> 
						<i class='bx bx-star star' style="--i: 3;"></i>
						
						 <i class='bx bx-star star' style="--i: 4;"></i> 
						
						<i class='bx bx-star star' style="--i: 5;"></i>
						
				</div>
				<div>
					<input type="text" class="form-control" name="name" value="<%=session.getAttribute("name")%>"></br>
						 <input type="email" class="form-control" name="email" value="<%=session.getAttribute("email1")%>">
						
						
				</div>
				</br>
				<textarea type="text" name="opinion" cols="30" rows="3" placeholder="Your opinion..." style="height: 100px; background-color: white; border: none;">
					
					</textarea>
				<div class="btn-group">
					<button type="submit" class="btn submit" name="view">Submit</button>
				</div>
			</form>
		</div>
	</center>
	</div>
	</br>
	<script>
	const allStar = document.querySelectorAll('.rating .star')
	const ratingValue = document.querySelector('.rating input')

	allStar.forEach((item, idx)=> {
		item.addEventListener('click', function () {
			let click = 0
			ratingValue.value = idx + 1

			allStar.forEach(i=> {
				i.classList.replace('bxs-star', 'bx-star')
				i.classList.remove('active')
			})
			for(let i=0; i<allStar.length; i++) {
				if(i <= idx) {
					allStar[i].classList.replace('bx-star', 'bxs-star')
					allStar[i].classList.add('active')
				} else {
					allStar[i].style.setProperty('--i', click)
					click++
				}
			}
		})
	})
	</script>
	
</body>
</html>