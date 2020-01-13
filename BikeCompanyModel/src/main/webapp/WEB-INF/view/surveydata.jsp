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

<style>
 
div {
    width: 100px;
    height: 100px;
    background: fuchsia;
    -webkit-transition: width 2s, height 2s, -webkit-transform 2s;
    /* Safari */
    transition: width 2s, height 2s, transform 2s;
}

 

 div:hover {
    width: 300px;
    height: 300px;
    -webkit-transform: rotate(180deg); /* Safari */
    transform: rotate(180deg);
}
 
</style>
<title>Insert title here</title>
</head>
<script language="javascript">
			function getAllCompanyRevenue(comid) {
				
			
				window.location.href = '/getAllCompanyRevenueGenerated?comid='+ comid;
			}
		</script>
<body>

			<label >Select Company</label>
		 
		 <select name="comid" id="comid" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" 
		 size="1" onchange ="getAllCompanyRevenue(this.value)">
		 <option value="" >select the Company
			<c:forEach var="cus" items="${companyList}">
				
				<option value="${cus.companyId}">${cus.companyName}

				</option>
			</c:forEach>
		</select><br><br>
	

 <div >
      <label for="customerName">customer Name:</label>
      <input type="text" class="form-control" id="customerName" placeholder="Enter customerName" name="customerName" value="${revenue}" >  
    </div>
    





  </body>
  
</html>
