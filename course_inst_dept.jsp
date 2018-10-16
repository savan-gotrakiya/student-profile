<%@page language="java" import ="java.sql.*" %>  
 <%  
 String inst_name=request.getParameter("count");  
 String buffer="<select name='c_dept'><option value='-1'>----Select Department----</option>";  
 Class.forName("com.mysql.jdbc.Driver").newInstance();  
 Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/student_profile","root","");  
 Statement stmt = con.createStatement();  
 ResultSet rs = stmt.executeQuery("Select Department_name from Department where Institute_name='"+inst_name+"' ");  
   while(rs.next()){
   buffer=buffer+"<option value='"+rs.getString(1)+"'>"+rs.getString(1)+"</option>";  
   }  
 buffer=buffer+"</select>";  
 response.getWriter().println(buffer);  
 %>