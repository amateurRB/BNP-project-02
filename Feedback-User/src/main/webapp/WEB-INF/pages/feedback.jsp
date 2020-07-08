<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Feedback</title>
<style> 

.container {
        
               background: linear-gradient(90deg,rgb(216, 179, 206),rgb(201, 248, 245));
    } 
  
* {    
  box-sizing: border-box; 
     
}    
    
input[type=text], select, textarea {    
  width: 80%;    
  padding: 12px;    
  border: 1px solid rgb(70, 68, 68);    
  border-radius: 4px;    
  resize: vertical;    
}    
input[type=email], select, textarea {    
  width: 80%;    
  padding: 12px;    
  border: 1px solid rgb(70, 68, 68);    
  border-radius: 4px;    
  resize: vertical;    
}    
    
label {    
  padding: 12px 12px 12px 0;    
  display: inline-block;    
}    
    
input[type=submit] {    
left:20px;
top: 1000px;
  background-color: rgb(37, 116, 161);    
  color: white;    
  padding: 12px 20px;    
  border: none;    
  border-radius: 4px;    
  cursor: pointer;    
  float: right;    
}    
    
input[type=submit]:hover { 
   
  background-color: rgb(143, 207, 58);    
}    
    
.container {    
  border-radius: 5px;    
  background-color: #f2f2f2;    
  padding: 20px;    
}    
    
.col-25 {    
  float: left;    
  width: 25%;    
  margin-top: 6px;    
}    
    
.col-75 {    
  float: left;    
  width: 55%;    
  margin-top: 6px;    
}    
    
/* Clear floats after the columns */    
.row:after {    
  content: "";    
  display: table;    
  clear: both;    
}    
</style>
</head>
<body>



<h2>FEED BACK FORM</h2>    
<div class="container">    


<form method="post" action="/feedback">
<div class="row">    
      <div class="col-25"><strong>Customer name :</strong>  <br></div>    
      <div class="col-75">
      <input type = "text" name = "cname" placeholder="Your Name " required><br>
      </div>    
    
		<div class="col-25"><strong>Email :</strong> <br></div>
		      <div class="col-75">
		<input type = "email" name ="cEmail" placeholder="Your Email " required><br>
		</div>    
    
		<div class="col-25"><strong>Address :</strong> <br></div>
			<div class="col-75">
				<input type = "text" name ="cAdd" placeholder="Your Address" required><br>
				      
			</div>    
		
		<div class="col-25">	<strong>Select your country:</strong><br></div>
         			<div class="col-75">
         
         <select id="country" name="country" required>    
            <option value="none">Select Country</option>    
          <option value="australia">Australia</option>    
          <option value="canada">Canada</option>    
          <option value="usa">USA</option>    
          <option value="russia">Russia</option>    
          <option value="japan">Japan</option>    
          <option value="india">India</option>    
          <option value="china">China</option>    
        </select>
        </div>
        <br>
        <br>
		
		
		<div class="col-25">	<strong>What did you shop?</strong>	<br> </div>
			<div class="col-75">
		
		
		 Bottomwear<input type = "checkbox" name="carttype" value = "bottom" checked = "checked" > <br>
         Topwear <input type = "checkbox" name="carttype" value = "topwear"> <br>
		 Accessories <input type = "checkbox" name="carttype" value = "Accessories"> <br>
         
         </div>
         
         <div class="col-25">	<strong>When did you shop?</strong>	<br> </div>
			<div class="col-75">
			<input type = "date" name="calender" value = "Accessories"> <br>
			</div>
         
         
         <div class="col-25">		<strong>Your experience with quality</strong><br> </div>
			<div class="col-75">
         
               Very Bad<input type = "radio" name="quality" value = "Very Bad" checked = "checked" >
               Bad<input type = "radio" name="quality" value = "Bad" checked = "checked" >
                              Average<input type = "radio" name="quality" value = "Average" checked = "checked" >
               
                              Good<input type = "radio" name="quality" value = "Good" checked = "checked" >
               
                              Excellent<input type = "radio" name="quality" value = "Very Good" checked = "checked" >
               
               
               </div>
         
         <div class="col-25">	<strong>Your views on Sizing</strong>	<br> </div>
			<div class="col-75">
         
               Very Bad<input type = "radio" name="size" value = "Very Bad" checked = "checked" >
               Bad<input type = "radio" name="size" value = "Bad" checked = "checked" >
                              Average<input type = "radio" name="size" value = "Average" checked = "checked" >
               
                              Good<input type = "radio" name="size" value = "Good" checked = "checked" >
               
                              Excellent<input type = "radio" name="size" value = "Very Good" checked = "checked" >
               
               
               </div>
         
         <div class="col-25">		<strong>Your views on Delivery</strong><br> </div>
			<div class="col-75">
         
               Very Bad<input type = "radio" name="delivery" value = "Very Bad" checked = "checked" >
               Bad<input type = "radio" name="delivery" value = "Bad" checked = "checked" >
                              Average<input type = "radio" name="delivery" value = "Average" checked = "checked" >
               
                              Good<input type = "radio" name="delivery" value = "Good" checked = "checked" >
               
                              Excellent<input type = "radio" name="delivery" value = "Very Good" checked = "checked" >
               
               
               </div>
               
               <div class="col-25">   <strong>Anything else you would like to share? </strong>
      </div>    
      <div class="col-75">    
        <textarea id="subject" name="subject" placeholder="Write something.." style="height:200px"></textarea>    
      </div>
        
               <div style = "position:fixed; right:80px; top:620px;">
         
 	<input type = "submit" onclick="getLocation()" id="submit"  width=50px height=100px value = "submit feedback"></div>
		 </div>
              
	</form>
	
    </div> 
    
    
    <script>

    var x= document.getElementById("submit")
    function getLocation(){
        if(navigator.geolocation){
            navigator.geolocation.getCurrentPosition(showPosition)
        }
    }

    function showPosition(position){
        x.innerHTML="Latitude:" + position.coords.latitude +
        "<br> Longitude"+ position.coords.longitude
    }


    </script>     
</body>
</html>


