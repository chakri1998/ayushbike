<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  
<!DOCTYPE html>
<html>
<style>
body {
    background-image:
        url('https://data:image/jpeg;base64,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');
    background-repeat: no-repeat;
    background-attachment: fixed;
    background-size: cover;
    background-size: 100% 100%;
}
</style>
<head>
<style>
body {
    background-image:
        url('https://www.legalwiz.in/wp-content/uploads/Difference-between-Voluntary-and-Mandatory-GST-Registration.jpg');
    background-repeat: no-repeat;
    background-attachment: fixed;
    background-size: cover;
    background-size: 100% 100%;
}
</style>
	<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
	<title>Insert title here</title>
</head>

<body>

	<h1 align="center">Registration Form</h1>
	<div class="container" >
		<form action="/addcustomer" id="options" method="post" >
			
		 <div class="form-group">
      <label for="customerName">customer Name:</label>
      <input type="text" class="form-control" id="customerName" placeholder="Enter customerName" name="customerName" >  
    </div>
    
    
 <label for="customerhobbies">Hobbies:</label>
<div class="form-group form-check">
<label class="form-check-label">
<input type="checkbox" name="customerhobbies" id="customerhobbies" value="READING">READING
</label>
<label class="form-check-label">
<input type="checkbox" name="customerhobbies" id="customerhobbies" value="SWIMING">SWIMING
</label>
<label class="form-check-label">
<input type="checkbox" name="customerhobbies" id="customerhobbies" value="PROGRAMING">PROGRAMING
</label>
<label class="form-check-label">
<input type="checkbox" name="customerhobbies" id="customerhobbies" value="COOKING">COOKING
</label>
</div>
    
    
     <div class="form-group">
      <label for="customerPassword">User Password:</label>
      <input type="password" class="form-control" id="customerPassword" placeholder="Enter customerPassword" name="customerPassword" >  
    </div>
    
     <div class="form-group">
      <label for="customerConfirmPassword">Confirm password:</label>
      <input type="password" class="form-control" id="customerConfirmPassword" placeholder="Enter customerConfirmPassword" name="customerConfirmPassword" >  
    </div>
	  <label for="projectId">Customer Gender:</label>
    <div class="form-group form-check">
    <label class="form-check-label">
    <input type="radio" class="form-check-input" name="customerGender" id="customerGender" value="Male">Male
    </label>
  
</div>
<div class="form-group form-check">
    <label class="form-check-label">
    <input type="radio" class="form-check-input" name="customerGender" id="customerGender" value="Female"> Female
</label>
</div>	
		 <div class="form-group">
      <label for="fightName">User Email:</label>
      <input type="text" class="form-control" id="customerEmail" placeholder="Enter customerEmail" name="customerEmail" >  
    </div>	
 <div class="form-group">
      <label for="fightName">User Phone:</label>
      <input type="text" class="form-control" id="customerPhoneNumber" placeholder="Enter customerPhoneNumber" name="customerPhoneNumber" >  
    </div>	
	

	<div class="form-group">
		<input type="checkbox" name="terms" id="terms" >Agreed Terms & Conditions
	</div>

		<div >
			<input type="submit"  value="register">
		</div>


	
	</form>
	</div>
	<script src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/jquery.validate.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.1/additional-methods.min.js"
		integrity="sha256-vb+6VObiUIaoRuSusdLRWtXs/ewuz62LgVXg2f1ZXGo=" crossorigin="anonymous"></script>

	<script>
		
		
		$.validator.addMethod("passval", function (value, element) {
			
			 var pass_regex=/^(?=.*[0-9])(?=.*[A-Z])(?=.*[!@#$%*&~])[A-Za-z0-9!@~#$%^*]{7,15}$/;
			    var conpass=$('#customerPassword').val();
			    var validPass=pass_regex.test(conpass);
			    
			    if(!validPass)
			    {
			      alert("Password is not valid");
			      return false;
			     
			    }
			return true;
		}, "Enter the valid password ");
		
		
		$.validator.addMethod("emailval", function (value, element) {
			
			var email_pattern=/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
			if(!($('#userEmail').val().match(email_pattern)))
			{
			   return false;
			}
			return true;
		}, "Enter the valid email ");
		
		
$.validator.addMethod("confirmpassval", function (value, element) {		
	 var conpass=$('#customerPassword').val();
	 var confpass=$('#customerConfirmPassword').val();
	 if(confpass!=conpass)
     {
    return false;
     }
	 return true;
	 
		}, "password and confirm password is not matched");


		$("form").validate({
			rules: {
				customerName: {
					required: true,
					minlength: 10,
					lettersonly: true
				},
				customerPhoneNumber: {
					required: true,
					number: true,
					maxlength: 10,
					minlength:10

				},
				customerGender:{
					required:true
				},
				customerEmail:{
					required: true,
					emailval:true
				},
				terms: {
					required: true
				},
				customerhobbies:
					{
					required:true,
					minlength:2
					},
				customerPassword:{
					required:true,
					passval:true
				},
				customerConfirmPassword:{
					required:true,
					confirmpassval:true
				}

			}
		})
	</script>




</body>

</html>