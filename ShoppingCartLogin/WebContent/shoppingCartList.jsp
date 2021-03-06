<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css"
	integrity="sha512-dTfge/zgoMYpP7QbHy4gWMEGsbsdZeCXz7irItjcC3sPUFtf0kuFbDz/ixG7ArTxmDjLXDmezHubeNikyKGVyQ=="
	crossorigin="anonymous" rel="stylesheet">
<!-- Optional theme -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css"
	integrity="sha384-aUGj/X2zp5rLCbBxumKTCw2Z50WgIr1vs/PFN4praOTvYXWlVyh2UtNUU0KAUhAX"
	crossorigin="anonymous">
</head>
<body>
<div class="container">
<nav class="navbar navbar-default">
      <div class="container">
	<div class="container">
		<div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          
           <c:if test="${loginFlag== true}">
          <a class="navbar-brand">Twitter!</a> 
             </c:if>
                <c:if test="${loginFlag!= true}">
          <a class="navbar-brand" href="index.html">Twitter!</a> 
             </c:if>
          <c:if test="${loginFlag== true}">
           <a class="navbar-brand" href="NewTweet.jsp">Share a Tweet!</a>
         </c:if>
         
          <a class="navbar-brand" href="http://localhost:8080/BullhornWebApplication/tweetServlet">Tweets</a>
          <c:if test="${loginFlag== true}">
          <a class="navbar-brand" href="http://localhost:8080/BullhornWebApplication/UserProfileServlet?username=${myUser.username}">Profile</a>
          </c:if>
          <c:if test="${ loginFlag == true }">
				<a class="navbar-brand" href="LogoutServlet">Log Out</a>
       		</c:if>
         
         
          <a class="navbar-brand">Lineitems List </a> 
           
              
        </div>

      </div>
      </div>
    </nav>
    </br >
<div class="panel panel-default">

  <div class="panel-body">
		<table class="table table-striped">
<thead>

			<tr>
			  
				<th>ProductName</th>
				<th>UnitPrice</th>
		         <th>Quantity</th>
		          <th>Subtotal</th>
			</tr>
</thead>
<tbody>
<c:forEach var="p" items="${MyshoppingCart}">
             <tr>
			    <td>${p.productname}</td>
				<td>${p.unitPrice}</td>
				<td>${p.quantity}</td>
			    <td>${p.price}</td>
			</tr>
			
</c:forEach>
              

</tbody>
		</table>
		
<label>Total:</label><c:out value="${GrandTotal}" />
<br>

  <a href = "ShopCartServlet" class="btn btn-info">Continue</a>
 <a href = "#" class="btn btn-info">Checkout</a>
  </div>
  </div>
  </div>

 
  
   
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"
		integrity="sha512-K1qjQ+NcF2TYO/eI3M6v8EiNYZfA95pQumfvcVrTHtwQVDG+aHRqLi/ETn2uB+1JqwYqVG3LIvdm9lj6imS/pQ=="
		crossorigin="anonymous"></script>
   
</body>
</html>