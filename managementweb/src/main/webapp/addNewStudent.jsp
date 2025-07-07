<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
request.setCharacterEncoding("UTF-8");

String jenjang = request.getParameter("jenjang");
String jurusan = request.getParameter("jurusan");
String nim = request.getParameter("nim");
String nama = request.getParameter("nama");
String namaAyah = request.getParameter("namaAyah");
String gender = request.getParameter("gender");

// Validasi kolom kosong
if (jenjang == null || jenjang.trim().isEmpty() ||
    jurusan == null || jurusan.trim().isEmpty() ||
    nim == null || nim.trim().isEmpty() ||
    nama == null || nama.trim().isEmpty() ||
    namaAyah == null || namaAyah.trim().isEmpty() ||
    gender == null || gender.trim().isEmpty()) {

    out.println("<script>alert('Semua kolom data mahasiswa harus diisi.'); location='adminHome.jsp';</script>");
    return;
}

try {
    Connection con = ConnectionProvider.getCon();
    PreparedStatement ps = con.prepareStatement(
        "INSERT INTO student VALUES (?, ?, ?, ?, ?, ?)"
    );
    ps.setString(1, jenjang);
    ps.setString(2, jurusan);
    ps.setString(3, nim);
    ps.setString(4, nama);
    ps.setString(5, namaAyah);
    ps.setString(6, gender);

    ps.executeUpdate();
    response.sendRedirect("adminHome.jsp");
} catch (Exception e) {
    out.println("<script>alert('Terjadi kesalahan: " + e.getMessage() + "'); location='adminHome.jsp';</script>");
}
%>
