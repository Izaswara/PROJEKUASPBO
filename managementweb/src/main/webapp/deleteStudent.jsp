<%@page import="java.sql.*"%>
<%@page import="project.ConnectionProvider"%>
<%
String nim = request.getParameter("nim");

try {
    Connection con = ConnectionProvider.getCon();
    PreparedStatement ps = con.prepareStatement("DELETE FROM student WHERE nim = ?");
    ps.setString(1, nim);

    int rowsDeleted = ps.executeUpdate();
    if (rowsDeleted > 0) {
        response.sendRedirect("adminHome.jsp");
    } else {
        out.println("<script>alert('Data tidak ditemukan.'); location='adminHome.jsp';</script>");
    }
} catch (Exception e) {
    out.println("<script>alert('Terjadi kesalahan: " + e.getMessage() + "'); location='adminHome.jsp';</script>");
}
%>
