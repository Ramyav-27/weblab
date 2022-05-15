<!doctype html>
<html>
<head>
<title>Validation form</title>
<style>
.head
{
position:absolute;
color:black;
left:630px;
font-weight:bold;
font-size:40px;
bottom:540px;
}
body{
        background-image:url(http://pavbca.com/walldb/original/e/7/9/646541.jpg);
background-repeat: no-repeat;
background-size:100% 150%;

    }
    div{
        background-color: transparent;
        color: 	  black;

        text-align: center;
        height: 50px;
    }
.form{
        background-color:transparent;

        text-align:left;
        border-radius: 5px;  
        position: relative;
        left: 480px;
        width: 400px;
top:70px;
        height: 380px;
        padding-top: 20px;
padding-left:20px;
        border-style: solid;
        border-width: 5px;
}
.sub
{
position:absolute;
left:150px;
font-size:18px;
transition-duration: 0.4s;
 background-color:grey;
color:white;
font-weight:bold;
}
.sub:hover {
  background-color: powderblue;
  color: black;
}

</style>
<script>
function validate()
{
var x=document.forms["storeform"]["name"].value;
if(x=="")
{
alert("Pls fill the Name");
return false;
}

let y=document.forms["storeform"]["mailid"].value;
if (!(/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(y)))
{
alert("Invalid Email address");
return false;
}

let a=document.forms["storeform"]["age"].value;
if(a<18)
{
alert("you are not eligible to open an account");
return false;
}

let k=document.forms["storeform"]["phone"].value;
if(k.length<10)
{
alert("Invalid Phone Number");
return false;
}

var e = document.getElementById("loc");
var str= e.options[e.selectedIndex].text;
alert("Hi "+x+", Grocery shops located in "+ str +" is here for you!!!");
}

function mail()
{
let x=document.forms["storeform"]["mailid"].value;
if (/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(x))
{
return true;
}
alert("Invalid Email address");
return false;
}

function agecheck()
{
let x=document.forms["storeform"]["age"].value;
if(x<18)
{
alert("you are not eligible to open an account");
}
}
</script>
</head>
<body>
<h1 class="head"><b>Register</b></h1>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<div class="form">
    <form name="storeform">
<br>
        <label for="name"><b>Name:</b></label>
        <input type="text" id="name" name="name"><br><br>
       
        <label for="mailid"><b>E-mail Id:</b></label>
        <input type="text" id="mailid" name="mailid"><br><br>

<label for="pwd"><b>Password:</b></label>
        <input type="password" style="-webkit-text-security: *"  id="pwd" name="pwd"><br><br>
       
        <label for="gender"><b>Gender:</b></label>
        <input type="radio" id="male" name="gender" value="male">
        <label for="html">Male</label>
        <input type="radio" id="female" name="gender" value="female">
        <label for="html">Female</label><br><br>

        <label for="age"><b>Age:</b></label>
        <input type="number" id="age" name="age"><br><br>

        <label for="birthday"><b>DOB:</b></label>
        <input type="date" id="dob" name="dob"> <br><br>

        <label for="birthday"><b>Phone number:</b></label>
        <input type="number" id="phone" name="phone"> <br><br>

<label><b>Location: </b></label>
<select class="form-select" id="loc" aria-label="Default select example">
  <option selected>Select Location...</option>
  <option value="1">Chennai</option>
  <option value="2">Madurai</option>
  <option value="3">Tirunelveli</option>
  <option value="4">Tuticorin</option>
  <option value="5">coimbatore</option>
<option value="5">Tanjavur</option>
<option value="5"></option>
</select><br><br>

<input class="sub" type="submit" onclick="validate()" value="Submit">
      
      </form></div>
</body>
</html>
