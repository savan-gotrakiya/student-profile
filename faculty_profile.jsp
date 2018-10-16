
<%@page import="java.awt.Image"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="javax.swing.text.Document"%>
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
<!--script-->
<style>
	#form-details input[type="text"],input[type="date"],input[type="email"]
	{
          padding: 11px;
	  width: 40%;
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
	  width: 40%;
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


.column {
    float: left;
    width: 70%;
    padding-left: 50px;
}

/* Clear floats after the columns */
.row:after {
    content: "";
    display: table;
    clear: both;
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
                                           <li><a href="disable_student.jsp">Disable Profile</a></li> 
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
	 
<form  method="POST" enctype="multipart/form-data">
<div class="contact">
		<div class="container">
			<div class="contact-top">
				<h3>Faculty Profile</h3>
			</div>
       </div>
       
</div>

<%@ page import="javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>
<%@ page import="java.sql.*" %>

<%
        
        String url = "jdbc:mysql://localhost:3306/student_profile";
        String user = "root";
        String password = "";

        Connection myconn = null;
        Statement mystmt = null;
         Statement mystmt2 = null;
     
        Class.forName("com.mysql.jdbc.Driver"); 
             
         try
         {
             myconn= DriverManager.getConnection(url,user,password);
             
             mystmt=myconn.createStatement();
             mystmt2=myconn.createStatement();
           
             String sql,sql2;
        

          Object user_type=session.getAttribute("userid");
                
          sql="select Department_name from department where Institute_name In (select Institute_type from login where UserID='"+ user_type +"') ";
          ResultSet rs=mystmt.executeQuery(sql);
          
          sql="select * from faculty_profile where Faculty_ID='"+ user_type +"'";
          ResultSet rs2=mystmt2.executeQuery(sql);
          
          if(rs2.next())
          {
                         Object path="images/"+ rs2.getString(13);
          %>
          
      
          <div style="float:right; margin-right: 200px;">  
           <img width="150px" height="150px" id="blah" src="<%= path%>" readonly alt=""/>
           </div>
   
                                  <center>
  
                        <div id="form-details">
    
<div class="row">
    <TABLE  BORDER="1" BORDERCOLOR="#ff8500"  style="width: 700px; height: 500px;">

   <tr>
      <TH> &nbsp; <b>Faculty ID:</b></TH>
      <td>&nbsp;<%= user_type %></td>
   </tr>
   <tr>
       <TH>&nbsp; <b>Faculty Name:</b></TH>
      <td>&nbsp;<%= rs2.getString(2) %></td>
   </tr>
     <tr>
       <TH> &nbsp;<b>Gender:</b></TH>
      <td>&nbsp;<%= rs2.getString(3) %></td>
   </tr>  <tr>
       <TH> &nbsp;<b>Department:</b></TH>
      <td>&nbsp;<%= rs2.getString(4) %></td>
   </tr>  <tr>
       <TH>&nbsp; <b>D.O.J:</b></TH>
      <td>&nbsp;<%= rs2.getString(5) %></td>
   </tr>  <tr>
       <TH>&nbsp; <b>Contact No:</b></TH>
      <td>&nbsp;<%= rs2.getString(6) %></td>
   </tr>  <tr>
       <TH>&nbsp; <b>Email ID:</b></TH>
      <td>&nbsp;<%= rs2.getString(7) %></td>
   </tr>  <tr>
       <TH>&nbsp; <b>Degree:</b></TH>
      <td>&nbsp;<%= rs2.getString(8) %></td>
   </tr>
     <tr>
       <TH>&nbsp; <b>Specialization:</b></TH>
      <td>&nbsp;<%= rs2.getString(9) %></td>
   </tr>  <tr>
       <TH>&nbsp; <b>University:</b></TH>
      <td>&nbsp;<%= rs2.getString(10) %></td>
   </tr>  <tr>
       <TH>&nbsp; <b> Experience:</b></TH>
      <td>&nbsp;<%= rs2.getString(11) %></td>
   </tr>  <tr>
       <TH>&nbsp; <b>Passing Year:</b></TH>
      <td>&nbsp;<%= rs2.getString(12) %></td>
   </tr>
 </table>


       
                                  
                                  </center>
             
               
    
          <%
                         
          }
          
          else
          { 
           %>
           
           
              <div style="float:right;">  
           <img width="150px" height="150px" id="blah" src="images\avatar-default.jpg" readonly alt=""/>
           <input type="file" id="fileField" name="fileField" placeholder="Faculty ID" accept=".jpg,.jpeg,.png" onchange="validateFileType()" required/><br/>
            </div>
    <script>
    function readURL(input) {
    if (input.files && input.files[0]) {
        var reader = new FileReader();

        reader.onload = function (e) {
            $('#blah').attr('src', e.target.result);
        }

                reader.readAsDataURL(input.files[0]);
            }
        }

        $("#fileField").change(function(){
            readURL(this);
        });
   </script>
   <script type="text/javascript">
    function validateFileType(){
        var fileName = document.getElementById("fileField").value;
        var idxDot = fileName.lastIndexOf(".") + 1;
        var extFile = fileName.substr(idxDot, fileName.length).toLowerCase();
        if (extFile=="jpg" || extFile=="jpeg" || extFile=="png"){
            //TO DO
        }else{
            alert("Only jpg/jpeg and png files are allowed!");
 
        }   
    }
</script>
           <center>
  
<div id="form-details">
    
<div class="row">
        <div class="column">     
            <input type="text" name="faculty_id" id="faculty_id" readonly placeholder="Faculty ID" value="<%= user_type %>" required/>
            <input type="text" name="faculty_name" id="faculty_name" placeholder="Faculty name"  required style="margin-left:30px;"/>
        </div>
        <div class="column">           
           <b>Gender:</b> <input type="radio" name="gender" required placeholder="Gender" value="Male"/>Male
                <input type="radio" name="gender" placeholder="Gender" required value="Female"/>Female
                
                <select name="dept" onchange="showState(this.value,sem.value)" required style="margin-left:220px;">
               <option>---Select Department---</option>
               <%while(rs.next()){%>
                <option value="<%=rs.getString(1)%>"><%= rs.getString(1) %></option>
               <%}%>
            </select>

       </div>
 </div>

    <div class="row">
        <div class="column">           
                <input type="date" name="D.O.J" placeholder="Faculty ID" required/>
                <input type="text" name="mob_no" placeholder="Mobile Number" style="margin-left:30px;" required/>
        </div>
   </div>   
   <div class="row">
    <div class="column">
                <input type="email" name="email_id" placeholder="Faculty Email ID" required/>
                <input type="text" name="degree" placeholder="Degree" style="margin-left:30px;" required/>
       
    </div>
   </div>
    
    <div class="row">
        <div class="column">           
                <input type="text" name="specs" placeholder="Specialization" required/>
                <input type="text" name="university" placeholder="University" style="margin-left:30px;" required/>
        </div>
 </div>    
      <div class="row">
    <div class="column">
         <input type="text" name="expr" placeholder="Number of year Experience" required/>
                <input type="text" name="year" placeholder="Passing Year" style="margin-left:30px;" required/>
    
    </div>

    </div>
 
    
 <div class="submit-btn">								
   <input type="submit" value="Submit" name="submit">						
</div>
</center>
           <%
          }
 %>    
          
                   


            
</form>

   <%@page import="uploadutilities.FileMover"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.io.File"%>
<%@page import="javazoom.upload.MultipartFormDataRequest"%>


    <%
       
                    if("POST".equalsIgnoreCase(request.getMethod()))
                  {

                      MultipartFormDataRequest nreq = new MultipartFormDataRequest(request);

                        String f_id=request.getParameter("faculty_id");

                        String f_name=nreq.getParameter("faculty_name");
                        String gender=nreq.getParameter("gender");
                        String dept=nreq.getParameter("dept");
                        String doj=nreq.getParameter("D.O.J");

                        String mob_no=nreq.getParameter("mob_no");
                        String email_id=nreq.getParameter("email_id");
                        String degree=nreq.getParameter("degree");

                        String specs=nreq.getParameter("specs");

                        String university=nreq.getParameter("university");
                        String expr=nreq.getParameter("expr");
                        String year=nreq.getParameter("year");

                        /*
                        out.print(f_id);
                        out.print(f_name);
                         out.print(gender);
                         out.print(dept);
                         out.print(doj);
                        out.print(mob_no);
                         out.print(email_id);
                         out.print(degree);
                          out.print(specs);
                        out.print(university);
                         out.print(expr);
                         out.print(year);
                                */

                  try{
                        String idname=(String)user_type;
                      File deleteFile1 = new File("E:/Nirma University/SEM-6/MP-3/Student_Profile_Project/Student_Profile/web/images/" + idname);
                      // check if the file is present or not
                      if (deleteFile1.exists()) {
                          deleteFile1.delete();
                      }
                      uploadutilities.FileMover fileMover = new uploadutilities.FileMover();
                      fileMover.setNewfilename(idname);
                      javazoom.upload.UploadBean upBean = new javazoom.upload.UploadBean();
                      upBean.addUploadListener(fileMover);
                      upBean.setFolderstore("E:/Nirma University/SEM-6/MP-3/Student_Profile_Project/Student_Profile/web/images");
                      upBean.setOverwrite(false);
                      upBean.store(nreq, "fileField");
                      String userphotopath = idname;
                      Thread.sleep(2000L);
                      Class.forName("com.mysql.jdbc.Driver");
                      Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/student_profile","root","");
                      PreparedStatement pinsert = connection.prepareStatement("insert into faculty_profile values(?,?,?,?,?,?,?,?,?,?,?,?,?)");
                      pinsert.setString(1, idname);
                      pinsert.setString(2,f_name);
                      pinsert.setString(3,gender);
                      pinsert.setString(4,dept);
                      pinsert.setString(5,doj);
                      pinsert.setString(6,mob_no);
                      pinsert.setString(7,email_id);
                      pinsert.setString(8,degree);
                      pinsert.setString(9,specs);
                      pinsert.setString(10,university);
                      pinsert.setString(11,expr);
                      pinsert.setString(12,year);
                      pinsert.setString(13,idname);
                 
                       sql="select Faculty_ID from faculty_profile where Faculty_ID='"+ user_type +"'";
                       rs=mystmt.executeQuery(sql);
                       if(rs.next())
                       {
                           out.println("<script>alert('Profile Already Saved...')</script>");
                       %>    
                                <form>     
                    <center>
  
                        <div id="form-details">

                        <div class="row">
                                <div class="column">           
                                    <input type="text" name="faculty_id" id="faculty_id" readonly placeholder="Faculty ID" value="<%= rs.getString(1) %>" required/>
                                        <input type="text" name="faculty_name" id="faculty_name" placeholder="Faculty name" value="<%= rs.getString(2) %>" required style="margin-left:30px;"/>
                                </div>

                         </div>

                    </center>

                </form>
                                <%
                       }
                       else
                       {

                        pinsert.executeUpdate();
                        out.println("<script>alert('Profile Save Successfully...')</script>");
                        
                      
                       }
                  }
                  catch(Exception e)
                  {
                  out.println(e);

                  }

              }  
                    
%>

   
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


    
