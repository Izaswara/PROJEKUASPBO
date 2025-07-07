<%@page import="java.sql.*" %>
<%@page import="project.ConnectionProvider" %>
<%
String nim = request.getParameter("nim");
String s1 = request.getParameter("s1");
String s2 = request.getParameter("s2");
String s3 = request.getParameter("s3");
String s4 = request.getParameter("s4");
String s5 = request.getParameter("s5");
String s6 = request.getParameter("s6");
String s7 = request.getParameter("s7");

try {
  Connection con = ConnectionProvider.getCon();
  PreparedStatement ps = con.prepareStatement("UPDATE result SET s1=?, s2=?, s3=?, s4=?, s5=?, s6=?, s7=? WHERE nim=?");
  ps.setString(1, s1);
  ps.setString(2, s2);
  ps.setString(3, s3);
  ps.setString(4, s4);
  ps.setString(5, s5);
  ps.setString(6, s6);
  ps.setString(7, s7);
  ps.setString(8, nim);
  ps.executeUpdate();
  response.sendRedirect("adminHome.jsp"); // reload halaman
} catch(Exception e) {
  out.println("Error: " + e);
}
%>
