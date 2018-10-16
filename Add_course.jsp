
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
<!--script-->
<style>
	#form-details input[type="text"]
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

</style>



<script language="javascript" type="text/javascript">  
 var xmlHttp  
 var xmlHttp
function showState(str){ 
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
var url= "course_inst_dept.jsp";
url += "?count=" +str;
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
 
</head>

<body>
<!-- header -->
<div class="top-header">
    
	 <div class="container">
		 <div class="logo">
			 <h1><a href="index.jsp"><span aria-hidden="true"></span><img src="images/NirmaUniversity_Logo.jpg" width="160px"></img></a></h1>
		 </div>
		
		 <div class="top-menu">				 
			 <ul class="nav1">
 <li><a href="Admin_module.jsp">Add Faculty</a></li>
				 <li><a href="Add_Student2.jsp">Add Student</a></li>
                        	
				 <li class="active"><a href="Add_course.jsp">Add Course</a></li>
                                 <li><a href="Add_Department.jsp">Add Department</a></li>
                                  <li><a href="Add_Institute.jsp">Add Institute</a></li>

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
    <% 
        Object sa=session.getAttribute("userid");
    %>
    <label style="float:right; color:green; padding-right: 130px;"><%= "Welcome: "+ sa %></label>

</div>
	 
<form  method="POST">
<div class="contact">
		<div class="container">
			<div class="contact-top">
				<h3>Add Course</h3>
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
             
             String inst_name=request.getParameter("inst_name");
             
             sql="select Institute_name from Institute";
             ResultSet rs=mystmt.executeQuery(sql);
         %>    
           

    
    
<center>
<div id="form-details">
<input type="text" placeholder="Course Code" name="c_code" required /><br/>
<input type="text" placeholder="Course Name" name="c_name" required /><br/>
<input type="text" placeholder="Course Credit" name="c_credit" required /><br/>
<input type="text" placeholder="Course Coordinator" name="c_cord" required /><br/>

<select name="inst" onchange="showState(this.value)">
   <option>---Select Institute Type---</option>
   <%while(rs.next()){%>
    <option value="<%=rs.getString(1)%>"><%= rs.getString(1) %></option>
   <%}%>
    
</select><br/>
<div id='state'>
<select name='c_dept'>
    
     <option value='-1'> ----Select Department----</option>  
</select><br/>
</div>
<select name='c_sem'>
    <option>---Select Semester---</option>
    <option>SEM-1</option>
    <option>SEM-2</option>
    <option>SEM-3</option>
    <option>SEM-4</option>
    <option>SEM-5</option>
    <option>SEM-6</option>
    <option>SEM-7</option>
    <option>SEM-8</option>
   
    
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
     if("POST".equalsIgnoreCase(request.getMethod()))
  {
             Class.forName("com.mysql.jdbc.Driver"); 
             
             myconn= DriverManager.getConnection(url,user,password);
             
             mystmt=myconn.createStatement();
             String c_code=request.getParameter("c_code");
             String c_name=request.getParameter("c_name");
             String c_credit=request.getParameter("c_credit");
             String c_cord=request.getParameter("c_cord");
             String dept=request.getParameter("c_dept");
             String sem=request.getParameter("c_sem");
             String inst_type=request.getParameter("inst");
                  
              sql="select Course_code from course where Course_code='"+ c_code +"'";
              rs=mystmt.executeQuery(sql);
               if(rs.next())
             {
               out.println("<script>alert('Course Already Added...')</script>");
         
             }
             else
             {      
             sql="insert into course values('"+ c_code + "','"+ c_name + "','"+ c_credit +"','"+ c_cord + "','"+ dept + "','"+ sem + "','"+ inst_type + "')";
             if( mystmt.executeUpdate(sql)==1)
             {
             out.println("<script>alert('Course Added Successfully...')</script>");
             }
             }
     }        
   %>

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


