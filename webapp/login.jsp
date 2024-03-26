<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>login</title>
</head>
<style>
*{
	padding: 0;
	margin: 0;
}
.bg{
    background-color: #17263d;
    height: 100vh;
    display: flex;
    justify-content: space-around;
    align-items: center;
}
#form{
    border-radius: 20px;
    height: 50vh;
    width: 80vh;
    text-align: center;
    background-color: yellow;
    color: #17263d;
    margin-top: 50px;
    display: flex;
    justify-content: center;
    align-items: center;
    line-height: 30px;
}
input{
    border: none;
    outline-style: none;
    background-color: yellow;
    border-bottom: 1px solid black;
}
button{
    height: 30px;
    width: 120px;
    display: flex;
    justify-content: center;
    align-items: center;
    border-radius: 10px;
}
td{
	padding: 5px 20px;
}
#sub{
	border: none;
	position: relative;
	left : 250px;
	background-color: #17263d;
	color: yellow;
	padding: 10px 30px;
}
h4{
	color: red;
}
</style>
<body>
	<div class="bg">
        <div id="form">
       	 	<div>
	            <section id="head"><h1>	Login</h1></section>
	            <section id="content">
		            <form action="login" >
		                <table>
		                    <tr>
		                        <td>E-mail</td>
		                        <td><input type="text" name="email" placeholder="email"></td>
		                    </tr>
		                    <tr>
		                        <td>Password</td>
		                        <td><input type="password" name="pass" placeholder="password"></td>
		                    </tr>
		                	<tr>
		                    	<td>
		                    		<input type="submit" id="sub">
		                    	</td>
		                    </tr>
		                 </table>
		            </form>
	        	</section>
	        </div>
        </div>
    </div>
</body>
</html>