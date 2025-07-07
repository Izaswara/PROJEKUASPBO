<%@page import="java.sql.*"%>
<%@page import="project.ConnectionProvider"%>
<%
request.setCharacterEncoding("UTF-8");

String nim = request.getParameter("nim");
String jenjang = request.getParameter("jenjang");
String jurusan = request.getParameter("jurusan");
String nama = request.getParameter("nama");
String namaAyah = request.getParameter("namaAyah");
String gender = request.getParameter("gender");

// Validasi kolom kosong
if (jenjang == null || jenjang.trim().isEmpty() ||
    jurusan == null || jurusan.trim().isEmpty() ||
    nama == null || nama.trim().isEmpty() ||
    namaAyah == null || namaAyah.trim().isEmpty() ||
    gender == null || gender.trim().isEmpty()) {
    
    out.println("<script>alert('Semua kolom harus diisi.'); location='adminHome.jsp';</script>");
    return;
}

try {
    Connection con = ConnectionProvider.getCon();
    PreparedStatement ps = con.prepareStatement(
        "UPDATE student SET jenjang=?, jurusan=?, nama=?, namaAyah=?, gender=? WHERE nim=?"
    );
    ps.setString(1, jenjang);
    ps.setString(2, jurusan);
    ps.setString(3, nama);
    ps.setString(4, namaAyah);
    ps.setString(5, gender);
    ps.setString(6, nim);

    int rowsUpdated = ps.executeUpdate();
    if (rowsUpdated > 0) {
        response.sendRedirect("adminHome.jsp");
    } else {
        out.println("<script>alert('Data tidak ditemukan.'); location='adminHome.jsp';</script>");
    }
} catch (Exception e) {
    out.println("<script>alert('Terjadi kesalahan: " + e.getMessage() + "'); location='adminHome.jsp';</script>");
}
%>
