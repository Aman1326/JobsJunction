<%@page import="com.entity.jobs"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.JobDAO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<link rel="shortcut icon" type="x-icon" href="job-offer.png">
<meta charset="ISO-8859-1">
<title>Home</title>
<%@ include file = "all_components/all_css.jsp" %>
<style>
body{
background-color:#d6eeff;
}

.button {
  --bg: #000;
  --hover-bg: #ff90e8;
  --hover-text: #000;
  color: #fff;
  border: 1px solid var(--bg);
  border-radius: 4px;
  padding: 0.5em 2em;
  background: var(--bg);
  transition: 0.2s;
}

.button:hover {
  color: var(--hover-text);
  transform: translate(-0.25rem,-0.25rem);
  background: var(--hover-bg);
  box-shadow: 0.25rem 0.25rem var(--bg);
}

.button:active {
  transform: translate(0);
  box-shadow: none;
}

      
</style>
</head>
<body>
<c:if test="${ empty userobj }">
	<c:redirect url="login.jsp"/>
</c:if>
 
 <%@include file="all_components/navbar.jsp" %>
  <div class="container">
        <div class="row">
            <div class="col-md-12">
            <br>
                <h3 class="glow" style="">Add preferences to get matching Jobs</h3>
                <c:if test="${not empty succMsg}">
                    <h4 class="text-center text-danger">${succMsg}</h4>
                    <c:remove var="succMsg"/>
                </c:if> 
				
				<br>
                <div class="card" style="border: 1px solid black;">
                    <div class="card-body">
                        <form class="form-inline" action="more_view.jsp" method="get">
                            <div class="form-group col-md-5 mt-1">
                                <h5>Location</h5>
                            </div>
                            <div class="form-group col-md-4 mt-1">
                                <h5>Category</h5>
                            </div>
					
                            <div class="form-group col-md-5">
                                <select name="loc" class="custom-select" id="inlineFormCustomSelectPref">
                                    <option selected value="lo" > Choose...</option>
                                    <option value="">Odisa</option>
                                    <option value="Jharkhand">Jharkhand</option>
                                    <option value="Gujraat">Gujraat</option>
                                    <option value="Bhuwneshwar">Bhuwneshwar</option>
                                    <option value="Delhi">Delhi</option>
                                    <option value="Banglore">Banglore</option>
                                    <option value="Chennai">Channai</option>
                                    <option value="Hydrabad">Hydrabad</option>
                                </select>
                            </div>

                            <div class="form-group col-md-5">
                                <select name="cat" class="custom-select" id="inlineFormCustomSelectPref">
                                    <option selected value="ca">Choose...</option>
                                    <option value="IT">IT</option>
                                    <option value="Developer">Developer</option>
                                    <option value="Banking">Banking</option>
                                    <option value="Engineer">Engineer</option>
                                    <option value="Teacher">Teacher</option>
                                </select>
                            </div>
                            <button class="button">Search</button>
                        </form>
                    </div>
                </div>
                <br>
                 <h3 class="glow2">Recommended Jobs for you</h3><br>
                <% 
                JobDAO dao = new JobDAO(DBConnect.getConn());
                List<jobs> list = dao.getAlljobsForUser();
                for(jobs j: list){
                %>	
                <div class="card mt-2" style="border: 1px solid black;">
                	<div class="card-body">
                	<div class="text-center text-primary">
                	<i class="far fa-clipboard fa-2x"></i>
                	</div>
                
                <h6><%=j.getTitle() %></h6>
                <% 
                if(j.getDescription().length() > 0 && j.getDescription().length() < 120) {
                %>
                <p><%=j.getDescription() %>
                </p>
                
                <%
                } else {
                %>
                <p> <%= j.getDescription().substring(0,120) %>...
                </p>
                <%
                }
                %>
                <br>
                <div class="form-row">
                	<div class="form-group col-md-3">
                		<input type="text" class="form-control form-control-sm"
                		   value="location: <%=j.getLocation()%>" readonly> 
                	</div>
                	<div class="form-group col-md-3" >
                		<input type="text" class="form-control form-control-sm"
                		  value="Category: <%=j.getCategory()%>" readonly> 
                	</div>
                </div>
                
                <h6> 
            Publish Date: 
            <%=j.getPdate().toString() %>
            </h6>            
            	<div class="text-center" >
            		<a href="one_view.jsp?id=<%=j.getId() %>"
            		 class="btn btn-sm bg-success text-white" style="background-color:#fcb1a6;"> View More </a>
            	</div>               
            </div>
        </div>
        <%
                }
        %>
    </div>
 </div>
 </div>
 <br> 
</body>
<%@include file="all_components/footer.jsp" %>
</html>