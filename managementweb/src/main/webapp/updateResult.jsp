<%@page import="java.sql.*" %>
<%@page import="project.ConnectionProvider" %>
<%
request.setCharacterEncoding("UTF-8");

String nim = request.getParameter("nim");
String s1 = request.getParameter("s1");
String s2 = request.getParameter("s2");
String s3 = request.getParameter("s3");
String s4 = request.getParameter("s4");
String s5 = request.getParameter("s5");
String s6 = request.getParameter("s6");
String s7 = request.getParameter("s7");

// Validasi kolom tidak boleh kosong
if (nim == null || nim.trim().isEmpty() ||
    s1 == null || s1.trim().isEmpty() ||
    s2 == null || s2.trim().isEmpty() ||
    s3 == null || s3.trim().isEmpty() ||
    s4 == null || s4.trim().isEmpty() ||
    s5 == null || s5.trim().isEmpty() ||
    s6 == null || s6.trim().isEmpty() ||
    s7 == null || s7.trim().isEmpty()) {
    
    out.println("<script>alert('Semua kolom nilai harus diisi.'); location='adminHome.jsp';</script>");
    return;
}

try {
    Connection con = ConnectionProvider.getCon();
    PreparedStatement ps = con.prepareStatement(
        "UPDATE result SET s1=?, s2=?, s3=?, s4=?, s5=?, s6=?, s7=? WHERE nim=?"
    );
    ps.setString(1, s1);
    ps.setString(2, s2);
    ps.setString(3, s3);
    ps.setString(4, s4);
    ps.setString(5, s5);
    ps.setString(6, s6);
    ps.setString(7, s7);
    ps.setString(8, nim);

    int rows = ps.executeUpdate();
    if (rows > 0) {
        response.sendRedirect("adminHome.jsp");
    } else {
        out.println("<script>alert('Data tidak ditemukan.'); location='adminHome.jsp';</script>");
    }
} catch(Exception e) {
    out.println("<script>alert('Terjadi kesalahan: " + e.getMessage() + "'); location='adminHome.jsp';</script>");
}
%>
