<%@page import="java.sql.*" %>
<%@page import="project.ConnectionProvider" %>
<%
String nim = request.getParameter("nim");
try {
  Connection con = ConnectionProvider.getCon();
  PreparedStatement ps = con.prepareStatement("DELETE FROM result WHERE nim=?");
  ps.setString(1, nim);
  ps.executeUpdate();
  response.sendRedirect("adminHome.jsp");
} catch(Exception e) {
  out.println("Error: " + e);
}
%>
