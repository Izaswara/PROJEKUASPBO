<%@ page import="java.sql.*, project.ConnectionProvider" %>
<%@ page session="true" %>
<%
request.setCharacterEncoding("UTF-8");

String jenjang = request.getParameter("jenjang");
String jurusan = request.getParameter("jurusan");
String nim = request.getParameter("nim");
String nama = request.getParameter("nama");
String namaAyah = request.getParameter("namaAyah");
String gender = request.getParameter("gender");

// Validasi input kosong
if (jenjang == null || jurusan == null || nim == null || nama == null || namaAyah == null || gender == null ||
    jenjang.isEmpty() || jurusan.isEmpty() || nim.isEmpty() || nama.isEmpty() || namaAyah.isEmpty() || gender.isEmpty()) {
    session.setAttribute("error", "Semua field harus diisi.");
    response.sendRedirect("adminHome.jsp");
    return;
}

// Validasi format NIM: hanya angka
if (!nim.matches("\\d+")) {
    session.setAttribute("error", "NIM harus berupa angka.");
    response.sendRedirect("adminHome.jsp");
    return;
}

// Validasi format Nama dan Nama Ayah: hanya huruf dan spasi
if (!nama.matches("[a-zA-Z\\s]+")) {
    session.setAttribute("error", "Nama hanya boleh huruf dan spasi.");
    response.sendRedirect("adminHome.jsp");
    return;
}

if (!namaAyah.matches("[a-zA-Z\\s]+")) {
    session.setAttribute("error", "Nama Ayah hanya boleh huruf dan spasi.");
    response.sendRedirect("adminHome.jsp");
    return;
}

Connection con = null;
try {
    con = ConnectionProvider.getCon();

    // Cek apakah NIM sudah ada
    PreparedStatement psCheck = con.prepareStatement("SELECT nim FROM student WHERE nim = ?");
    psCheck.setString(1, nim);
    ResultSet rs = psCheck.executeQuery();

    if (rs.next()) {
        session.setAttribute("error", "NIM sudah terdaftar.");
        response.sendRedirect("adminHome.jsp");
        return;
    }

    // Simpan data jika valid dan NIM belum ada
    PreparedStatement ps = con.prepareStatement("INSERT INTO student VALUES (?, ?, ?, ?, ?, ?)");
    ps.setString(1, jenjang);
    ps.setString(2, jurusan);
    ps.setString(3, nim);
    ps.setString(4, nama);
    ps.setString(5, namaAyah);
    ps.setString(6, gender);
    ps.executeUpdate();

    session.setAttribute("success", "Data mahasiswa berhasil disimpan.");
    response.sendRedirect("adminHome.jsp");
} catch (Exception e) {
    e.printStackTrace();
    session.setAttribute("error", "Terjadi kesalahan: " + e.getMessage());
    response.sendRedirect("adminHome.jsp");
}
%>
