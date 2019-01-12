<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import="model.Faculty" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<script>
function Sam()
{
	var aa=document.getElementById("button1");
	if(aa.type=="password")
	{
	  	aa.type="text";
	}else{
	 	aa.type="password";
	}
}
function checkForm(form)
{
  if(form.name.value == "") 
  {
    alert("Error: Name cannot be blank!");
    form.name.focus();
    return false;
  }
  re =/^[a-z]+$/i;
  if(!re.test(form.name.value)) 
  {
    alert("Error:Name must contain only letters!");
    form.name.focus();
    return false;
  }
  
  if(form.uid.value == "") 
  {
    alert("Error: User-ID cannot be blank!");
    form.uid.focus();
    return false;
  }
  re = /^\w+$/;
  if(!re.test(form.uid.value)) 
  {
    alert("Error: User-ID must contain only letters, numbers and underscores!");
    form.uid.focus();
    return false;
  }
  
  if(form.cno.value=="")
  {
	  alert("Error: Contact no. cannot be blank!");
	    form.cno.focus();
	    return false;
  }
  
  if(form.cno.value!="")
  {
	  if(form.cno.value.length !=10) 
	  {
	      alert("Error: Enter a valid 10 digit contact no.!");
	      form.cno.focus();
	      return false;
	  }
	  
  }
  
  if(form.eid.value=="")
  {
	  alert("Error: Email id cannot be blank!");
	    form.eid.focus();
	    return false;
  }
  if(form.pass.value != "" && form.pass.value == form.repass.value) 
  {
    if(form.pass.value.length < 6) 
    {
      alert("Error: Password must contain at least six characters!");
      form.pass.focus();
      return false;
    }
    re = /[0-9]/;
    if(!re.test(form.pass.value)) 
    {
      alert("Error: password must contain at least one number (0-9)!");
      form.pass.focus();
      return false;
    }
    re = /[a-z]/;
    if(!re.test(form.pass.value)) 
    {
      alert("Error: password must contain at least one lowercase letter (a-z)!");
      form.pass.focus();
      return false;
    }
    
  } 
  else 
  {
    alert("Error: Please check that you've entered and confirmed your password!");
    form.pass.focus();
    return false;
  }
}
</script>
<head>
<title> ADMIN | EDIT_FACULTY </title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<style type="text/css" rel="stylesheet">
	body{
	margin:0;
	background-image:url(2.jpg);
	background-repeat:no-repeat;
	 font-family:sans-serif;
	background-size:100% 920px;
}
#MyClockDisplay{
	font-color:red;
	font-style:oblique;
	font-size:15px;
	z-index:2;
	position:absolute;
	top:0.5%;
	left:79.5%;
}
h1{
	text-align: center;
	width:100% 900px;
	background-color:lime;
	opacity:0.8;
	padding:15px 0px;
}
p{
	width:100% 900px;
	opacity: 0.9;
	padding:0px 0px;
}
.vclass-form{
	text-align:center;
	margin:30px 460px;
}
#registration{
	width: 600px;
	background-color:aqua;
	border-radius:10px;
	opacity:0.9;
	padding:15px 0px;
}

#button{
	width:250px;
	padding:10px;
	border-radius:5px;
	outline:0px;	
}
#button:hover{
    cursor: text;
    background-color: beige;
    color:#0000a0;
}
#button1{
	width:250px;
	padding:10px;
	border-radius:5px;
	outline:0px;	
}
#button1:hover{
    cursor: text;
    background-color: beige;
    color:#0000a0;
}

#butt{
	width:120px;
	height:50px;
	border-radius:20px;
	outline:0px;
	background-color:black;
	color:white;
	font-size:18px;
}
.bank-form:hover{
    cursor: auto;
    background-color: beige;
    color:#0000a0;
}
.menu1 nav{
		position:absolute;
		top:86.5%;
		left:47%;
		
	}
	.menu1 nav ul{
		margin: 0px;
		padding: 0px;
		list-style: none;
	}
	.menu1 nav ul li {
		float:left;
		width: 70px;
		height: 60px;
		border:1px  solid white;
		opacity: .8;
		line-height: 15px;
		text-align: center;
		font-size: 17px;
		position:relative;
		border-radius:3px;
	
	}
	.menu1 nav ul li.home{
		background-color: dodgerblue;
	}
	.menu1 nav ul li a {
		text-decoration: none;
		color:white;
		display:block;
	}
	</style>
</head>
<body>
<div id="MyClockDisplay"></div>
	<script type="text/javascript">
		function showTime()
		{
			//Date
			var mydate=new Date();
			var year=mydate.getYear(); //get the year.
				if(year <1000)
					{
						year+=1900;
					}
			var day=mydate.getDay(); //get the day.
			var month=mydate.getMonth(); //get the month.
			var daym=mydate.getDate(); //day of the month.
			var dayarray= new Array("Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday");
			var montharray=new Array("January","February","March","April","May","June","July","August","September","October","November","December");
			
			//Time
			var date = new Date();
			var h= date.getHours(); //0-23
			var m= date.getMinutes(); //0-59
			var s=date.getSeconds(); //0-59
			var session="AM";
			if(h==0){
				h=12;
			}
			if(h>12){
				h=h-12;
				session="PM";
			}
			h=(h<10) ? "0"+ h : h;
			m=(m<10) ? "0"+ m : m;
			s=(s<10) ? "0"+ s : s;
			
			var date1="" +dayarray[day]+ " " +daym+ " " +montharray[month]+ " " +year+   "  |  "   +h + ":" + m + ":" + s + " " + session;
			
			document.getElementById("MyClockDisplay").innerText = date1;
			document.getElementById("MyClockDisplay").textContent = date1;
			
			setTimeout(showTime,1000);
		}
		showTime();
		
	</script>
<center>
<font color="blue" size="3">
<h1><b>VIRTUAL-CLASSROOM</b></h1>

<div class="vclass-form">

<form action="update_faculty" id="registration" method="post" onsubmit="return checkForm(this);">

<table align="center">

<h2 align="center"><b>EDIT FACULTY</b></h2>
<%Faculty editFaculty=(Faculty)request.getAttribute("facultyDetails");%>
<tr><td align="center">NAME</td><td align="center"><input type="text" name="name" class="field left" readonly="readonly" value="<%=editFaculty.getName() %>" id="button"></td></tr>
<tr><td align="center">USER-ID</td><td align="center"><input type="text" name="uid" class="field left" readonly="readonly" value="<%=editFaculty.getUser_id() %>" id="button"></td></tr>
<tr><td align="center">CONTACT NO.</td><td align="center"><input type="number" name="cno" title="Contact no. must be of 10 digits" value="<%=editFaculty.getPhno() %>" id="button" placeholder="Enter the contact no."></td></tr>
<tr><td align="center">EMAIL-ID</td><td align="center"><input type="email" name="eid" title="Email id must be a valid one" id="button" value="<%=editFaculty.getEid() %>" placeholder="Enter the email-id"></td></tr>
<tr><td align="center">PASSWORD</td><td align="center"><input type="password" name="pass" title="Password must contain at least 6 characters, including UPPER/lowercase and numbers." value="<%=editFaculty.getPassword() %>" id="button1" placeholder="Enter the password"></td><td><input type="checkbox" onclick="return Sam();">Show password</td></tr>
<tr><td align="center">CONFIRM PASSWORD</td><td align="center"><input type="password" name="repass" title="Please enter the same Password as above." value="<%=editFaculty.getPassword() %>" id="button" placeholder="Re-Enter the password"></td></tr>

</table>
<br><br>

<input type="submit" value="UPDATE" id="butt">&nbsp
<input type="reset" value="RESET" id="butt">
<br><br>
</form>
<br>
<div class="menu1">
		<nav>
			<ul>
					<li class="home"><a href="Admin_logged.jsp"><br><i class="fa fa-home" aria-hidden="true"></i><br>Home</a></li>
					</ul>
		</nav>
	</div>
</div>
</font>
</center>
</body>
</html>