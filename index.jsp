 <head>
 <link rel="stylesheet" href="style.css" type="text/css" media="screen">
<style>
.mySlides {display:none;}

input[type="text"], input[type="mail"]
{
    border: none;
    background:silver;
    height: 50px;
    font-size: 16px;
	margin-left:2%;
	padding:15px;	
}
</style>
</head>
<body>
   <br>  
   
<div class="header">
  <a href="#default" class="logo"><img class="logo" src="Logo1.png"></a>
  <div class="header-right">
    <a class="active" href="index.jsp">Home</a>
    <a href="adminLogin.jsp">Admin Login</a>
    <a href="logout.jsp">Logout</a>
  </div>
</div>

<div style="max-width:100%">
  <img class="mySlides"  src="slide1.jpg" >
  <img class="mySlides"  src="slide2.png" >
</div>
<script>
var myIndex = 0;
logo_1();

function logo_1(){
	debugger ;
    var i;
    var x = document.getElementsByClassName("mySlides");
       //alert(x.length);
    for (i = 0; i < x.length; i++) {
       x[i].style.display = "none";
   
    }
    myIndex++;
    console.log("increae value"+myIndex++);
    if (myIndex > x.length) {
    myIndex = 1
    console.log(myIndex);
    }    
    x[myIndex-1].style.display = "block";  
    setTimeout(logo_1, 2000); // Change image every 2 seconds
}
</script>


<body>
  <br>
      <%
String msg = request.getParameter("msg");
///out.println("Received msg parameter: " + msg);
if ("valid".equals(msg)) {
%>
<center><font color="red">Form submitted successfully</font></center>
<% 
} else if ("invalid".equals(msg)) {
%>
  7
<% 
}
%>
  <center style="padding-top:10px">Enter your Details to Request for blood</center>

     <form action="indexFormAction.jsp" method="post">
    <center>
    <input type="text" name="name" placeholder="Enter the name" required="required">
    <input type="mail" name="email" placeholder="Enter the email" required="required">
    <input type="text" name="mobilenumber" placeholder="Enter the number" required="required">
    <input type="text" name="bloodgroup" placeholder="Enter the bloodgroup" required="required">
    <button  class="button1"><span>Submit</span></button>
    </center>
   </form>
  <br>
  <br>
  </div>
</div>

<div class="row1"> 
<div class="container"> 
<br>         
<br>

    </tbody>
  </table>
</div>
</div>
<h3><center>All Right Reserved @ BTech Days :: 2020  </center></h3>

</body>
</html>

