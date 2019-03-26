<%@ page language="java" contentType="text/html; 
charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin Dashboard</title>
<link rel="stylesheet" href="font-awesome/css/font-awesome.min.css" >
<style type="text/css">
.popup-overlay{
  /*Hides pop-up when there is no "active" class*/
  visibility:hidden;
  position:absolute;
  border:3px solid #666666;
  width:50%;
  height:87%;
  left:25%; 
  background-color: crimson;
  top: 1%;
}
.popup-overlay-active{
  /*displays pop-up when "active" class is present*/
  visibility:visible !important;
  text-align:center;
}

.popup-content {
  /*Hides pop-up content when there is no "active" class */
 visibility:hidden;
}

.popup-content-active {
  /*Shows pop-up content when "active" class is present */
  visibility:visible !important;
}

/* button{
  display:inline-block;
  vertical-align:middle;
  border-radius:30px;
  margin:.20rem;
  font-size: 1rem;
  color:#666666;
  background:   #ffffff;
  border:1px solid #666666;  
}

button:hover{
  border:1px solid #666666;
  background:#666666;
  color:#ffffff;
}
 */
.fa-close{
font: normal normal normal 23px/1 FontAwesome;
-webkit-font-smoothing: antialiased;
display: inline-block;
color: white;
}  
  
.fa-search:before
{
	content: "\f002";
}

.fa-search{
font: normal normal normal 23px/1 FontAwesome;
-webkit-font-smoothing: antialiased;
display: inline-block;
color: #d61035;
}  
  
.fa-close:before
{
	content: "\f00d";
}


.fa-email:before
{
	content: "\f0e0";
}

.fa-email{
font: normal normal normal 23px/1 FontAwesome;
-webkit-font-smoothing: antialiased;
display: inline-block;
}  

.fa-phone:before
{
	content: "\f095";
}

.fa-phone{
font: normal normal normal 23px/1 FontAwesome;
-webkit-font-smoothing: antialiased;
display: inline-block;
} 


.fa-address:before
{
	content: "\f041";
}

.fa-address{
font: normal normal normal 23px/1 FontAwesome;
-webkit-font-smoothing: antialiased;
display: inline-block;
} 

.fa-user:before
{
	content: "\f007";
}
.fa-user{
font: normal normal normal 23px/1 FontAwesome;
-webkit-font-smoothing: antialiased;
display: inline-block;
}
.search
{

border-radius:25px;
padding: 5%;
border-color: #d41872;
width: 60% !important;
margin-left: -2%;
border: 2px #a445b2 solid;
}

.searchClass{

border: 0px;
background: white;
margin-left: -22%;

}


table td{
text-align: center;
}

.addButton {
    display: inline-block;
    padding: 6px 12px;
    margin-bottom: 0;
    font-size: 18px;
    font-weight: normal;
    line-height: 1.42857143;
    text-align: center;
    white-space: nowrap;
    vertical-align: middle;
    cursor: pointer;
    width:70%;
    user-select: none;
    background-image: none;
    border: 1px solid transparent;
    border-radius: 21px;
    border-color: #7A1000;
	background: -webkit-linear-gradient(left, #a445b2, #d41872, #fa4299);
	color: #FFF;
    }
.searchdiv
{
margin-bottom: 2%;
}

input:focus, textarea:focus, select:focus{
        outline: none;
    }
.center
{
margin-left: auto;
margin-right: auto;
background: #FFF;
border: 1px solid #E5E5E5;
text-align: center;
padding: 20px;


font-size: 1.3rem ;
font-family:Helvetica Neue, Helvetica, Arial, sans-serif ;
color:black;
border-radius: 10px;
}

.login100-form-title {
    font-family:Helvetica Neue, Helvetica, Arial, sans-serif;
    font-size: 28px;
    color: #fff;
    line-height: 1.2;
    text-align: center;
    text-transform: uppercase;
    display: block;
    font-weight: bold;
   	margin-top: 2%;
    margin-bottom: 2%;
}

.addButtonwidth{

width: 40% !important;
}

input{
border-radius: 3px;
width: 54%;
border: 0px solid #E5E5E5;
padding: 2%;
margin: 3%;
}

.label
{

margin-left: -26%;
}

select{

border-radius: 10px; 

}

.centerWidth
{
width: 80%;
font-size: 1rem !important;
margin-top: 10%;
}

.showdetails
{
margin-bottom: 10%;

}


table th{
padding: 8px;
text-shadow: 0 1px 1px #FFF;
background: #F4F4F4;
}

table tr td{
    padding: 8px;
    line-height: 1.42857143;
    vertical-align: middle;
    border-bottom: 1px solid #ddd;
}

#main {
    margin: auto;
    width: 95%;
    min-height:100%
}

#sidebar    {
    width: 25%;
    min-height: 600px;
    background: #FFF;
    float: left;
    border-right: 1px solid #E5E5E5;
}

#page-wrap  {
    width: 74%;
    background: #FFF;
    min-height: 400px;
    float: left;
}

.clear:after {
    clear: both;
    display: table;
    content: "";
}

#adduserdetails  tr td
{
 border-bottom: 0px solid #ddd;\
 padding: 0px;
}
#clientdetails  tr td
{
 border-bottom: 0px solid #ddd;\
 padding: 0px;
}

</style>


<!-- <script src="jquery-1.8.0/jquery.js" language="javascript" type="text/javascript"></script> -->
<script src="http://code.jquery.com/jquery-2.1.0.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.10.4/jquery-ui.min.js"></script>
<script src="jquery-1.8.0/jquery.js"></script>
<script type="text/javascript">



$(window).on('load', function () {             
    var empname= '${employee.ename}';
   // alert("Vamsi"+empname+"krishna"); 
    if(empname=='' || empname==null)
    	{
    	  $('#popupoverlay').removeClass("popup-overlay-active");
		  $('#popupcontent').removeClass("popup-content-active");
    	}
    else
    	{
		  //alert("open popup");
    	  $('#popupoverlay').addClass("popup-overlay-active");
		  $('#popupcontent').addClass("popup-content-active");
    	}
     
    if('${addClientDiv}'=='addClientDiv')
    	{
    	
    	$('#addClientDiv').css("display", "block");
    	}
    if('${changePasswordDiv}'=='changePwdDiv')
	{
	
	$('#changePwdDiv').css("display", "block");
	}
});


$(document).ready(function(){
	
	//alert($("#eid").val());
	
	//$("#eid").val("");
	$("#eid").attr('placeholder', 'EmployeeID');
	$("#ename").attr('placeholder', 'Enter Name');
	$("#address").attr('placeholder', 'Enter Address');
	$("#phoneNumber").attr('placeholder', 'Enter Phone');
	$("#email").attr('placeholder', 'Email');
	
	$("#password").attr('placeholder', 'Enter New Password');
	$("#reEnterPwd").attr('placeholder', 'Re-Enter Password');
	
	
	$("#clientName").attr('placeholder', 'Enter Name');
	$("#clientEmail").attr('placeholder', 'Email');
	
	$("#clientAddress").attr('placeholder', 'Enter Address');
	$("#clientPhone").attr('placeholder', 'Enter Phone');
	
	$('#openid').click(function(){
		  
		//alert("open");
		  $('#popupoverlay').addClass("popup-overlay-active");
		  $('#popupcontent').addClass("popup-content-active");
		});

	//removes the "active" class to .popup and .popup-content when the "Close" button is clicked 
	$('#close').click(function(){
		  $('#popupoverlay').removeClass("popup-overlay-active");
		  $('#popupcontent').removeClass("popup-content-active");
		});
	
	$("#search").css('border', '');
	
});

</script>
</head>
<body>



<div class="center centerWidth clear" id="main">
<div><%@include file="header_top.jsp" %></div>
<div id="sidebar">
  
 <table style="width: 90%;">
 <tr>
 <td>
	 <form action="search">
	<div id="searchDiv" class="searchdiv">
	<input type="text" id="search" class="search" placeholder="Enter Employee ID" name="search"></input>
	<button id='searchButton' class='searchClass'><span class="fa-search"></span></button> 
	</div>
	
	</form>
 </td>
 </tr>
<tr>
<td>
<button class="open addButton" id="openid" >Add Employee</button>

</td>
</tr>
<tr>
<td>
<form action="listAll" method="get">
<button class="addButton" id="list" >List All Employees</button>
</form>
</td>
</tr>

<tr>
<td>
<form action="addClientButton" method="get">
<button class="addButton" id="addclientbutton" >Add Client Info</button>
</form>
</td>
</tr>
<tr>
<td>
<form action="listClients" method="get">
<button class="addButton" id="listclientbutton" >List All Clients</button>
</form>
</td>
</tr>


</table> 
</div>
<div id="page-wrap">

<div><h1>Project Management System</h1></div>

<div class="popup-overlay" id="popupoverlay">
  <!--Creates the popup content-->
   <div class="popup-content" id="popupcontent">
   <span class="close fa-close" id="close" style="margin-left: 95%"></span>
      <form:form action="add" method="post" modelAttribute="employee">
       
       <div class="login100-form-title ">Employee Details</div>
       
      <table class="center" width="50%" cellspacing="0" border="0" cellpadding="0" id="adduserdetails"> 
     <c:if test="${!empty employee.ename}">
	 <tr>
		<td>
			<form:input path="eid" readonly="true" size="10"  disabled="true" />
			<form:hidden path="eid" />
		</td> 
	 </tr>
     </c:if>
      <tr>
      <td>
      <span class="fa-user"></span>
      <form:input path="ename"/>
      <br/>
      </td>
      </tr>
      <tr>
      <td>
      <span class="fa-email"></span>
      <form:input path="email" /> 
       <br/>
      </td>
      </tr>
      <tr>
      <td>
      <span class="fa-phone"></span>
      <form:input path="phoneNumber" /> 
       <br/>
      </td>
      </tr>
      <tr>
      <td>
      <span class="fa-address"></span>
      <form:input path="address" /> 
       <br/>
      </td>
      </tr>
       <tr>
      <td>
      <%-- <form:radiobutton path = "role" value = "ADMIN" label = "Admin" />
      <form:radiobutton path = "role" value = "MANAGER" label = "Manager" />
      <form:radiobutton path = "role" value = "MEMBER" label = "Member" /> --%>
      <form:label path="role" cssClass="label">Role:</form:label>
      <form:select path="role">
                <form:option selected="selected" value="0">Select</form:option>
                <form:option value="ADMIN">Admin</form:option>
                <form:option value="MANAGER">Manager</form:option>
                <form:option value="MEMBER">Member</form:option>
      </form:select>
       <br/>
      </td>
      </tr>
      <tr>
      <td>
      <form:label path="team" cssClass="label">Team:</form:label>
      <form:select path="team">
                <form:option selected="selected" value="0">Select</form:option>
                <form:option value="DEVELOPMENT">Development</form:option>
                <form:option value="MARKETING">Marketing</form:option>
                <form:option value="SUPPORT">Support</form:option>
      </form:select>
      <c:if test="${!empty employee.ename}">
				<form:hidden path="assignmentStatus" />
			</c:if>
      </td>
      </tr>
      
      <tr><td>
      <br> 
      </td></tr>
      <tr>
		<td colspan="1">
			<c:if test="${!empty employee.ename}">
				<form:button name="edit" class="addButton addButtonwidth">Edit</form:button>
			</c:if>
			<c:if test="${empty employee.ename}">
				<form:button name="add" class="addButton addButtonwidth" >Add</form:button>
			</c:if>
		</td>
	</tr>
      </table>
    </form:form>
     <!--popup's close button-->
     </div>
</div>

<c:if test="${!empty searchEmployee}">
<h2>Employees Details</h2>
	<table class="showdetails center"  cellspacing="0" border="0" cellpadding="0" style="font-size: 1.1rem !important">
	<tr>
		<th>Employee ID</th>
		<th>Name</th>
		<th>Email</th>
		<th>Address</th>
		<th>Role</th>
		<th>Phone</th>
		<th>Edit</th>
		<th>Delete</th>
		<th>Assign Manager</th>
	</tr>
	
		<tr>
			<td>${searchEmployee.eid}</td>
			<td>${searchEmployee.ename}</td>
			<td>${searchEmployee.email}</td>
			<td>${searchEmployee.address}</td>
			<td>${searchEmployee.role}</td>
			<td>${searchEmployee.phoneNumber}</td>
			<td><a href="<c:url value='/edit?eid=${searchEmployee.eid}' />" >Edit</a></td>
			<td><a href="<c:url value='/delete?eid=${searchEmployee.eid}' />" >Delete</a></td>
			<td><a href="<c:url value='/listManager?eid=${searchEmployee.eid}' />" >Assign Manager</a></td>
		</tr>
	
	</table>
</c:if>


<c:if test="${!empty employeesList}">
<h2>Employees Details</h2>
	<table class="showdetails center"  cellspacing="0" border="0" cellpadding="0" style="font-size: 1.1rem !important">
	
	<tr>
		<th>Employee ID</th>
		<th>Name</th>
		<th>Email</th>
		<th>Address</th>
		<th>Role</th>
		<th>Phone</th>
		<th>Edit</th>
		<th>Delete</th>
		<th>Assign Manager</th>
	</tr>
	<c:forEach var="employee" items="${employeesList}">
		<tr>
		   
			<td>${employee.eid}</td>
			<td>${employee.ename}</td>
			<td>${employee.email}</td>
			<td>${employee.address}</td>
			<td>${employee.role}</td>
			<td>${employee.phoneNumber}</td>
			<c:if test="${employee.role ne 'CLIENT'}">
			<td><a href="<c:url value='/edit?eid=${employee.eid}' />" >Edit</a></td>
			<td><a href="<c:url value='/delete?eid=${employee.eid}' />" >Delete</a></td>
			<td><a href="<c:url value='listManager?eid=${employee.eid}' />" >Assign Manager</a></td>
			</c:if>
		</tr>
	</c:forEach>
	</table>
</c:if>


<c:if test="${!empty clientsList}">
<h2>Clients</h2>
	<table class="showdetails center"  cellspacing="0" border="0" cellpadding="0" style="font-size: 1.1rem !important">
	
	<tr>
		<th>Employee ID</th>
		<th>Name</th>
		<th>Email</th>
		<th>Address</th>
		<th>Role</th>
		<th>Phone</th>
		
	</tr>
	<c:forEach var="employee" items="${clientsList}">
		<tr>
		   
			<td>${employee.eid}</td>
			<td>${employee.ename}</td>
			<td>${employee.email}</td>
			<td>${employee.address}</td>
			<td>${employee.role}</td>
			<td>${employee.phoneNumber}</td>
			<c:if test="${employee.role ne 'CLIENT'}">
			<td><a href="<c:url value='/edit?eid=${employee.eid}' />" >Edit</a></td>
			<td><a href="<c:url value='/delete?eid=${employee.eid}' />" >Delete</a></td>
			<td><a href="<c:url value='listManager?eid=${employee.eid}' />" >Assign Manager</a></td>
			</c:if>
		</tr>
	</c:forEach>
	</table>
</c:if>






<div id="assignManager">

<c:if test="${!empty managersList}">
<h2>Managers</h2>
	<table class="showdetails center"  cellspacing="0" border="0" cellpadding="0" style="font-size: 1.1rem !important">
	<tr>
		
		<th>Name</th>
		<th>Assign</th>
	</tr>
	<c:forEach var="manager" items="${managersList}">
		<tr>
			<td>${manager.ename}</td>
			<td><a href="<c:url value='/assignManager?eid=${emp.eid}&mid=${manager.eid}' />" >Assign Manager</a></td>
		</tr>
	</c:forEach>
	</table>
</c:if>



</div>

<div id="addClientDiv" style="display: none;">

      <form:form action="addClient" method="post" modelAttribute="employee">
       
       <div class="login100-form-title ">Client</div>
       
      <table class="center" width="50%" cellspacing="0" border="0" cellpadding="0" id="clientdetails"> 
     
	 <tr>
		<td>
			<form:input path="ename" id="clientName"  />
		</td> 
	 </tr>
     
      <tr>
      <td>
      <form:input path="email" id="clientEmail"/>
      <br/>
      </td>
      </tr>
      <tr>
      <td>
      <form:input path="address" id="clientAddress"/> 
       <br/>
      </td>
      </tr>
      <tr>
      <td>
      <form:input path="phoneNumber" id="clientPhone"/> 
       <br/>
      </td>
      </tr>
      <tr><td>
      <br> 
      </td></tr>
      <tr>
		<td colspan="1">
			
				<form:button name="add" class="addButton addButtonwidth" >Add Client</form:button>
			
		</td>
	</tr>
      </table>
    </form:form>
    
     <!--popup's close button-->
</div>


<div id="changePwdDiv" style="display: none;">

<span style="text-align: center; color: red;"><h3><c:if test="${!empty changePwdError }">
${changePwdError }
</c:if>

</h3></span>

      <form:form action="changePwdAction" method="post" modelAttribute="employee">
       
       
      <table class="center" width="50%" cellspacing="0" border="0" cellpadding="0" id="editprojectdetails"> 
     
	 <tr>
		<td>
			<form:password path="password"  />
		</td> 
	 </tr>
     
      <tr>
      <td>
      <form:password path="reEnterPwd"/>
      <br/>
      </td>
      </tr>
      <tr>
      
      <tr><td>
      <br> 
      </td></tr>
      <tr>
		<td colspan="1">
			
				<form:button name="add" class="addButton addButtonwidth" >Change</form:button>
			
		</td>
	</tr>
      </table>
    </form:form>
    
     <!--popup's close button-->
</div>

</div>

</div>

</body>
</html>