<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

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
		 
		  <script type="text/javascript">
	   
         $(document).ready(function(){
        	 $('#customerModelvalue').change(function(){
debugger;
var modelId=$(this).val();
$.ajax({
 type:'GET',
 url:window.location.origin+'/rest/loadprice/'+modelId,
 success:function(result){

   $('#modelPrice').val(result);
 }
});
   });
         });
        
       
		 </script>
		<!--  .on("click",function(){ -->
     
		  <script type="text/javascript">
	   
         $(document).ready(function(){
        	 $('#customerQuantitiesPurchased').change(function(){
debugger;
var customerQuantitiesPurchased=$(this).val();
$.ajax({
 type:'GET',
 url:window.location.origin+'/rest/loadtotalprice/'+customerQuantitiesPurchased,
 success:function(result){
   $('#totalprice').val(result);
 }
});
   });
         });
         
       
		 </script>
		 
	<title>Insert title here</title>
</head>
<jsp:include page="options.jsp"></jsp:include>
<body>
<div class="container">
		<form action="/buyavehiclelink" id="options" method="post" onsubmit="return validate()">
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
		 size="1" >
		
		</select><br><br>
		</div>
		
     <div class="form-group">
      <label for="modelPrice">Model Price:</label>
      <input type="text" class="form-control" id="modelPrice"  name="modelPrice" value="">  
    </div>
     <div class="form-group">
      <label for="customerQuantitiesPurchased">Quantities of purchase:</label>
      <input type="text" class="form-control" id="customerQuantitiesPurchased" placeholder="Enter customer Quantities Purchased" name="customerQuantitiesPurchased" >  
    </div>
     <div class="form-group">
      <label for="customerName">Total price:</label>
      <input type="text" class="form-control" id="totalprice"  name="totalprice"  value="">  
    </div>
     <div class="form-group">
      <label for="customerOrderDate">Order Date:</label>
      <input type="date" class="form-control" id="customerOrderDate" placeholder="Enter customer Order Date" name="customerOrderDate" >  
    </div>
     <div class="form-group">
      <label for="customerDeliveryDate">Delivery Date:</label>
      <input type="date" class="form-control" id="customerDeliveryDate" placeholder="Enter customer Delivery Date" name="customerDeliveryDate" >  
    </div>
    
     <button type="submit" class="btn btn-primary">Submit</button>
    </form>
    </div>
</body>
<script src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/jquery.validate.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.1/additional-methods.min.js"
    integrity="sha256-vb+6VObiUIaoRuSusdLRWtXs/ewuz62LgVXg2f1ZXGo=" crossorigin="anonymous"></script>


<script>
$.validator.addMethod("datavalidation", function (value, element) {
	
	var inputDate1 = new Date($('#customerOrderDate').val());
	var inputDate2 = new Date($('#customerDeliveryDate').val());
	if (inputDate1 < inputDate2) {
		return true;
	} else {
		return false;
	}
}, "Enter delivery date should be greater than present...!");

$("form").validate({
	rules: {
		
		customerDeliveryDate: {
			required: true,
			datavalidation: true

		},
		customerQuantitiesPurchased: {
			required: true,
			number:true
		}
		
	}
})
	</script>

</html>
