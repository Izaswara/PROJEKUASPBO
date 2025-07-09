<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
try {
  String nim = request.getParameter("nim");
  Connection con = ConnectionProvider.getCon();
  Statement st = con.createStatement();
  ResultSet rs = st.executeQuery("SELECT * FROM student INNER JOIN result ON student.nim = result.nim WHERE student.nim='" + nim + "'");
  if(rs.next()) {
%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Laporan Belajar</title>
  <!-- Bootstrap CDN -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body class="bg-light">

<div class="container my-5">
  <a href="DgiiOneView.html" class="btn btn-secondary mb-4">Kembali</a>

  <div class="card mb-4">
    <div class="card-header bg-primary text-white">
      <h4 class="mb-0">Informasi Mahasiswa</h4>
    </div>
    <div class="card-body">
      <div class="row mb-3">
        <div class="col-md-4"><strong>Nama Institusi:</strong> Science & Tech Academy</div>
        <div class="col-md-4"><strong>NIM:</strong> <%= rs.getString("nim") %></div>
      </div>
      <div class="row mb-3">
        <div class="col-md-4"><strong>Jenjang:</strong> <%= rs.getString("jenjang") %></div>
        <div class="col-md-4"><strong>Jurusan:</strong> <%= rs.getString("jurusan") %></div>
        <div class="col-md-4 text-end">
          <a onclick="window.print();" style="cursor:pointer;" class="btn btn-outline-primary">Print Hasil</a>
        </div>
      </div>
      <div class="row">
        <div class="col-md-4"><strong>Nama:</strong> <%= rs.getString("nama") %></div>
        <div class="col-md-4"><strong>Nama Ayah:</strong> <%= rs.getString("namaAyah") %></div>
        <div class="col-md-4"><strong>Jenis Kelamin:</strong> <%= rs.getString("gender") %></div>
      </div>
    </div>
  </div>

  <div class="table-responsive">
    <table class="table table-bordered table-striped align-middle">
      <thead class="table-dark text-center">
        <tr>
          <th colspan="3">Jenjang</th>
          <th rowspan="2">Tipe</th>
          <th rowspan="2">Nilai Full</th>
          <th rowspan="2">KKM</th>
          <th rowspan="2">Nilai</th>
        </tr>
        <tr>
          <th>Kode</th>
          <th colspan="2">Nama</th>
        </tr>
      </thead>
      <tbody class="text-center">
        <tr>
          <td>FI02</td><td colspan="2">Fisika</td><td>Teori</td><td>100</td><td>75</td><td><%= rs.getString(8) %></td>
        </tr>
        <tr>
          <td>KM01</td><td colspan="2">Kimia</td><td>Teori</td><td>100</td><td>75</td><td><%= rs.getString(9) %></td>
        </tr>
        <tr>
          <td>MA101</td><td colspan="2">Matematika</td><td>Teori</td><td>100</td><td>75</td><td><%= rs.getString(10) %></td>
        </tr>
        <tr>
          <td>AL02</td><td colspan="2">Pemrograman</td><td>Praktek</td><td>100</td><td>75</td><td><%= rs.getString(11) %></td>
        </tr>
        <tr>
          <td>IN01</td><td colspan="2">B.Indonesia</td><td>Teori</td><td>100</td><td>75</td><td><%= rs.getString(12) %></td>
        </tr>
        <tr>
          <td>EN01</td><td colspan="2">B.Inggris</td><td>Teori</td><td>100</td><td>75</td><td><%= rs.getString(13) %></td>
        </tr>
        <tr>
          <td>AL01</td><td colspan="2">Algoritma</td><td>Praktek</td><td>100</td><td>75</td><td><%= rs.getString(14) %></td>
        </tr>
      </tbody>
      <tfoot class="fw-bold text-end">
        <tr>
          <td colspan="6">Total Nilai</td>
          <td class="text-center">
            <%
              int sum = rs.getInt(8) + rs.getInt(9) + rs.getInt(10) + rs.getInt(11) + rs.getInt(12) + rs.getInt(13) + rs.getInt(14);
              out.print(sum);
            %>
          </td>
        </tr>
        <tr>
          <td colspan="6">Persentase</td>
          <td class="text-center"><%= (sum * 100 / 560) %> %</td>
        </tr>
      </tfoot>
    </table>
  </div>
</div>
</body>
</html>

<%
  } else {
    response.sendRedirect("errorDgiOneView.html");
  }
} catch(Exception e) {
  out.println("<div class='alert alert-danger'>Terjadi error: " + e.getMessage() + "</div>");
}
%>
