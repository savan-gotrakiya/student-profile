
<%@page import="java.security.MessageDigest"%>
<%@page import="sun.security.util.Password"%>
<!DOCTYPE HTML>
<html>
<head>
<title>Nirma University</title>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- jQuery (necessary JavaScript plugins) -->
<script src="js/bootstrap.js"></script>
<!-- Custom Theme files -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<!-- Custom Theme files -->
<!--//theme-style-->
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>

<script src="js/jquery.min.js"></script>
<!--/animated-css-->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<!--/script-->
<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){		
					event.preventDefault();
					$('html,body').animate({scrollTop:$(this.hash).offset().top},900);
				});
			});
</script>


<script language="javascript" type="text/javascript">  
 var xmlHttp  
 var xmlHttp
function showState(str,sem){ 
       if (typeof XMLHttpRequest != "undefined"){
   xmlHttp= new XMLHttpRequest();
       }
       else if (window.ActiveXObject){
   xmlHttp= new ActiveXObject("Microsoft.XMLHTTP");
       }
if (xmlHttp==null){
    alert ("Browser does not support XMLHTTP Request")
return
} 
var temp=document.getElementById("sem");
var url= "select_subject.jsp?seme="+sem+"&cdept="+str;

var val=temp;
xmlHttp.onreadystatechange = stateChange;
xmlHttp.open("GET", url, true);

xmlHttp.send(null);
}
 function stateChange(){   
 if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete"){   
 document.getElementById("state").innerHTML=xmlHttp.responseText   
 }   
 }
 </script>  
<!--script-->
<style>
	#form-details input[type="text"],input[type="date"]
	{
	  padding: 11px;
	  width: 30%;
	  font-size: 1em;
	  margin: 10px 0px;
	  border: 1px solid #302e2e;
	  color: #302e2e;
	  background: none;
	  outline: none;
	  font-weight: 400;
	  border-radius: 0.3em;
	
        }
        
        #form-details select
	{
	  padding: 11px;
	  width: 30%;
	  font-size: 1em;
	  margin: 10px 0px;
	  border: 1px solid #302e2e;
	  color: #302e2e;
	  background: none;
	  outline: none;
	  font-weight: 400;
	  border-radius: 0.3em;
	}
.navbar-header 
.navbar-toggle .icon-bar {
    background-color: #fff;
}


.nav.navbar-nav > li:hover > ul.sub-menu{
  display: block;
  -webkit-animation: fadeInUp 400ms;
  -moz-animation: fadeInUp 400ms;
  -ms-animation: fadeInUp 400ms;
  -o-animation: fadeInUp 400ms;
  animation: fadeInUp 400ms;
}

ul.sub-menu {
	position: absolute;
	top: 65px;
	left: 0;
	background: rgba(0, 0, 0, 0.6);
	list-style: none;
	padding: 0;
	margin: 0;
	width: 220px;
	-webkit-box-shadow: 0 3px 3px rgba(0, 0, 0, 0.1);
	box-shadow: 0 3px 3px rgba(0, 0, 0, 0.1);
	display: none;
	z-index: 999;
}

.dropdown ul.sub-menu li .active{
  color: red;
  padding-left: 0;
}


.navbar-nav li ul.sub-menu li{
  padding: 10px 20px 0 ;
}

.navbar-nav li ul.sub-menu li:last-child{
  padding-bottom: 20px;
}

.navbar-nav li ul.sub-menu li a{
color: #fff;
background:none;
}

.navbar-nav li ul.sub-menu li a:hover{
    color:#ff8500;
}

.fa-angle-down{
  padding-left: 5px; 
}

@-webkit-keyframes fadeInUp {
  0% {
    opacity: 0;
    -webkit-transform: translateY(20px);
    transform: translateY(20px);
  }

  100% {
    opacity: 1;
    -webkit-transform: translateY(0);
    transform: translateY(0);
  }
}
    </style>
</head>

<body>
<!-- header -->
<div class="top-header">
    
	 <div class="container">
		 <div class="logo">
			 <h1><a href="index.jsp"><span aria-hidden="true"></span><img src="images/NirmaUniversity_Logo.jpg" width="160px"></img></a></h1>
		 </div>
	
             
             <div class="top-header">
	 <div class="container">
		 <div class="logo">
			 <h1><a href="index.jsp"><span aria-hidden="true"></span><img src="images/NirmaUniversity_Logo.jpg" width="160px"></a></h1>
		 </div>
		
		 <div class="top-menu">				 
			 <span class="menu"><img src="images/menu.png" alt=""></span>
		
                         <ul class="nav1">
                            
	                   <div class="mainmenu pull-left">
		                <ul class="nav navbar-nav collapse navbar-collapse">
                                           <li class="dropdown"><a href="#">Add Attendance<i class="fa fa-angle-down"></i></a>
                                    <ul role="menu" class="sub-menu">
                                            <li><a href="add_attnd_by_faclt.jsp">Add Attendance</a></li>
                                           <li><a href="add_course_details_by_faclt.jsp">Course Details</a></li> 
                                    </ul>
                          </li> 
                            <li class="dropdown"><a href="#">Add Student<i class="fa fa-angle-down"></i></a>
                                    <ul role="menu" class="sub-menu">
                                            <li><a href="add_ind_stu_by_faclt.jsp">Individual</a></li>
                                           <li><a href="add_bulk_stu_bu_faclt.jsp">Bulk</a></li> 
                                    </ul>
                          </li> 
                           	 <li><a href="add_result.jsp">Add Result</a></li>
		                <li class="dropdown"><a href="#">Student Profiles<i class="fa fa-angle-down"></i></a>
                                    <ul role="menu" class="sub-menu">
                                            <li><a href="shop.html">View Profile</a></li>
                                           <li><a href="product-details.html">Disable Profile</a></li> 
                                    </ul>
                          </li> 
                         
			</ul>
	              	</div>
                                 </li>
                              
				 <li><a href="faculty_profile.jsp">Manage Profile</a></li>
				     <li><a href="logout.jsp">Logout</a></li>
        			     </ul>
			 <div class="clearfix"></div>
		 </div>
			<!-- script-for-menu -->
							 <script>
							   $( "span.menu" ).click(function() {
								 $( "ul.nav1" ).slideToggle( 300, function() {
								 // Animation complete.
								  });
								 });
							</script>
		 <!-- /script-for-menu -->

		 <div class="clearfix"></div>
	 </div>
</div>
             
			<!-- script-for-menu -->
        
                        				 <script>
							   $( "span.menu" ).click(function() {
								 $( "ul.nav1" ).slideToggle( 300, function() {
								 // Animation complete.
								  });
								 });
							</script>
		 <!-- /script-for-menu -->

		 <div class="clearfix"></div>
	 </div>
   
    <% 
        Object sa=session.getAttribute("userid");
    %>
    <label style="float:right; color:green; padding-right: 130px;"><%= "Welcome: "+ sa %></label>

</div>
	 
<form  method="POST">
<div class="contact">
		<div class="container">
			<div class="contact-top">
				<h3>Individual Student</h3>
			</div>
       </div>
</div>

  <%@ page import="javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>
<%@ page import="java.sql.*" %>

<%
        String url = "jdbc:mysql://localhost:3306/Student_Profile";
        String user = "root";
        String password = "";

        Connection myconn = null;
        Statement mystmt = null;
        Class.forName("com.mysql.jdbc.Driver"); 
             
         try
         {
             myconn= DriverManager.getConnection(url,user,password);
             
             mystmt=myconn.createStatement();
             String sql;
             
               Object user_type=session.getAttribute("userid");
             
           
              sql="select Department_name from department where Institute_name In (select Institute_type from login where UserID='"+ user_type +"') ";
               ResultSet rs=mystmt.executeQuery(sql);
         %>    
          
    
<center>
<div id="form-details">
<input type="text" placeholder="Start Roll No" name="UserID" required /><br/>
<input type="text" placeholder="Last Roll No" name="last_UserID" required /><br/>

    <select name="dept" onchange="showState(this.value,sem.value)">
   <option>---Select Department---</option>
   <%while(rs.next()){%>
    <option value="<%=rs.getString(1)%>"><%= rs.getString(1) %></option>
   <%}%>
</select><br/>

<select name="sem" id="sem" onchange="showState(dept.value,this.value)">
<option>---Select Semester---</option>
<option value="SEM-1">SEM-1</option>
<option value="SEM-2">SEM-2</option>
<option value="SEM-3">SEM-3</option>
<option value="SEM-4">SEM-4</option>
<option value="SEM-5">SEM-5</option>
<option value="SEM-6">SEM-6</option>
<option value="SEM-7">SEM-7</option>
<option value="SEM-8">SEM-8</option>
</select><br/>
<div id='state'>
<select name='sub'>
 <option value='-1'> ----Select Subject----</option>  
</select><br/>

</div>

<div class="submit-btn">
	<input type="submit" value="Submit">						
</div>
</center>

</form>

<br/>
<br/>

<!-- footer -->
<div class="copywrite">
	 <div class="container">
			<center> <p> © 2018 Nirma University. All rights reserved</p></center>
	 </div>
</div>
<!---->
<script type="text/javascript">
		$(document).ready(function() {
				/*
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
				*/
		$().UItoTop({ easingType: 'easeOutQuart' });
});
</script>
<a href="#to-top" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
<!----> 
	 
</body>
</html>

<% 
         }
         catch(Exception exe)
         {
             exe.printStackTrace();
         }
         
         finally
         {
                if(mystmt!=null)
                {
                    try{
                        mystmt.close();
                    }
                    catch(Exception e){}
                }   
         
                if(myconn!=null)
                {
                    try{
                        myconn.close();
                    }
                    catch(Exception e){}
                }   
         
         
         }
         
  
         
  
     
    
%>


<%   
 if("POST".equalsIgnoreCase(request.getMethod()))
 {    

        Class.forName("com.mysql.jdbc.Driver"); 
        
       try {
            
            myconn = DriverManager.getConnection(url, user, password);

            mystmt = myconn.createStatement();
            
            String sql;
            
            String userid=request.getParameter("UserID");
            String dept=request.getParameter("dept");
            String sem=request.getParameter("sem");
            String sub=request.getParameter("sub");
        
         
            
  if(userid.length()<8)   
    {
          out.println("<script>alert('Minimum 8 Character Are Required...')</script>");
        
    }
  else
    {      
            sql="select UserID from Login where UserID='"+ userid +"'";
            ResultSet rs=mystmt.executeQuery(sql);
    
            if(rs.next())
             {
                 sql="select Roll_No,Subject_Name from stu_course_enroll where Roll_No='"+ userid +"' && Subject_Name='"+ sub +"'";
                 rs=mystmt.executeQuery(sql);
                 
                 if(rs.next())
                 {
                    out.println("<script>alert('Student Already Exist...')</script>");
                 }
                 else
                 {
                String s=request.getParameter("UserID");
                int lenght = s.length();
                int numbers = Integer.parseInt(s.substring(s.length() - 3));
                String num = s.substring(0,5);
                
        
                String last_s=request.getParameter("last_UserID");
                int numbers2 = Integer.parseInt(last_s.substring(s.length() - 3));
                
                int ans=numbers2-numbers;
                String num2 = last_s.substring(0,5);
               
               
                      
                   
               if(num.equals(num2))
                {
                    for(int i=0;i<=ans;i++)
                    {
                        
                        int n[]=new int[20];
                        
                        String roll[]=new String[20];
                      
                        n[i]=numbers+i;
                        
                         roll[i]=num+n[i];
                        
                        String UserID=roll[i];
                       
                     sql="insert into stu_course_enroll values('"+ UserID +"','"+ sub +"','"+ sem +"','"+ dept +"')";
                     mystmt.executeUpdate(sql);
                      }
                    out.println("<script>alert('Student Added Successfully...')</script>");
     
                }
                else
                {
                    out.println("<script>alert('Enter UserID In Same Series...')</script>");
                }
         
        }  
 
                 }
               else
             {
                out.println("<script>alert('User Does Not Exist...')</script>");
     
             }   
           }      
             
       }    
        catch (SQLException exc) {
            exc.printStackTrace();
        } 
        catch (Exception exc) {
            exc.printStackTrace();
            } 
        finally {
            if (mystmt != null) {
                try {
                    mystmt.close();
                } catch (SQLException ex) {
                      }
            }

            if (myconn != null) {
                try {
                    myconn.close();
                } catch (SQLException ex) {
                }
            }
        }
  

  }     
       
%>
