<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="options.jsp"></jsp:include>
 <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<meta charset="ISO-8859-1">

<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>

<title>Insert title here</title>
</head>
<script language="javascript">
			function getCustomerDetails(cusid) {
				
			
				window.location.href = '/getCustomerDetailsbyid?cusid='+ cusid;
			}
		</script>
<body>
<div align="center" class="container">

<div class="form-group">
			<label >Select Customer</label>
		 
		 <select name="cusid" id="cusid" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" 
		 size="1" onchange ="getCustomerDetails(this.value)">
		 <option value="" >select the Customer
			<c:forEach var="cus" items="${customerList}">
				
				<option value="${cus.customerId}">${cus.customerName}

				</option>
			</c:forEach>
		</select><br><br>
		</div>


<table class="table table-dark table-striped">

<tr>
<th>Model Id</th><th>Model Name</th><th>Company Name</th><th>Model Price</th><th>Quantity Purchased</th><th>Number of days</th>
</tr>

<tr>
<td>${modelid}</td>
<td>${modelname}</td>
<td>${companyname} </td>
<td>${modelprice} </td>
<td>${quantitypurchase} </td>
<td>${numofdays} </td>

</tr>
 
  </table>
</div>

  </body>
  
</html>
