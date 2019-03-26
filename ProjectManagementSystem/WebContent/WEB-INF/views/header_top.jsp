
<html>
<head>
<style type="text/css">

a {
 position: relative;
 display: inline-block;
 transition: .3s;
 text-decoration: none;
 font-family:Helvetica Neue, Helvetica, Arial, sans-serif;
 font-size: 15px;
 
 line-height: 1.2;
 text-align: center;
 text-transform: uppercase;
 font-weight: bold;
 }
 a::after {
 position: absolute;
 bottom: .3em;
 left: 0;
 content: '';
 width: 100%;
 height: 1px;
 background-color: green;
 opacity: 0;
 transition: .3s;
 }
 a:hover::after {
 bottom: 0;
 opacity: 1;
 }
 a:hover {
 color: green;
 }
h1{

font-size: 2rem;
color: #d41872;
}
h2{

font-size: 1.5rem;
color: #0593f5;

}

</style>

</head>

<body>
<div style="display: inline-block;margin-left: 82%;">
    <a href="changePassword" id="changePwd" style="color: #d41872;">Change Password</a>&nbsp;&nbsp;&nbsp;
	<a href="signout" id="signoutId" style="color: #d41872;">Sign Out</a>
</div>
	
	


</body>
</html>