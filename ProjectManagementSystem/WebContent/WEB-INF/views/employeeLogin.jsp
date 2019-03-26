<%@ page language="java" contentType="text/html; 
charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Employee Login</title>
<link rel="stylesheet" href="font-awesome/css/font-awesome.min.css" >
<style type="text/css">

.RUIFW-container-well {
    background: #F5F5F5;
    border: 1px solid #E5E5E5;
    padding: 20px; 
   
}



.error {
	color: red;
	
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

table tr td{

width: 10%;
text-align: center ;
padding: 3%;
}

input{
border-radius: 3px;
width: 54%;
border: 0px solid #E5E5E5;
padding: 30px;
margin: 3%;
}


input:focus, textarea:focus, select:focus{
        outline: none;
    }

button {
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
    width:35%;
    user-select: none;
    background-image: none;
    border: 1px solid transparent;
    border-radius: 21px;
    border-color: #7A1000;
	background: -webkit-linear-gradient(left, #a445b2, #d41872, #fa4299);
	color: #FFF;
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
   	margin-top: 12%;
    margin-bottom: 2%;
}

.button1 {
    font-family:Helvetica Neue, Helvetica, Arial, sans-serif;
    font-size: 18px;
    color: #fff;
    line-height: 1.2;
    text-transform: uppercase;
    display: -webkit-box;
    display: -webkit-flex;
    display: -moz-box;
    display: -ms-flexbox;
    display: flex;
    justify-content: center;
    align-items: center;
    padding: 0 20px;
    min-width: 160px;
    height: 42px;
    border-radius: 21px;
    background: #d41872;
    background: -webkit-linear-gradient(left, #a445b2, #d41872, #fa4299);
    background: -o-linear-gradient(left, #a445b2, #d41872, #fa4299);
    background: -moz-linear-gradient(left, #a445b2, #d41872, #fa4299);
    background: linear-gradient(left, #a445b2, #d41872, #fa4299);
    position: relative;
    z-index: 1;
    -webkit-transition: all 0.4s;
    -o-transition: all 0.4s;
    -moz-transition: all 0.4s;
    transition: all 0.4s;
    }
    
.fa-user:before
{
	content: "\f007";
}

.fa-pwd{
font: normal normal normal 23px/1 FontAwesome;
-webkit-font-smoothing: antialiased;
display: inline-block;
}  
  
.fa-pwd:before
{
	content: "\f023";
}

.fa-user{
font: normal normal normal 23px/1 FontAwesome;
-webkit-font-smoothing: antialiased;
display: inline-block;
}     
   
::-webkit-input-placeholder {
font-size: 20px !important;
}

:-moz-placeholder {  
font-size: 20px !important;
}
</style>


<!-- <script src="jquery-1.8.0/jquery.js" language="javascript" type="text/javascript"></script> -->
<script src="http://code.jquery.com/jquery-2.1.0.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.10.4/jquery-ui.min.js"></script>
<script src="jquery-1.8.0/jquery.js"></script>
<script type="text/javascript">

$(document).ready(function(){
	
	//alert($("#eid").val());
	
	<% session.invalidate(); %>
	
	$("#eid").val("");
	$("#eid").attr('placeholder', 'EmployeeID');
	$("#password").attr('placeholder', 'Password');
	
});

$(document).ready(function() {
    window.history.pushState(null, "", window.location.href);        
    window.onpopstate = function() {
        window.history.pushState(null, "", window.location.href);
    };
});

</script>
</head>
<body style="background-image: url('images/bg-dark-01.jpg');">
  
  
    <form:form action="login" method="post" modelAttribute="employee">
       
       <div class="login100-form-title ">Employee Login</div>
       
      
      <table class="center" width="25%" cellspacing="0" border="0" cellpadding="0"> 
     
      <tr>
      <td>
      <span class="fa-user"></span>
      <form:input path="eid"></form:input> 
      <form:errors path="eid" cssClass="error" />
      <br/>
      </td>
      </tr>
      <tr>
      <td>
      <span class="fa-pwd"></span>
      <form:password path="password" /> 
      <form:errors path="password" cssClass="error" />
       <br/>
      </td>
      </tr>
      <tr>
      <td style="text-align: center;" colspan="1">
      <form:button id="login" >Login</form:button>
       <br/>
      </td>
      </tr>
      
      </table>
      
            
    </form:form>
</body>
</html>