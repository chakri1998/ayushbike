<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="options.jsp"></jsp:include>
	<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
   <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
    
    	 <script type="text/javascript">
	   
         $(document).ready(function(){
        	 $('#customerCompany').change(function(){
debugger;
var companyId=$(this).val();
$.ajax({
 type:'GET',
 url:window.location.origin+'/rest/loadmodel/'+companyId,
 success:function(result){

   var s='';
   s+='<Option>Select The Model Name</Option>';
   for(var i=0;i<result.length;i++){
     s+='<option value="'+result[i].modelId+'">'+result[i].modelName+'</option>'
   }
   $('#customerModelvalue').html(s);
 }
});
   });
         });
         
       
		 </script>
		 <script language="javascript">
			function getCustomerDetailsforModelData(modelid) {
				
			
				window.location.href = '/getCustomerDetailsforModel?modelid='+ modelid;
			}
		</script>
		<!--  
		  <script type="text/javascript">
	   
         $(document).ready(function(){
        	 $('#customerModelvalue').change(function(){
debugger;
var modelId=$(this).val();
$.ajax({
 type:'GET',
 url:window.location.origin+'/rest/loadcustomer/'+modelId,
 success:function(result){ 
	 var s='';
	 for(var x = 0; x < size; x++) {
		 s += '<tr><td>'+ result[x].customerId + '</td>'+ '<td>'+ 
		 result[x].customerName + '</td>'+ '<td>'+ result[x].customerGender + '</td></tr>';
		          } 
	 
	 $('#tablename').html(s);
 }
});
   });
         });
        
       
		 </script> -->

	
	<title>Insert title here</title>
</head>

<body>
<div class="container">
		
			<div class="form-group form-check">
			<label class="form-check-label" >Select Company Name</label>
		 
		 <select name="customerCompany" id="customerCompany" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" 
		 size="1" >
		 <option value="" >select Company Name
			<c:forEach var="company" items="${companyList}">	
				<option value="${company.companyId}">${company.companyName}</option>
			</c:forEach>
		</select><br><br>
		</div>
		<div class="form-group form-check">
			<label class="form-check-label" >Select Model Name</label>
		 
		 <select name="customerModelvalue" id="customerModelvalue" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" 
		 size="1" onchange ="getCustomerDetailsforModelData(this.value)">
		
		</select><br><br>
		<table class="table table-dark table-striped" id="tablename">

<tr>
<th>Customer Id</th><th>Customer Name</th><th>Customer PhoneNumber</th>
</tr>

<c:forEach var="pro" items="${customerListModel}">
<tr>
<td>${pro.customerId}</td>
<td>${pro.customerName}</td>
<td>${pro.customerPhoneNumber} </td>

</tr>
    </c:forEach> 
 
  </table>
		</div>
		
    </div>
</body>


</html>
