<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<style>
@import url('https://fonts.googleapis.com/css2?family=Bebas+Neue&family=Nosifer&display=swap')
*{
    padding: 0;
    margin: 0;
    box-sizing: border-box;
}
.navbar{
    background-color: #17263d;
    position: sticky;
    top: 0px;
}
.nav{
    display: flex;
    justify-content: space-evenly;
    align-items: center;
    height: 50px;
}
.nav_link{
    display: flex;
    list-style: none;
    gap: 50px;
}
a{
    text-decoration: none;
    color: white;
    padding: 10px 20px;
}
a:hover{
    background-color: yellow;
    color: black;
    border-radius: 5px;
}
.logo{
    color: white;
}
.page1{
    display: flex;
    justify-content: space-around;
    align-items: center;
    height: 320vh;
}
table{
    background-color: #17263d;
    border-radius: 20px;
    color: white;
}
table,tr,td,th{
    padding: 20px 100px;
    border-collapse: collapse;
    text-align: center;
}
th{
    border-bottom: 1px solid black;
    color: yellow;

}
span{
    margin-left: 20px;
}
.btn{
    background-color: yellow;
    border-radius: 50%;
    font-size: 20px;
    padding: 10px 20px;
    border: none;
    margin-left: 30px;
}

/* about */

.about{
    background-color: #17263d;
    color: white;
    height: 70vh;
    width: 80vw;
    display: none;
    position: absolute;
    right: 100px;
    top: 100px;
    display: flex;
    justify-content: space-around;
    align-items: center;
    border-radius: 20px;
}
.content{
    display: grid;
    grid-template-columns: 450px 450px;
    justify-content: space-around;
    align-items: center;
    height: 70vh;
}
.image{
    border-radius: 50%;
    margin-left: 80px;
    height: 300px;
    width: 300px;
}
.details{
    list-style: none;
    line-height: 35px;
}
.result{
    height: 50vh;
    width: 80%;
    display: flex;
    justify-content: space-around;
    align-items: center;
    background-color: #17263d;
    border-radius: 20px;
    position: absolute;
    right: 120px;
    top: 120px;
    display: none;
}
#res{
    color: white;
}
.con{
    display: grid;
    grid-template-columns: 450px 300px;
    justify-content: space-around;
    align-items: center;
    height: 50vh;
    text-align: center;
    line-height: 50px;
}
#amt{
    color: white;
}
.border{
    border-right: 2px solid yellow;
}
h1{
	font-family: Nosifer;
	color: yellow;
	margin-bottom: 30px;
}
</style>

</head>
<body>
	
	<header class="navbar">
        <div class="nav">
            <div class="logo">
                <h2>Funtown</h2>
            </div>
            <div class="nav_link">
                <li><a href="#HOME" onclick="home()">HOME</a></li>
                <li><a href="#" onclick="result()">RESULT</a></li>
                <li><a href="#" onclick="about()">ABOUT</a></li>
            </div>
        </div>
    </header>

    <div class="Home" id="HOME">
        <div class="page1">
            <table>
                <tr>
                    <th>Games (Tokens)</th>
                    <th></th>
                    <th>Total</th>
                    <th>Amount</th>
                </tr>
                <tr>
                    <td>VR Cricket (5)</td>
                    <td><button class="btn" value="5" onclick="increaseValue(this)"><b>+</b></button>  <span>0</span> <button class="btn" value="5" onclick="down(this)"><b>-</b></button></td>
                    <td class="total">0</td>
                    <td class="amount">0</td>
                </tr>
                <tr>
                    <td>Virtual Reality (4)</td>
                    <td>   <button class="btn" value="4" onclick="increaseValue(this)"><b>+</b></button>  <span>0</span> <button class="btn" value="4" onclick="down(this)"><b>-</b></button></td>
                    <td class="total">0</td>
                    <td class="amount">0</td>
                </tr>
                <tr>
                    <td>FlyHigh (3)</td>
                    <td>   <button class="btn" value="3" onclick="increaseValue(this)"><b>+</b></button>  
                        <span>0</span> 
                        <button class="btn" value="3" onclick="down(this)"><b>-</b></button></td>
                    <td class="total">0</td>
                    <td class="amount">0</td>
                </tr>
                <tr>
                    <td>Mud Bike (3)</td>
                    <td>  <button class="btn" value="3" onclick="increaseValue(this)"><b>+</b></button> 
                        <span>0</span> 
                        <button class="btn" value="3" onclick="down(this)"><b>-</b></button></td>
                    <td class="total">0</td>
                    <td class="amount">0</td>
                </tr>
                <tr>
                    <td>BasketBall (2)</td>
                    <td>  <button class="btn" value="2" onclick="increaseValue(this)"><b>+</b></button>  
                        <span>0</span> 
                        <button class="btn" value="2" onclick="down(this)"><b>-</b></button></td>
                    <td class="total">0</td>
                    <td class="amount">0</td>
                </tr>
                <tr>
                    <td>Doll Catcher (2) big</td>
                    <td>   <button class="btn" value="2" onclick="increaseValue(this)"><b>+</b></button> 
                        <span>0</span> 
                        <button class="btn" value="2" onclick="down(this)"><b>-</b></button></td>
                    <td class="total">0</td>
                    <td class="amount">0</td>
                </tr>
                <tr>
                    <td>Doll Catcher (2) small</td>
                    <td>   <button class="btn" value="2" onclick="increaseValue(this)"><b>+</b></button> 
                        <span>0</span> 
                        <button class="btn" value="2" onclick="down(this)"><b>-</b></button></td>
                    <td class="total">0</td>
                    <td class="amount">0</td>
                </tr>
                <tr>
                    <td>Air Hockey (2)</td>
                    <td>   <button class="btn" value="2" onclick="increaseValue(this)"><b>+</b></button> 
                        <span>0</span> 
                        <button class="btn" value="2" onclick="down(this)"><b>-</b></button></td>
                    <td class="total">0</td>
                    <td class="amount">0</td>
                </tr>
                <tr>
                    <td>Dukoos (2)</td>
                    <td>   <button class="btn" value="2" onclick="increaseValue(this)"><b>+</b></button> 
                        <span>0</span> 
                        <button class="btn" value="2" onclick="down(this)"><b>-</b></button></td>
                    <td class="total">0</td>
                    <td class="amount">0</td>
                </tr>
                <tr>
                    <td>Funtown Exp (2)</td>
                    <td>   <button class="btn" value="2" onclick="increaseValue(this)"><b>+</b></button> 
                        <span>0</span> 
                        <button class="btn" value="2" onclick="down(this)"><b>-</b></button></td>
                    <td class="total">0</td>
                    <td class="amount">0</td>
                </tr>
                <tr>
                    <td>Pendulam (2)</td>
                    <td>   <button class="btn" value="2" onclick="increaseValue(this)"><b>+</b></button>
                         <span>0</span> 
                         <button class="btn" value="2" onclick="down(this)"><b>-</b></button></td>
                    <td class="total">0</td>
                    <td class="amount">0</td>
                </tr>
                <tr>
                    <td>Boating (2)</td>
                    <td>   <button class="btn" value="2" onclick="increaseValue(this)"><b>+</b></button> 
                        <span>0</span>
                         <button class="btn" value="2" onclick="down(this)"><b>-</b></button></td>
                    <td class="total">0</td>
                    <td class="amount">0</td>
                </tr>
                <tr>
                    <td>Dazz Cars (2)</td>
                    <td>   <button class="btn" value="2" onclick="increaseValue(this)"><b>+</b></button> 
                        <span>0</span> 
                        <button class="btn" value="2" onclick="down(this)"><b>-</b></button></td>
                    <td class="total">0</td>
                    <td class="amount">0</td>
                </tr>
                <tr>
                    <td>Bug Bash (2)</td>
                    <td>  <button class="btn" value="2" onclick="increaseValue(this)"><b>+</b></button> 
                        <span>0</span> 
                        <button class="btn" value="2" onclick="down(this)"><b>-</b></button> </td>
                    <td class="total">0</td>
                    <td class="amount">0</td>
                </tr>
                <tr>
                    <td>Sweet Honey (2)</td>
                    <td>   <button class="btn" value="2" onclick="increaseValue(this)"><b>+</b></button> 
                        <span>0</span> 
                        <button class="btn" value="2" onclick="down(this)"><b>-</b></button></td>
                    <td class="total">0</td>
                    <td class="amount">0</td>
                </tr>
                <tr>
                    <td>Horse (1)</td>
                    <td>  <button class="btn" value="1" onclick="increaseValue(this)"><b>+</b></button> 
                        <span>0</span> 
                        <button class="btn" value="1" onclick="down(this)"><b>-</b></button></td>
                    <td class="total">0</td>
                    <td class="amount">0</td>
                </tr>
                <tr>
                    <td>Kids Gun (1)</td>
                    <td>   <button class="btn" value="1" onclick="increaseValue(this)"><b>+</b></button> 
                        <span>0</span> 
                        <button class="btn" value="1" onclick="down(this)"><b>-</b></button></td>
                    <td class="total">0</td>
                    <td class="amount">0</td>
                </tr>
                <tr>
                    <td>Cup & Saucer (1)</td>
                    <td>  <button class="btn" value="1" onclick="increaseValue(this)"><b>+</b></button> 
                        <span>0</span> 
                        <button class="btn" value="1" onclick="down(this)"><b>-</b></button> </td>
                    <td class="total">0</td>
                    <td class="amount">0</td>
                </tr>
                <tr>
                    <td>Musical Train (1)</td>
                    <td>   <button class="btn" value="1" onclick="increaseValue(this)"><b>+</b></button> 
                        <span>0</span> 
                        <button class="btn" value="1" onclick="down(this)"><b>-</b></button></td>
                    <td class="total">0</td>
                    <td class="amount">0</td>
                </tr>
                <tr>
                    <td>Kid Racecar (1)</td>
                    <td> <button class="btn" value="1" onclick="increaseValue(this)"><b>+</b></button> 
                        <span>0</span> 
                        <button class="btn" value="1" onclick="down(this)"><b>-</b></button></td>
                    <td class="total">0</td>
                    <td class="amount">0</td>
                </tr>
            </table>
        </div>
    </div>

    <div class="about" id="about">
        <div class="content">
            <div>
                <img class="image" src="https://lawschoolpolicyreview.files.wordpress.com/2018/06/passport-size-photo-2-e1558013566564.jpg" alt="">
            </div>
            <div class="details">
            	<li><h1>FUNTOWN </h1></li>
                <li><h2>HARIHARAN S</h2></li>
                <li><h3>Token Collector</h3></li>
                <li><h3>Tirupur</h3></li>
                <li><h3>+91 6385364041</h3></li>
                <li><h3>Time : 11 AM - 9 PM</h3></li>
            </div>
        </div>
    </div>

    <div class="result" id="Result">
        <div class="con">
            <div class="border">
                <h4 id="res"> Totally You Earned Tokens Today....</h4>
                <h1 id="view"></h1>
            </div>
            <div>
                <h4 id="amt"> Totally You Earned Amount Today....</h4>
                <h1 id="amv"></h1>
            </div>
        </div>
    </div>
    
    
<script>      
    // about
    var ab = document.getElementById("about")
    ab.style.display="none"
    var ho = document.getElementById("HOME")
    var re = document.getElementById("Result")
    function about() {
        if(ab.style.display=="none"){
            ab.style.display="block"
            ho.style.display="none"
            re.style.display="none"
        }
    }

    function home() {
        ho.style.display="block"
        re.style.display="none"
        ab.style.display="none"
    }

    function result(){
        re.style.display="block"
        ho.style.display="none"
        ab.style.display="none"
    }

    // Add function
   var res = 0;
    var amt = 0;
    function increaseValue(button) {
        var row = button.parentNode.parentNode;
                var span = row.querySelector('span');
                var totalCell = row.querySelector('.total');
                var amount = row.querySelector(".amount");

                var currentValue = parseInt(span.textContent);
            
                span.textContent = currentValue + 1;
                totalCell.textContent = button.value * parseInt(span.textContent);
                amount.textContent = button.value * parseInt(span.textContent) * 40

                res = res + Number(button.value)
                
                let view=document.getElementById("view")
                view.textContent=`${res}`
                view.style.color="yellow"

                amt = amt + Number(button.value * 40)

                let amv=document.getElementById("amv")
                amv.textContent=`${amt}`
                amv.style.color="yellow"
    }

    function down(button) {
        var row = button.parentNode.parentNode;
                var span = row.querySelector('span');
                var totalCell = row.querySelector('.total');
                var amount = row.querySelector(".amount");

                var currentValue = parseInt(span.textContent)

                if(currentValue > 0){
                span.textContent = currentValue - 1;
                totalCell.textContent = button.value * parseInt(span.textContent);
                amount.textContent = button.value * parseInt(span.textContent) * 40 

                res = res - Number(button.value)

                let view=document.getElementById("view")
                view.textContent=`${res}`
                view.style.color="yellow"

                amt = amt - Number(button.value * 40)

                let amv=document.getElementById("amv")
                amv.textContent=`${amt}`
                amv.style.color="yellow"

                }
    }
    
</script>
	
</body>
</html>