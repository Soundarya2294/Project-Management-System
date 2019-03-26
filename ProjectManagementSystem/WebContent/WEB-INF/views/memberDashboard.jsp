<%@ page language="java" contentType="text/html; 
charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Member Dashboard</title>
<link rel="stylesheet" href="font-awesome/css/font-awesome.min.css" >

<link rel="stylesheet" href="css/flex.css" >
<!-- <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous"> -->
<style type="text/css">
.projEmpDiv
{

float: left;
width: 29%;
border: 1px solid #E5E5E5;
margin: 2%;
border-radius: 10px;
}
.tasksDivInside{
float: left;
width: 45%;
border: 1px solid #E5E5E5;
margin: 2%;
border-radius: 10px;
background: tomato;
background: #F5F5F5;
}

#myProgress {
  width: 100%;
  background-color: #ddd;
}

#myBar {
  width: 0%;
  height: 30px;
  background-color: #4CAF50;
  
  text-align: center; /* To center it horizontally (if you want) */
  line-height: 30px; /* To center it vertically */
  color: white; 
}
.displayTask{

border: 1px solid #E5E5E5;
background: #FFF;
border-radius: 5px;
margin: 3%;
padding: 10%

}
.tasksdisplayDivTodo
{
float: left;
width:94%;
border: 1px solid #E5E5E5;

border-radius: 5px;
margin: 3%;
}
.tasksdisplayDivinProgress
{
float: left;
width:27%;
border: 1px solid #E5E5E5;
background: #F5F5F5;
border-radius: 5px;
margin: 3%;
}
.tasksdisplayDivCompleted
{
float: left;
width:27%;
border: 1px solid #E5E5E5;
background: #F5F5F5;
border-radius: 5px;
margin: 3%;
}
.headerBar
{
    margin-top: 1%;
    border: 1px solid #E5E5E5;
    background: #F5F5F5;
    padding: 1%;
    border-radius: 20px;
    text-align: left !important;
    
}
.search1
{

border-radius:25px;
padding: 1% !important;
border-color: #d41872;
width: 15% !important;
margin-left: 2%;
border: 2px #a445b2 solid;
}

.searchClass1{

border: 0px;
background: white;
margin-left: -7%;

}
.insideDiv
{
color:#d41872 !important;
margin-right:10%;
display: inline-block; 
}

#addtaskdetails tr td
{
border-bottom: 0px solid #ddd;
 padding: 0px;

}

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

.fa-edit:before
{
	content: "\f044";
}

.fa-edit{
font: normal normal normal 23px/1 FontAwesome;
-webkit-font-smoothing: antialiased;
display: inline-block;
} 

.fa-project:before
{
	content: "\f0cb";
}

.fa-project{
font: normal normal normal 23px/1 FontAwesome;
-webkit-font-smoothing: antialiased;
display: inline-block;
}

.fa-todo:before
{
	content: "\f022";
}

.fa-todo{
font: normal normal normal 23px/1 FontAwesome;
-webkit-font-smoothing: antialiased;
display: inline-block;
}
.fa-people:before
{
	content: "\f0c0";
}

.fa-people{
font: normal normal normal 23px/1 FontAwesome;
-webkit-font-smoothing: antialiased;
display: inline-block;
}

.fa-task:before
{
	content: "\f0ae";
}

.fa-task{
font: normal normal normal 23px/1 FontAwesome;
-webkit-font-smoothing: antialiased;
display: inline-block;
}
.fa-client:before
{
	content: "\f1ad";
}

.fa-client{
font: normal normal normal 23px/1 FontAwesome;
-webkit-font-smoothing: antialiased;
display: inline-block;
}
 
.fa-date:before
{
	content: "\f073";
}

.fa-date{
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
width: 95%;
}
.showdetailsproject
{

width: 95%;
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

#main,#main1 {
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
    width: 100%;
    background: #FFF;
    min-height: 700px;
    float: left;
}

.clear:after {
    clear: both;
    display: table;
    content: "";
}

#addprojectdetails  tr td
{
 border-bottom: 0px solid #ddd;
 padding: 0px;
}

#editprojectdetails tr td
{
border-bottom: 0px solid #ddd;
 padding: 0px;

}
#page-wrap1  {
    width: 100%;
    background: #FFF;
    min-height: 700px;
    float: left;
}
</style>


<!-- <script src="jquery-1.8.0/jquery.js" language="javascript" type="text/javascript"></script> -->
<script src="http://code.jquery.com/jquery-2.1.0.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.10.4/jquery-ui.min.js"></script>
<script src="jquery-1.8.0/jquery.js"></script>
<script type="text/javascript">



$(window).on('load', function () {             

	 if('${changePasswordDiv}'=='changePwdDiv')
		{
		
		$('#changePwdDiv').css("display", "block");
		}
	
	 if('${displayClientDiv}'=='displayClientDiv')
		{
		
		$('#displayClientDiv').css("display", "block");
		}
	 if('${changeTaskStatusDiv}'=='changeTaskStatusDiv')
		{
		
		$('#changeTaskStatusDiv').css("display", "block");
		}
	 
	 
});


$(document).ready(function(){
	
	$("#projectName").attr('placeholder', 'Project Name');
	$("#clientName").attr('placeholder', 'Organization');
	$("#startDate").attr('placeholder', 'Enter Start Date');
	$("#endDate").attr('placeholder', 'Enter End Date');
	
	$("#taskName").attr('placeholder', 'Task Name');
	$("#assignedToEmployee").attr('placeholder', 'Assigned EmployeeId');
	$("#password").attr('placeholder', 'Enter New Password');
	$("#reEnterPwd").attr('placeholder', 'Re-Enter Password');
	
	
	$("#password").attr('placeholder', 'Enter New Password');
	$("#reEnterPwd").attr('placeholder', 'Re-Enter Password');
	
	
	
	$('#searchButton1').click(function(){
		 // alert("value:"+$('#searchprojectId1').val());
		  var text=$('#searchprojectId1').val();
		  
		 // alert("findd"+text+"found:"+window.find(text));
		if (window.find(text)) { 
			//alert("true");
			   //document.execCommand("backcolor", false, "red");
			   /* while (window.find(text)) {
				   alert("true1");
			      document.execCommand("backcolor", false, "lightgrey");
			   } */
			}
		
		
		});
});

</script>
</head>
<body>



<div class="center centerWidth clear" id="main">
<div><%@include file="header_top.jsp" %></div>

<div id="page-wrap">

<span id="headerBar" class="headerBar" >
<h2 class="insideDiv" style="margin-right: 40% !important;">Project Management System</h2>
<span class="fa-people"></span>&nbsp;&nbsp;<a href="peopleInProject">People</a>&nbsp;&nbsp;&nbsp;&nbsp;
<span class="fa-task"></span>&nbsp;&nbsp;<a href="taskforEmployee">Tasks</a>&nbsp;&nbsp;&nbsp;&nbsp;
<input type="text" id="searchprojectId1" class="search1" placeholder="          Search..." name="search1" ></input>
<button id='searchButton1' class='searchClass1'><span class="fa-search"></span></button> 

</span>

<c:if test="${!empty searchProject}">
<div id="searchProjectsDiv" >
<h2>Project Details</h2>
	<table class="showdetailsproject center"  cellspacing="0" border="0" cellpadding="0" style="font-size: 1.1rem !important">
	<tr>
		
		<th>Project</th>
		<th>Organisation</th>
		<th>Start Date</th>
		<th>End Date</th>
		<th>Status</th>
		
	</tr>
	
		<tr>
			<td>${searchProject.projectName}</td>
			<td><a href="displayClient?cname=${searchProject.clientName}">${searchProject.clientName}</a></td>
			<td>${searchProject.startDate}</td>
			<td>${searchProject.endDate}</td>
			<td id="statusBar">
			<div id="myProgress">
                <div id="myBar" style="width:${searchProject.status}% !important;">${searchProject.status}%</div>
            </div>
			</td>
		</tr>
	
	</table>
	</div>
</c:if>


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

<div id="displayClientDiv" style="display: none;">
<c:if test="${!empty client}">

<h2>Client Information</h2>
	<table class="showdetails center"  cellspacing="0" border="0" cellpadding="0" style="font-size: 1.1rem !important">
	<tr>
		
		<th>Name</th>
		<th>Email</th>
		<th>Address</th>
		<th>Phone</th>
		
	</tr>
	
		<tr>
			<td>${client.ename}</a></td>
			<td>${client.email}</a></td>
			<td>${client.address}</td>
			<td>${client.phoneNumber}</td>
			
		</tr>
	
	</table>

</c:if>
<c:if test="${empty client}">
<h2>Client Data Not Available</h2>
</c:if>
</div>

<c:if test="${!empty projectEmployees }">
<div id="projectEmployeeDivDev" class="projEmpDiv">
<h2>Development</h2>

<c:forEach var="employee" items="${projectEmployees}">
		<c:if test="${employee.team eq 'DEVELOPMENT' }">
		<div style="margin: 5%;">
			<b>${employee.ename}</b><br/>
			</div>
		</c:if>
			
</c:forEach> 

</div>

<div id="projectEmployeeDivMark" class="projEmpDiv">
<h2>Marketing</h2>

<c:forEach var="employee" items="${projectEmployees}">
		<c:if test="${employee.team eq 'MARKETING' }">
		<div style="margin: 5%;">
			<b>${employee.ename}</b><br/>
			</div>
			</c:if>
</c:forEach> 

</div>


<div id="projectEmployeeDivSup" class="projEmpDiv">
<h2>Support</h2>

<c:forEach var="employee" items="${projectEmployees}">
		<c:if test="${employee.team eq 'SUPPORT' }">
		<div style="margin: 5%;">
			<b>${employee.ename}</b><br/>
			</div>
			</c:if>
			
</c:forEach> 

</div>


</c:if>



<div id="changeTaskStatusDiv" style="display: none;">
      <form:form action="changeTaskStatus" method="post" modelAttribute="task">
       
       <div class="login100-form-title ">Task Details</div>
       
      <table class="center" width="50%" cellspacing="0" border="0" cellpadding="0" id="addtaskdetails"> 
      <tr>
      <td>
      <form:input path="taskName"/>
      <form:hidden path="taskId"/>
      <br/>
      </td>
      </tr>
      <c:if test="${!empty task.taskName}">
      <tr>
      <td>
      <form:select path="taskStatus"> 
      <form:option value="0" label="Select" />
      <form:option value="TODO" label="ToDo" />
      <form:option value="INPROGRESSS" label="InProgress" />
      <form:option value="COMPLETED" label="Completed"/>
      </form:select>
       <br/>
      </td>
      </tr>
      </c:if>
      <tr><td>
      <br> 
      </td></tr>
      <tr>
			<c:if test="${!empty task.taskName}">
				<form:button name="add" class="addButton addButtonwidth" >Submit</form:button>
			</c:if>
		</td>
	</tr>
      </table>
    </form:form>
     <!--popup's close button-->
</div>

<c:if test="${!empty tasks}">
<div id="tasksdisplayDivTodo" class="tasksdisplayDivTodo" >
<h2>Tasks Assigned to Me</h2>
<div class="tasksDivInside">
<h3>In Progress</h3>
	<c:forEach var="task" items="${tasks}">
	<c:if test="${task.taskStatus ne 'COMPLETED' }">
		<div class="displayTask">
			<a href="employeeTaskedit?tid=${task.taskId}&pid=${searchProject.projectId}"  id="inprogressLink">${task.taskName}</a><br/>
		</div>
		</c:if>
		
		
	</c:forEach>
	</div>
	<div class="tasksDivInside">
<h3>Completed</h3>
	<c:forEach var="task" items="${tasks}">
		<c:if test="${task.taskStatus eq 'COMPLETED' }">
		<div class="displayTask">
			<span style="text-decoration: line-through;">${task.taskName}</span><br/>
		</div>
		</c:if>
		
	</c:forEach>
	</div>
	
	</div>
	</c:if>
</div>

</div>
</body>

</html>
