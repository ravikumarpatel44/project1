<%-- 
    Document   : success
    Created on : Jul 30, 2016, 11:16:20 AM
    Author     : Ravi kumar patel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link src="bootstrap/bootstrap.min.css" >
        
        <style>
            body{
                //background-color: gainsboro;
                
            }
      
            #hed{
               
                width: auto;
                height: 180px;
                //position: fixed;
                //text-align: center;
                border: 3px solid #000;
                background-color: rgb(51, 153, 51);
                
              
               
            }
            #logo-store{
                float: left;
                
                
            }
            
             
            
   ul{
        padding: 0px;
        margin-top: 4px;
        
        list-style: none;
        border: 3px solid #000;
        
        background: rgb(102, 0, 102);
    }
    ul li{
        display: inline-block;
        position: relative;
        line-height: 20px;
        text-align: left;
    }
    ul li a{
        display: block;
        padding: 10px 50px;
        margin-left: 0px;
        color: white;
        text-decoration: none;
    }
    ul li a:hover{
        color: #fff;
        background: rgb(128, 0, 0);
    }
    ul li ul.dropdown{
        min-width: 100%; /* Set width of the dropdown */
        background: #9966FF;
        display: none;
        position: absolute;
        z-index: 999;
        left: 0;
    }
    ul li:hover ul.dropdown{
        display: block; /* Display the dropdown */
    }
    ul li ul.dropdown li{
        display: block;
    }  
    
     ul li ul.men{
        min-width: 100%; /* Set width of the dropdown */
        background: #9966FF;
        display: none;
        position: absolute;
        z-index: 999;
        left: 0;
    }
    ul li:hover ul.men{
        display: block; /* Display the dropdown */
    }
    ul li ul.men li{
        display: block;
    }  
    
            #logo{
               margin-top: 0%;
               float: left;
               margin-top:0px; 
               position: relative;
            }
            #logout{
               margin-top: 1%;
                float: right;
                margin-right: 0%;
                background-color:rgb(51, 153, 51);
                width: 200px;
                height: 20px;
                text-decoration:none;
                position: relative;
            }
            
            #login{
                
              float: right;
               background-color: rgb(51, 153, 51);
               height: auto;
               margin-top: 0%;
               width: auto;
               margin-right: 3%;
               text-align: center;
               text-decoration: none;
               position: relative;
            }
            
            #body1{
                
                width: 100%;
                height: auto;
                position: absolute;
                margin-top: 0px;
                background-color: #761c19;
            }
            
            #body2{
                margin-top: 20px;
                width: 18%;
                margin-left:4%;
                height: 400px;;
                position: relative;
                float: left;
                background-color:gainsboro;
                
            }
            #body21{
                margin: 10px;
                width: auto;
                //margin-left: 10px;
                height: 200px;
                text-align: center;
                
                
                
            }
            
            #body3{
                width: 45%;
                height: 400px;
                margin: 2%;
                position: relative;
                float: left;
                margin-left: 3%;
                border: 2px solid #761c19;
                
                
            }
            #body4{
                width: 25%;
                height: 400px;;
                position: relative;
                float: left;
                margin-right: 2%;
                text-align: center;
                margin-top: 20px;
                margin-left: 8px;
                background-color: gray;
               
            }
            
            #body42{
                width: auto;
                height: 200px;
                text-align: center;
                margin: 10px;
                background-color: gray;
                
               
                
                
            }
            
     .header-cont {
     width:100%;
    position:fixed;
    top:0px;
    height:auto;
    
    
}

#botomnav{
    
    width: 100%;
    height: 200px;
    margin-top:10px; 
    background-color: blue;
    border: 4px solid #000;
    
    
    
}
#down{
    
    width: 100%;
    padding-top: 70%;
    margin-top: 36%;
    //margin-right:20px;
    //height: 1000px;
    background-color: whitesmoke;
    border: 3px solid #000;
    height: 80px;
    position: relative;
}
#search{
    
    position: relative;
    float: right;
    margin-right: 500px;
    width: 300px;
    height: 50px;
    background-color: white;
}
            
        </style>
        
        
        
        
    </head>
    <body>
        
        <header class="container-fluid">
            
            
            <div id="hed" class="container-fluid" class="header-cont">
                
                <div id="logo-store">
                <br><img src="img/online-store.gif" >
                </div>
                
                
            
       <%
        if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
       %>
        <br/>
        <div id="login" class="container-fluid">
            
             <div id="logo" class="container-fluid">
            <img src="img/userlogo_1.jpg" >
            
        </div>
             &nbsp;&nbsp;
             <a href="index.jsp"><b>Please Login</b></a>
        
        </div>
        <%
        } 
        else {
        %>
        
        <div id="logout" class="container-fluid">
            
            <div id="logo" class="container-fluid">
            <img src="img/userlogo_1.jpg" >
            &nbsp;&nbsp;
        </div>
            
<form>
	
<select name="option" >
	

    <option value="user">Hi &nbsp;<%=session.getAttribute("userid")%></option>
   <option value="Account">Account</option>
   <option value="Orders">Orders</option>
   <option value="Wallet">Wallet</option>
   <option value="logout" <a href='logout.jsp'/>Logout</option>

</select>




</form>
            
          &nbsp;&nbsp;&nbsp;&nbsp;
         <a href='logout.jsp'>Log out</a>
        <%
         }
         %>
         <div id="search" class="container-fluid">
         <form class="form-search" method="get" id="s" action="/">
    <div class="input-append" class="container-fluid">
        <input type="text" class="input-medium search-query" name="s" placeholder="Search" value="">
        <button type="submit" class="add-on" value="Search"><i class="icon-search"></i></button>
    </div>
</form>
         </div>
         </div>
          
         
            </div>
         <div id="menu" class="container-fluid">
                
                <ul>
                    <li><a href="#">Home</a></li>
                    <li><a href="#">Kids shoping</a>  </li>
                    <li>
                        <a href="#">Men Shoping</a>
                        <ul class="dropdown">
                                <li><a href="#">a</a>
                                  
                                 <li><a href="#">b</a></li>
                                 <li><a href="#">c</a></li>            
                   
                           
                         </ul>
                    
                    </li>
                    <li><a href="#">Women Shoping</a>  </li>
                    <li><a href="#">Electric Shoping</a></li>
                    <li><a href="#">Foods Shoping</a></li>
                    <li><a href="#">Helps</a></li>
             </ul>
                
                
            </div>
            
         </header>
        
         <div id="body1" class="container-fluid">
             
             <div id="body2" class="container-fluid">
                 <div id="body21" class="container-fluid">
                     <br><b><h3>Current Events</h3></b><hr/>
                     <a href="#" style="text-decoration: none">Shoping offers<img src="img/newicon.gif"/></a>
                     <br><hr style="border-bottom:2px dashed white;"/>
                     
                     <br> <a href="#" style="text-decoration: none">Brand list<img src="img/newicon.gif"/></a>
                     <br><hr style="border-bottom:2px dashed white;"/>      
                     
                     
                     <br> <a href="#" style="text-decoration: none">Range of your shoping<img src="img/newicon.gif"/></a>
                     <br><hr style="border-bottom:2px dashed white;"/>      
                     
                     
                     <br> <a href="#" style="text-decoration: none">Select Size<img src="img/newicon.gif"/></a>
                     <br><hr style="border-bottom:2px dashed white;"/>      
                     
                     
                     <br> <a href="#" style="text-decoration: none">Without Brand shoping<img src="img/newicon.gif"/></a>
                     <br><hr style="border-bottom:2px dashed white;"/>      
                     
                 </div>
                 
                 
             </div>    
             
             <div id="body3" class="container-fluid">
                 
                  

            <img class="mySlides " src="img/c.jpg" style="width:600px"style="height:600px" >
            <img class="mySlides " src="img/d.jpg" style="width:600px"style="height:600px" >
            <img class="mySlides " src="img/e.jpg" style="width:600px"style="height:600px" >
            <img class="mySlides " src="img/f.png" style="width:600px"style="height:600px" >

</div>

<script>
var myIndex = 0;
carousel();

function carousel() {
    var i;
    var x = document.getElementsByClassName("mySlides");
    for (i = 0; i < x.length; i++) {
       x[i].style.display = "none";
    }
    myIndex++;
    if (myIndex > x.length) {myIndex = 1}
    x[myIndex-1].style.display = "block";
    setTimeout(carousel, 3000);
}
</script>

                 
                 
             
             <div class="container-fluid" id="body4">
                 <div id="body41" class="container-fluid">
                     
                     
                     
                     
                     
                 </div>
                 
                 
                 
                 
                 
                 
                 <div id="body42" class="container-fluid">
                     <b><h3><br><br><br>News & Events</h3></b>
                     <hr/> <br><br>
                 <marquee behavior="alternet" direction="up" onmouseover="stop()" onmouseout="start()" height="30%"  hspace="1">
                    
                     <b><a href="#" style="margin-left: 25px;">If you shoping more than 5000 than you get some offers .<img src="img/newicon.gif"/></a></b>
                     <br><hr style="border-bottom:1px dashed white;"/>
                          
                          
                     </marquee>

                 </div>
             </div>
         
    </div>
       
        
        
        
        
         <div class="container-fluid" id="down" >
      
             
        </div>
         
         
         
         
         <div id="botomnav" class="container-fluid">
             
             
            
             
             
         </div>
    </body>
</html>
