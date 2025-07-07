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

// Validasi form kosong
if (jenjang == null || jurusan == null || nim == null || nama == null || namaAyah == null || gender == null ||
    jenjang.trim().isEmpty() || jurusan.trim().isEmpty() || nim.trim().isEmpty() ||
    nama.trim().isEmpty() || namaAyah.trim().isEmpty() || gender.trim().isEmpty()) {
  response.sendRedirect("adminHome.jsp?error=Semua kolom harus diisi!");
  return;
}

// Validasi angka untuk NIM
if (!nim.matches("\\d+")) {
  response.sendRedirect("adminHome.jsp?error=NIM harus berupa angka!");
  return;
}

// Validasi huruf untuk nama dan nama ayah
if (!nama.matches("[a-zA-Z\\s]+")) {
  response.sendRedirect("adminHome.jsp?error=Nama hanya boleh huruf!");
  return;
}
if (!namaAyah.matches("[a-zA-Z\\s]+")) {
  response.sendRedirect("adminHome.jsp?error=Nama Ayah hanya boleh huruf!");
  return;
}

try {
  Connection con = ConnectionProvider.getCon();

  // Cek apakah NIM sudah ada
  PreparedStatement check = con.prepareStatement("SELECT nim FROM student WHERE nim = ?");
  check.setString(1, nim);
  ResultSet rs = check.executeQuery();
  if (rs.next()) {
    response.sendRedirect("adminHome.jsp?error=NIM sudah terdaftar sebelumnya!");
    return;
  }

  // Simpan ke database
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
  out.println("Error: " + e.getMessage());
}
%>
