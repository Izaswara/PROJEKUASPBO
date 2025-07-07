<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
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

// Validasi kosong
if (nim == null || nim.trim().isEmpty() ||
    s1 == null || s1.trim().isEmpty() ||
    s2 == null || s2.trim().isEmpty() ||
    s3 == null || s3.trim().isEmpty() ||
    s4 == null || s4.trim().isEmpty() ||
    s5 == null || s5.trim().isEmpty() ||
    s6 == null || s6.trim().isEmpty() ||
    s7 == null || s7.trim().isEmpty()) {
    
    out.println("<script>alert('Semua kolom harus diisi.'); location='adminHome.jsp';</script>");
    return;
}

// Validasi numerik
try {
    Integer.parseInt(nim);
    Integer.parseInt(s1);
    Integer.parseInt(s2);
    Integer.parseInt(s3);
    Integer.parseInt(s4);
    Integer.parseInt(s5);
    Integer.parseInt(s6);
    Integer.parseInt(s7);
} catch (NumberFormatException e) {
    out.println("<script>alert('NIM dan semua nilai harus berupa angka.'); location='adminHome.jsp';</script>");
    return;
}

try {
    Connection con = ConnectionProvider.getCon();

    // Cek apakah NIM sudah ada di tabel
    PreparedStatement check = con.prepareStatement("SELECT nim FROM result WHERE nim = ?");
    check.setString(1, nim);
    ResultSet rs = check.executeQuery();
    
    if (rs.next()) {
        out.println("<script>alert('Data dengan NIM ini sudah ada.'); location='adminHome.jsp';</script>");
        return;
    }

    // Jika belum ada, insert data
    PreparedStatement ps = con.prepareStatement(
        "INSERT INTO result VALUES (?, ?, ?, ?, ?, ?, ?, ?)"
    );
    ps.setString(1, nim);
    ps.setString(2, s1);
    ps.setString(3, s2);
    ps.setString(4, s3);
    ps.setString(5, s4);
    ps.setString(6, s5);
    ps.setString(7, s6);
    ps.setString(8, s7);

    ps.executeUpdate();
    response.sendRedirect("adminHome.jsp");
} catch (Exception e) {
    out.println("<script>alert('Terjadi kesalahan: " + e.getMessage() + "'); location='adminHome.jsp';</script>");
}
%>
