<%@page import = "project.ConnectionProvider"%>
<%@page import = "java.sql.*"%>
<% 
String jenjang = request.getParameter("jenjang");
String jurusan = request.getParameter("jurusan");
String nim = request.getParameter("nim"); 
String nama = request.getParameter("nama"); 
String namaAyah = request.getParameter("namaAyah"); 
String gender = request.getParameter("gender"); 

try{
    Connection con = project.ConnectionProvider.getCon();
    Statement st = con.createStatement();
    st.executeUpdate("insert into student values('"+jenjang+"','"+jurusan+"', '"+nim+"', '"+nama+"', '"+namaAyah+"', '"+gender+"')");
    response.sendRedirect("adminHome.jsp");
} catch(Exception e){
    out.println(e);
}

%>
