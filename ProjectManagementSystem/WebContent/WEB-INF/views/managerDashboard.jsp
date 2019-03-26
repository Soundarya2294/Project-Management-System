<%@ page language="java" contentType="text/html; 
charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Manager Dashboard</title>
<link rel="stylesheet" href="font-awesome/css/font-awesome.min.css" >

<link rel="stylesheet" href="css/flex.css" >
<!-- <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous"> -->
<style type="text/css">
.teamsDiv
{
float: left;
width: 27%;
margin: 3%;
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
width:27%;
border: 1px solid #E5E5E5;
background: #F5F5F5;
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

.fa-report:before
{
	content: "\f080";
}

.fa-report{
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
    min-height: 700px;
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
<script src="jquery-1.8.0/canvasjs.min.js"></script>
<script src="jquery-1.8.0/Chart.min.js"></script>

<script type="text/javascript">



$(window).on('load', function () {             
    
    var displayDiv='${display}';
     
    if(displayDiv=='projectDiv')
    	{
    	$('#main').css("display", "block");
    	
    	}
    else if(displayDiv=='taskDiv')
    	{
    	 $('#main1').css("display", "block");
    	}
    else
    	{
    	$('#main').css("display", "block");
    	}
    
    if('${editDiv}'!=null && '${editDiv}'!='')
    	{
    	$('#editProjectDiv').css("display", "block");
    	
    	}
    
    if('${editTaskDiv}'=='addTaskDiv')
    	{
    	$('#addTaskDiv').css("display", "block");
    	}
    if('${assignEmployee}'=='assignEmployee')
    	{
    	$('#assignEmployee').css("display", "block");
    	}
    if('${managerEmployeesDiv}' =='managerEmployees')
    	{
    	$('#managerEmployees').css("display", "block");
    	}
    if('${changePasswordDiv}'=='changePwdDiv')
	{
	
	$('#changePwdDiv').css("display", "block");
	}
    if('${displayClientDiv}'=='displayClientDiv')
	{
	
	$('#displayClientDiv').css("display", "block");
	}
    
    
    if('${displayClientDiv}'=='displayClientDiv')
	{
	
	$('#displayClientDiv').css("display", "block");
	}
    
    
    if('${chartContainer}'=='doughnut-chart')
	{
	
    displayChart();
	$('#doughnut-chart').css("display", "block");
	}
    
});


$(document).ready(function(){
	
	//alert($("#eid").val());
	
	//$("#eid").val("");
	$("#projectName").attr('placeholder', 'Project Name');
	$("#clientName").attr('placeholder', 'Organization');
	$("#startDate").attr('placeholder', 'Enter Start Date (dd-mm-yyyy)');
	$("#endDate").attr('placeholder', 'Enter End Date (dd-mm-yyyy)');
	
	$("#taskName").attr('placeholder', 'Task Name');
	$("#assignedToEmployee").attr('placeholder', 'Assigned EmployeeId');
	$("#password").attr('placeholder', 'Enter New Password');
	$("#reEnterPwd").attr('placeholder', 'Re-Enter Password');
	
	
	
	
	$('#openid').click(function(){
		  
		//alert("open");
		$('#addProjectDiv').css("display", "block");
		$('#searchProjectsDiv').css("display", "none");
		$('#listProjectsDiv').css("display", "none");
		
		
		});

	//removes the "active" class to .popup and .popup-content when the "Close" button is clicked 
	$('#close').click(function(){
		  $('#popupoverlay').removeClass("popup-overlay-active");
		  $('#popupcontent').removeClass("popup-content-active");
		});
	
	$("#search").css('border', '');
	
	$('#addTaskLink').click(function(){
		  
		//alert("open");
		$('#addTaskDiv').css("display", "block");
		$('#tasksdisplayDivTodo').css("display", "none");
		$('#tasksdisplayDivinProgress').css("display", "none");
		$('#tasksdisplayDivCompleted').css("display", "none");
		
		
		});
	
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


function displayChart()
{
	
	var chart = new CanvasJS.Chart("doughnut-chart", {
		animationEnabled: true,
		theme: "light2",
		title: {
			text: "Task Status"
		},
		subtitles: [{
			text: "in Percentage(%)"
		}],
		data: [{
			type: "doughnut",
			yValueFormatString: "#,##0",
			indexLabel: "{label}: {y}%",
			toolTipContent: "{y}%",
			dataPoints : [{ y: '${todoPercentage}', label: "ToDo" },{ y: '${inProgressPercentage}', label: "InProgress" },{ y: '${completedPercentage}', label: "Completed" }]
        
		}]
	});
	chart.render();	
	
	
	 /* var chart=new Chart(document.getElementById("doughnut-chart"), {
		    type: 'doughnut',
		    data: {
		      labels: ["ToDo", "InProgress", "Completed"],
		      datasets: [{
		        label: "Tasks (%)",
		        backgroundColor: ["#3e95cd", "#8e5ea2","#3cba9f"],
		        data: ['${todoPercentage}','${inProgressPercentage}','${completedPercentage}']
		        
		      }
		      ]
		    },
		    options: {
		      title: {
		        display: true,
		        text: 'Tasks Status in %'
		      }
		    scales: {
		        yAxes: [{
		            ticks: {
		                fontSize: 40
		            }
		        }]
		    }
		    
		    }
		});
	 
 */	 
}


</script>
</head>
<body>



<div class="center centerWidth clear" id="main" style="display: none;">
<div><%@include file="header_top.jsp" %></div>
<div id="sidebar">
  
 <table style="width: 90%;">
 <tr>
 <td>
	 <form action="searchProject">
	<div id="searchDiv" class="searchdiv">
	<input type="text" id="searchprojectId" class="search" placeholder="Enter Project Id" name="searchprojectId"></input>
	<button id='searchButton' class='searchClass'><span class="fa-search"></span></button> 
	</div>
	
	</form>
 </td>
 </tr>
<tr>
<td>
<button class="open addButton" id="openid" >Add Project</button>

</td>
</tr>
<tr>
<td>
<form action="projects" method="get">
<button class="addButton" id="list" >Projects</button>
</form>
</td>
</tr>


</table> 
</div>
<div id="page-wrap">

<div><h1>Project Management System</h1></div>

<div id="addProjectDiv" style="display: none;">
      <form:form action="addProject" method="post" modelAttribute="project">
       
       <div class="login100-form-title ">Project</div>
       
      <table class="center" width="50%" cellspacing="0" border="0" cellpadding="0" id="addprojectdetails"> 
     <c:if test="${!empty project.projectName}">
	 <tr>
		<td>
			<form:input path="projectId" readonly="true" size="10"  disabled="true" />
			<form:hidden path="projectId" />
		</td> 
	 </tr>
     </c:if>
      <tr>
      <td>
      <span class="fa-user"></span>
      <form:input path="projectName"/>
      <br/>
      </td>
      </tr>
      <tr>
      <td>
      <span class="fa-client"></span>
      <form:input path="clientName" /> 
       <br/>
      </td>
      </tr>
      <tr>
      <td>
      <span class="fa-date"></span>
      <form:input path="startDate" /> 
       <br/>
      </td>
      </tr>
      <tr>
      <td>
      <span class="fa-date"></span>
      <form:input path="endDate" /> 
       <br/>
      </td>
      </tr>
      <tr><td>
      <br> 
      </td></tr>
      <tr>
		<td colspan="1">
			<c:if test="${empty project.projectName}">
				<form:button name="add" class="addButton addButtonwidth" >Add</form:button>
			</c:if>
		</td>
	</tr>
      </table>
    </form:form>
     <!--popup's close button-->
</div>

<c:if test="${!empty searchProject}">
<div id="searchProjectsDiv" >
<h2>Project Details</h2>
	<table class="showdetails center"  cellspacing="0" border="0" cellpadding="0" style="font-size: 1.1rem !important">
	<tr>
		
		<th>Project</th>
		<th>Organisation</th>
		<th>Start Date</th>
		<th>End Date</th>
		<th>Status</th>
		
	</tr>
	
		<tr>
			<td><a href="<c:url value='/project?pid=${searchProject.projectId}' />" >${searchProject.projectName}</a></td>
			<td><a href="displayClient?cname=${searchProject.clientName}">${searchProject.clientName}</a></td>
			<td>${searchProject.startDate}</td>
			<td>${searchProject.endDate}</td>
			<td id="statusBar">
			<div id="myProgress">
                <div id="myBar" style="width:${searchProject.status}% !important;">${searchProject.status}%</div>
            </div>
			</td>
			<%-- <td><a href="<c:url value='/edit?eid=${searchEmployee.eid}' />" >Edit</a></td>
			<td><a href="<c:url value='/delete?eid=${searchEmployee.eid}' />" >Delete</a></td> --%>
		</tr>
	
	</table>
	</div>
</c:if>


<c:if test="${!empty projects}">
<div id="listProjectsDiv">
<h2>Projects</h2>
	<table class="showdetails center"  cellspacing="0" border="0" cellpadding="0" style="font-size: 1.1rem !important">
	<tr>
		
		<th>Project</th>
		<th>Organisation</th>
		<th>Start Date</th>
		<th>End Date</th>
		<th>Status</th>
		
	</tr>
	<c:forEach var="project" items="${projects}">
		<tr>
			<td><a href="<c:url value='/project?pid=${project.projectId}' />" >${project.projectName}</a></td>
			<td><a href="displayClient?cname=${project.clientName}">${project.clientName}</a></td>
			<td>${project.startDate}</td>
			<td>${project.endDate}</td>
			<td>
			<div id="myProgress">
                <div id="myBar" style="width:${project.status}% !important; " >${project.status}%</div>
            </div>
			</td>
			<%-- <td><a href="<c:url value='/edit?eid=${searchEmployee.eid}' />" >Edit</a></td>
			<td><a href="<c:url value='/delete?eid=${searchEmployee.eid}' />" >Delete</a></td> --%>
		</tr>
	</c:forEach>
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



</div>

</div>


<div class="center centerWidth clear" id="main1" style="display: none;">
<div><%@include file="header_top.jsp" %></div>

<div id="page-wrap1">

<span id="headerBar" class="headerBar" >
<h2 class="insideDiv" style="margin-right: 2% !important;">Project Management System</h2>
<span class="fa-edit"></span>&nbsp;&nbsp;<a href="editProject?pid=${project.projectId}" id="editprojectLink">Edit Project</a>&nbsp;&nbsp;&nbsp;&nbsp;
<span class="fa-project"></span>&nbsp;&nbsp;<a href="projects">Projects</a>&nbsp;&nbsp;&nbsp;&nbsp;
<span class="fa-todo"></span>&nbsp;&nbsp;<a href="#" id="addTaskLink">Add Task</a>&nbsp;&nbsp;&nbsp;&nbsp;
<span class="fa-people"></span>&nbsp;&nbsp;<a href="people?pid=${project.projectId }">People</a>&nbsp;&nbsp;&nbsp;&nbsp;
<span class="fa-report"></span>&nbsp;&nbsp;<a href="reports?pid=${project.projectId }">Reports</a>&nbsp;&nbsp;&nbsp;&nbsp;
<span class="fa-task"></span>&nbsp;&nbsp;<a href="tasks?pid=${project.projectId}">Tasks</a>&nbsp;&nbsp;&nbsp;&nbsp;
<input type="text" id="searchprojectId1" class="search1" placeholder="          Search..." name="search1" ></input>
<button id='searchButton1' class='searchClass1'><span class="fa-search"></span></button> 



</span>


<div id="addTaskDiv" style="display: none;">
      <form:form action="addTask?pid=${project.projectId}" method="post" modelAttribute="task">
       
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
      <form:input path="assignedToEmployee" /> 
       <br/>
      </td>
      </tr>
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
      <tr>
      <td>
      <form:select path="taskPriority"> 
      <form:option value="0" label="Select" />
      <form:option value="IMMEDIATE" label="Immediate" />
      <form:option value="URGENT" label="Urgent" />
      <form:option value="HIGH" label="High"/>
      <form:option value="NORMAL" label="Normal"/>
      <form:option value="LOW" label="Low"/>
      </form:select>
       <br/>
      </td>
      </tr>
      <tr><td>
      <br> 
      </td></tr>
      <tr>
		<td colspan="1">
			<c:if test="${empty task.taskName}">
				<form:button name="add" class="addButton addButtonwidth" >Add</form:button>
			</c:if>
			<c:if test="${!empty task.taskName}">
				<form:button name="add" class="addButton addButtonwidth" >Submit</form:button>
			</c:if>
		</td>
	</tr>
      </table>
    </form:form>
     <!--popup's close button-->
</div>



<div id="editProjectDiv" style="display: none;">

      <form:form action="addProject" method="post" modelAttribute="project">
       
       <div class="login100-form-title ">Project</div>
       
      <table class="center" width="50%" cellspacing="0" border="0" cellpadding="0" id="editprojectdetails"> 
     <c:if test="${!empty project.projectName}">
	 <tr>
		<td>
			<form:input path="projectId" readonly="true" size="10"  disabled="true" />
			<form:hidden path="projectId" />
		</td> 
	 </tr>
     </c:if>
      <tr>
      <td>
      <span class="fa-user"></span>
      <form:input path="projectName"/>
      <br/>
      </td>
      </tr>
      <tr>
      <td>
      <span class="fa-client"></span>
      <form:input path="clientName" /> 
       <br/>
      </td>
      </tr>
      <tr>
      <td>
      <span class="fa-date"></span>
      <form:input path="startDate" /> 
       <br/>
      </td>
      </tr>
      <tr>
      <td>
      <span class="fa-date"></span>
      <form:input path="endDate" /> 
       <br/>
      </td>
      </tr>
      <tr><td>
      <br> 
      </td></tr>
      <tr>
		<td colspan="1">
			
				<form:button name="add" class="addButton addButtonwidth" >Edit</form:button>
			
		</td>
	</tr>
      </table>
    </form:form>
    
     <!--popup's close button-->
</div>

<c:if test="${!empty tasks}">
<div id="tasksdisplayDivTodo" class="tasksdisplayDivTodo" >
     <h2>ToDo</h2>
	<c:forEach var="task" items="${tasks}">
	    <c:if test="${task.taskStatus=='TODO'}">
		<div class="displayTask">
		<c:if test="${task.taskPriority eq 'IMMEDIATE' or task.taskPriority eq 'HIGH' or task.taskPriority eq 'URGENT'}">
			<span style="color: red;">${task.taskName}</span><br/>
			</c:if>
			<c:if test="${task.taskPriority ne 'IMMEDIATE' and task.taskPriority ne 'HIGH' and task.taskPriority ne 'URGENT'}">
			<span>${task.taskName}</span><br/>
			</c:if>
			<c:if test="${task.assignedToEmployee ne 0}">
			Assigned Employee:${task.assignedToEmployee}
			</c:if>
			<c:if test="${task.assignedToEmployee eq 0}">
			<a href="listUnassignedEmployees?tid=${task.taskId}&pid=${project.projectId}" id="assignTaskLink">Assign</a>
			</c:if>
		</div>
		</c:if>
	</c:forEach>
	
	</div>
	
	<div id="tasksdisplayDivinProgress" class="tasksdisplayDivinProgress">
     <h2>In Progress</h2>
	<c:forEach var="task" items="${tasks}">
	 <c:if test="${task.taskStatus=='INPROGRESS'}">
		<div class="displayTask">
		<c:if test="${task.taskPriority eq 'IMMEDIATE' or task.taskPriority eq 'HIGH' or task.taskPriority eq 'URGENT'}">
			<a style="color: red;" href="inprogressTask?tid=${task.taskId}&pid=${project.projectId}"  id="inprogressLink">${task.taskName}</a><br/>
			</c:if>
			<c:if test="${task.taskPriority ne 'IMMEDIATE' or task.taskPriority ne 'HIGH' or task.taskPriority ne 'URGENT'}">
			<a href="inprogressTask?tid=${task.taskId}&pid=${project.projectId}"  id="inprogressLink">${task.taskName}</a><br/>
			</c:if>
			<c:if test="${task.assignedToEmployee ne 0}">
			Assigned Employee:${task.assignedToEmployee}
			</c:if>
		</div>
		</c:if>
	</c:forEach>
	
	</div>
	
	
	<div id="tasksdisplayDivCompleted" class="tasksdisplayDivCompleted">
     <h2>Completed</h2>
	<c:forEach var="task" items="${tasks}">
	 <c:if test="${task.taskStatus=='COMPLETED'}">
		<div class="displayTask" >
			<span style="text-decoration: line-through;">${task.taskName}</span>
			
		</div>
		</c:if>
	</c:forEach>
	
	</div>
	
</c:if>

<div id="assignEmployee" style="display: none;">

<c:if test="${!empty unassignedEmployeeList}">
<h2>Managers</h2>
	<table class="showdetails center"  cellspacing="0" border="0" cellpadding="0" style="font-size: 1.1rem !important">
	<tr>
		<th>Name</th>
		<th>Assign</th>
	</tr>
	<c:forEach var="employee" items="${unassignedEmployeeList}">
		<tr>
			<td>${employee.ename}</td>
			<td><a href="<c:url value='/assignEmployeetoTask?eid=${employee.eid}&tid=${task.taskId}' />" >Assign Task</a></td>
		</tr>
	</c:forEach>
	</table>
</c:if>

<c:if test="${empty unassignedEmployeeList}">

<h1> No Employees Available To Assign Task</h1>

</c:if>



</div>


<div id="managerEmployees" style="display: none;">

<c:if test="${!empty managerEmployees}">

<div id="DevTeam" class="teamsDiv">
<h2>Development Team </h2>
	<table class="showdetails center"  cellspacing="0" border="0" cellpadding="0" style="font-size: 1.1rem !important">
	<tr>
		<th>Name</th>
		<th>Assign Status</th>
		<th>Team</th>
	</tr>
	<c:forEach var="employee" items="${managerEmployees}">
	<c:if test="${employee.team=='DEVELOPMENT' }">
		<tr>
			<td>${employee.ename}</td>
			<td>${employee.assignmentStatus }</td>
			<td>${employee.team}</td>
		</tr>
		</c:if>
	</c:forEach> 
	</table>
</div>
<div id="MarTeam" class="teamsDiv">
<h2>Marketing Team </h2>
	<table class="showdetails center"  cellspacing="0" border="0" cellpadding="0" style="font-size: 1.1rem !important">
	<tr>
		<th>Name</th>
		<th>Assign Status</th>
		<th>Team</th>
	</tr>
	<c:forEach var="employee" items="${managerEmployees}">
		<c:if test="${employee.team=='MARKETING' }">
		<tr>
			<td>${employee.ename}</td>
			<td>${employee.assignmentStatus }</td>
			<td>${employee.team}</td>
		</tr>
		</c:if>
	</c:forEach> 
	</table>
</div>
<div id="SupTeam" class="teamsDiv">
<h2>Support Team </h2>
	<table class="showdetails center"  cellspacing="0" border="0" cellpadding="0" style="font-size: 1.1rem !important">
	<tr>
		<th>Name</th>
		<th>Assign Status</th>
		<th>Team</th>
	</tr>
	<c:forEach var="employee" items="${managerEmployees}">
		<c:if test="${employee.team=='SUPPORT' }">
		<tr>
			<td>${employee.ename}</td>
			<td>${employee.assignmentStatus }</td>
			<td>${employee.team}</td>
		</tr>
		</c:if>
	</c:forEach> 
	</table>
</div>
</c:if>

<c:if test="${empty managerEmployees}">

<h1> No Employees Available </h1>

</c:if>



</div>

<div id="doughnut-chart" style="display: none;text-align: center;margin-left: 30%;">

<%-- <canvas id="doughnut-chart"  width="320" height="320"></canvas> --%>
</div>


</div>

</div>


</body>
</html>