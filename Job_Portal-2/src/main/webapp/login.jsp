<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="shortcut icon" type="x-icon" href="job-offer.png">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="all_components/all_css.jsp"%>
<style>

body{
background-image:url("https://preview.redd.it/0bb6dqsiab451.gif?s=b0c65596a54a30708da26669da6e79abf3be1680");
height:100%;
background-size:cover;
}

.footty{
position :fixed;
bottom:0;
width:100%;
}
</style>
</head>
<body>
	<%@include file="all_components/navbar.jsp"%>
	<c:if test=" ${userobj.role ne 'admin'} ">
<c:redirect url="login.jsp"></c:redirect>
</c:if>
	<div class="container-fluid">
		<div class="row p-5">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">
						<div class="text-center">
							<i class="fa fa-user-plus fa-2x" aria-hidden="true"></i>
							<h5>Login Page</h5>
						</div>
						<c:if test="${not empty succMsg}">
                            <h4 class="text-center text-danger">${succMsg}
                            </h4>
                            <c:remove var="succMsg"/>
                        </c:if>
						<form action="login" method="post">
							<div class="form-group">
								<label>Enter Email</label><input type="email"
									required="required" class="form-control" id="exampleInputEmail"
									aria-describedby="emailHelp" name="email">
							</div>

							<div class="form-group">
								<label for="exampleInputPassword!">Enter password</label><input
									type="password" required="required" class="form-control"
									id="exampleInputPassword1" name="password">
							</div>
							<button type="submit" class="btn btn-primary badge-pill btn-block" style="background-color:#fcb1a6;">Login</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
<div class="footty">
<%@include file="all_components/footer.jsp" %>
</div>
</body>
</html>