
<%@page import="java.security.MessageDigest"%>
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

	#form-details input[type="password"]
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
	}</style>
</head>

<body>
<!-- header -->
<div class="top-header">
	 <div class="container">
		 <div class="logo">
			 <h1><a href="index.jsp"><span aria-hidden="true"></span><img src="images/NirmaUniversity_Logo.jpg" width="160px"></a></h1>
		 </div>
		
		 <div class="top-menu">				 
			 <span class="menu"><img src="images/menu.png" alt=""></span>
			 <ul class="nav1">
				 <li><a href="Student_login.jsp">Student Login</a></li>
				 <li><a href="Faculty_login.jsp">Faculty Login</a></li>
				 <li><a href="Admin_login.jsp">Admin Login</a></li>
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
<script src="js/responsiveslides.min.js"></script>

<center>
<form method="post">
<div class="contact">
		<div class="container">
			<div class="contact-top">
				<h3>Change Password</h3>
			</div>
       </div>
</div>


<div id="form-details">
<input type="password" placeholder="Enter New Password" name="conf_new_pass" required "/><br/>
<input type="password" placeholder="Confirm New Password" name="new_pass" required "/><br/>

</div>

<div class="submit-btn">								
	<input type="submit" value="Submit" name="submit">						
</div>
<br/>



</form>

</center>
<br/><br/><br/>
<!-- footer -->
<div class="copywrite">
	 <div class="container">
			<center> <p> © 2018 Nirma University. All rights reserved. </p></center>
	 </div>
</div>
<!---->


</body>
</html>


<%@ page import="javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>
<%@ page import="java.sql.*" %>

<%   
      
        String url = "jdbc:mysql://localhost:3306/Student_Profile";
        String user = "root";
        String password = "";
        Connection myConn = null;
        Statement myStmt = null;

        Class.forName("com.mysql.jdbc.Driver"); 
        
       try {
            
            myConn = DriverManager.getConnection(url, user, password);

            myStmt = myConn.createStatement();
            
            String sql;
            
                String conf=request.getParameter("conf_new_pass");
                String submit=request.getParameter("submit");
                String pass=request.getParameter("new_pass");
                
                
                String email=""+session.getAttribute("passwords");
             //   out.print(email);
                Object se_user_type=session.getAttribute("user_type");
                          
               //            out.print(se_user_type);
                          
                if(submit.equals("Submit"))
                {
                     if(pass.equals(conf))
                     {
                            String hx= null; 
                          MessageDigest alg = MessageDigest.getInstance("MD5");
                          alg.reset();
                          alg.update(pass.getBytes());
                          byte[] digest = alg.digest();
                          StringBuffer hashedpasswd = new StringBuffer();
                              
                                for (int i=0;i<digest.length;i++){
                                        hx =  Integer.toHexString(0xFF & digest[i]);
                                        //0x03 is equal to 0x3, but we need 0x03 for our md5sum
                                        if(hx.length() == 1){hx = "0" + hx;}
                                        hashedpasswd.append(hx);
                                }
                                
                           sql = "update Login set Password='"+hx+"' where Password='"+email+"'";
                      
                           
                           myStmt.executeUpdate(sql);
                           
                           
                           if(se_user_type.equals(123))
                           {
                         //       session.setAttribute("userid",email);

                               response.sendRedirect("Student_login.jsp");
                     
                           }
                           else
                           {
                       
                              response.sendRedirect("Faculty_login.jsp");

                           
                           }
                           
                     }
                     else
                     {
                         out.println("<script> alert('Both Passwords are not Matching') </script>");

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
            if (myStmt != null) {
                try {
                    myStmt.close();
                } catch (SQLException ex) {
                      }
            }

            if (myConn != null) {
                try {
                    myConn.close();
                } catch (SQLException ex) {
                }
            }
        }
  
   
    
%>