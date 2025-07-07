<%@include file="header.html" %>
  <!DOCTYPE html>
  <html>
  <title>STT Wastukancana</title>

  <body>
    <center><img src="LogoStt.png" width="100" height="100"></center> <!-- LOGO KAMPUS (NANTI DIRUBAH)-->
    <div class="w3-container">
      <div class="w3-bar w3-black">
        <button class="w3-bar-item w3-button tablink w3-red" onclick="openCity(event,'London')">Tambahkan Mahasiswa
          Baru</button>
        <button class="w3-bar-item w3-button tablink" onclick="openCity(event,'Paris')">Masukkan Hasil Baru</button>
        <button class="w3-bar-item w3-button tablink" onclick="openCity(event,'Tokyo')">Mahasiswa Terdaftar</button>
        <button class="w3-bar-item w3-button tablink" onclick="openCity(event,'Tokyo1')">Hasil Semua Mahasiswa</button>
        <a href="adminLogin.html" class="w3-bar-item w3-button tablink">Logout</a>
      </div>

      <div id="London" class="w3-container w3-border city">
        <br>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet"
          id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <!------ Include the above in your HEAD tag ---------->

        <!doctype html>
        <html lang="en">

        <head>
          <!-- Required meta tags -->
          <meta charset="utf-8">
          <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

          <!-- Fonts -->
          <link rel="dns-prefetch" href="https://fonts.gstatic.com">
          <link href="https://fonts.googleapis.com/css?family=Raleway:300,400,600" rel="stylesheet" type="text/css">



          <link rel="icon" href="Favicon.png">

          <!-- Bootstrap CSS -->
          <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
        </head>

        <body>
          <main class="my-form">
            <div class="cotainer">
              <div class="row justify-content-center">
                <div class="col-md-8">
                  <div class="card">
                    <div class="card-header">Tambahkan Mahasiswa Baru</div>
                    <div class="card-body">
                      <form name="my-form" onsubmit="return validform()" action="addNewStudent.jsp" method="post">
                        <div class="form-group row">
                          <label for="full_name" class="col-md-4 col-form-label text-md-right">Jenjang</label>
                          <div class="col-md-6">
                            <input type="text" class="form-control" name="jenjang">
                          </div>
                        </div>

                        <div class="form-group row">
                          <label for="email_address" class="col-md-4 col-form-label text-md-right">Jurusan</label>
                          <div class="col-md-6">
                            <input type="text" class="form-control" name="jurusan">
                          </div>
                        </div>

                        <div class="form-group row">
                          <label for="user_name" class="col-md-4 col-form-label text-md-right">NIM</label>
                          <div class="col-md-6">
                            <input type="text" class="form-control" name="nim">
                          </div>
                        </div>

                        <div class="form-group row">
                          <label for="phone_number" class="col-md-4 col-form-label text-md-right">Nama</label>
                          <div class="col-md-6">
                            <input type="text" class="form-control" name="nama">
                          </div>
                        </div>

                        <div class="form-group row">
                          <label for="present_address" class="col-md-4 col-form-label text-md-right">Nama Ayah</label>
                          <div class="col-md-6">
                            <input type="text" class="form-control" name="namaAyah">
                          </div>
                        </div>

                        <div class="form-group row">
                          <label for="permanent_address" class="col-md-4 col-form-label text-md-right">Jenis
                            Kelamin</label>
                          <div class="col-md-6">
                            <input type="text" class="form-control" name="gender">
                          </div>
                        </div>

                        <div class="col-md-6 offset-md-4">
                          <button type="submit" class="btn btn-primary">
                            Simpan
                          </button>
                        </div>
                    </div>
                    </form>
                  </div>
                </div>
              </div>
            </div>
      </div>
      </main>
  </body>
  </div>

  <div id="Paris" class="w3-container w3-border city" style="display:none">
    <br>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <!------ Include the above in your HEAD tag ---------->

    <!doctype html>
    <html lang="en">

    <head>
      <!-- Required meta tags -->
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

      <!-- Fonts -->
      <link rel="dns-prefetch" href="https://fonts.gstatic.com">
      <link href="https://fonts.googleapis.com/css?family=Raleway:300,400,600" rel="stylesheet" type="text/css">



      <link rel="icon" href="Favicon.png">

      <!-- Bootstrap CSS -->
      <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">

    </head>

    <body>



      <main class="my-form">
        <div class="cotainer">
          <div class="row justify-content-center">
            <div class="col-md-8">
              <div class="card">
                <div class="card-header">Masukkan Hasil Baru</div>
                <div class="card-body">
                  <form name="my-form" onsubmit="return validform()" action="insertNewResult.jsp" method="post">
                    <div class="form-group row">
                      <label for="full_name" class="col-md-4 col-form-label text-md-right">NIM</label>
                      <div class="col-md-6">
                        <input type="text" class="form-control" name="nim">
                      </div>
                    </div>

                    <div class="form-group row">
                      <label for="email_address" class="col-md-4 col-form-label text-md-right">Pemrograman Web</label>
                      <div class="col-md-6">
                        <input type="text" class="form-control" name="s1">
                      </div>
                    </div>

                    <div class="form-group row">
                      <label for="user_name" class="col-md-4 col-form-label text-md-right">Statistika</label>
                      <div class="col-md-6">
                        <input type="text" class="form-control" name="s2">
                      </div>
                    </div>

                    <div class="form-group row">
                      <label for="phone_number" class="col-md-4 col-form-label text-md-right">Basis Data</label>
                      <div class="col-md-6">
                        <input type="text" class="form-control" name="s3">
                      </div>
                    </div>

                    <div class="form-group row">
                      <label for="present_address" class="col-md-4 col-form-label text-md-right">Logika
                        Matematika</label>
                      <div class="col-md-6">
                        <input type="text" class="form-control" name="s4">
                      </div>
                    </div>

                    <div class="form-group row">
                      <label for="permanent_address" class="col-md-4 col-form-label text-md-right">Bahasa
                        Inggris</label>
                      <div class="col-md-6">
                        <input type="text" class="form-control" name="s5">
                      </div>
                    </div>

                    <div class="form-group row">
                      <label for="permanent_address"
                        class="col-md-4 col-form-label text-md-right">Kewarganegaraan</label>
                      <div class="col-md-6">
                        <input type="text" class="form-control" name="s6">
                      </div>
                    </div>

                    <div class="form-group row">
                      <label for="permanent_address" class="col-md-4 col-form-label text-md-right">Jaringan
                        Komputer</label>
                      <div class="col-md-6">
                        <input type="text" class="form-control" name="s7">
                      </div>
                    </div>

                    <div class="col-md-6 offset-md-4">
                      <button type="submit" class="btn btn-primary">
                        Simpan
                      </button>
                    </div>
                </div>
                </form>
              </div>
            </div>
          </div>
        </div>
        <br>
  </div>

  </main>

  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
  </body>

  </html>
  </div>

  <div id="Tokyo" class="w3-container w3-border city" style="display:none">

    <section>
      <!--for demo wrap-->
      <div class="tbl-header">
        <table cellpadding="0" cellspacing="0" border="0">
          <thead>
            <tr>
              <th>Jenjang</th>
              <th>Jurusan</th>
              <th>NIM</th>
              <th>Nama</th>
              <th>Nama Ayah</th>
              <th>Jenis Kelamin</th>
            </tr>
          </thead>
        </table>
      </div>
      <div class="tbl-content">
        <table cellpadding="0" cellspacing="0" border="0">
          <tbody>
            <%@page import="java.sql.*" %>
              <%@page import="project.ConnectionProvider" %>
                <% try{ Connection con=ConnectionProvider.getCon(); Statement st=con.createStatement(); ResultSet
                  rs=st.executeQuery("select * from student"); while(rs.next()) { %>
                  <tr>
                    <td>
                      <%=rs.getString(1) %>
                    </td>
                    <td>
                      <%=rs.getString(2) %>
                    </td>
                    <td>
                      <%=rs.getString(3) %>
                    </td>
                    <td>
                      <%=rs.getString(4) %>
                    </td>
                    <td>
                      <%=rs.getString(5) %>
                    </td>
                    <td>
                      <%=rs.getString(6) %>
                    </td>
                  </tr>
          </tbody>
          <% }} catch(Exception e){ } %>
        </table>
      </div>
    </section>
  </div>
  <div id="Tokyo1" class="w3-container w3-border city" style="display:none">

    <section>
      <div class="tbl-header">
        <table cellpadding="0" cellspacing="0" border="0">
          <thead>
            <tr>
              <th>NIM</th>
              <th>Pemrograman Web</th>
              <th>Statistika</th>
              <th>Basis Data</th>
              <th>Logika Matematika</th>
              <th>Bahasa Inggris</th>
              <th>Kewarganegaraan</th>
              <th>Jaringan Komputer</th>
              <th>Aksi</th>
            </tr>
          </thead>
        </table>
      </div>
      <div class="tbl-content">
        <table cellpadding="0" cellspacing="0" border="0">
          <tbody>
            <%@page import="java.sql.*" %>
              <%@page import="project.ConnectionProvider" %>
                <% try{ Connection con=ConnectionProvider.getCon(); Statement st=con.createStatement(); ResultSet
                  rs=st.executeQuery("select * from result"); while(rs.next()){ %>
                  <tr>
                    <td>
                      <%=rs.getString(1) %>
                    </td>
                    <td>
                      <%=rs.getString(2) %>
                    </td>
                    <td>
                      <%=rs.getString(3) %>
                    </td>
                    <td>
                      <%=rs.getString(4) %>
                    </td>
                    <td>
                      <%=rs.getString(5) %>
                    </td>
                    <td>
                      <%=rs.getString(6) %>
                    </td>
                    <td>
                      <%=rs.getString(7) %>
                    </td>
                    <td>
                      <%=rs.getString(8) %>
                    </td>
                    <td>
                      <!-- Tombol Edit -->
                      <button class="btn btn-warning btn-sm" data-toggle="modal"
                        data-target="#editModal<%=rs.getString(1)%>">Edit</button>

                      <!-- Tombol Delete -->
                      <button class="btn btn-danger btn-sm" data-toggle="modal"
                        data-target="#deleteModal<%=rs.getString(1)%>">Delete</button>
                    </td>
                  </tr>
                  <!-- Modal Edit -->
                  <div class="modal fade" id="editModal<%=rs.getString(1)%>" tabindex="-1" role="dialog">
                    <div class="modal-dialog" role="document">
                      <form action="updateResult.jsp" method="post">
                        <div class="modal-content">
                          <div class="modal-header">
                            <h5 class="modal-title">Edit Nilai Mahasiswa</h5>
                            <button type="button" class="close" data-dismiss="modal">
                              <span>&times;</span>
                            </button>
                          </div>
                          <div class="modal-body">
                            <input type="hidden" name="nim" value="<%=rs.getString(1)%>">
                            <% String[] labelMapel={ "Pemrograman Web" , "Statistika" , "Basis Data" , "Logika Matematika" , "Bahasa Inggris"
                              , "Kewarganegaraan" , "Jaringan Komputer" }; for (int i=2; i <=8; i++) { %>
                              <div class="form-group">
                                <label>
                                  <%= labelMapel[i - 2] %>
                                </label>
                                <input type="text" class="form-control" name="s<%= i - 1 %>" value="<%= rs.getString(i) %>">
                              </div>
                              <% } %>
                          </div>
                          <div class="modal-footer">
                            <button type="submit" class="btn btn-primary">Simpan Perubahan</button>
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Batal</button>
                          </div>
                        </div>
                      </form>
                    </div>
                  </div>
                  
                  <!-- Modal Delete -->
                  <div class="modal fade" id="deleteModal<%=rs.getString(1)%>" tabindex="-1" role="dialog">
                    <div class="modal-dialog" role="document">
                      <form action="deleteResult.jsp" method="post">
                        <input type="hidden" name="nim" value="<%=rs.getString(1)%>">
                        <div class="modal-content">
                          <div class="modal-header">
                            <h5 class="modal-title">Hapus Data</h5>
                            <button type="button" class="close" data-dismiss="modal">
                              <span>&times;</span>
                            </button>
                          </div>
                          <div class="modal-body">
                            <p>Apakah kamu yakin ingin menghapus hasil dari NIM <strong>
                                <%=rs.getString(1)%>
                              </strong>?</p>
                          </div>
                          <div class="modal-footer">
                            <button type="submit" class="btn btn-danger">Hapus</button>
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Batal</button>
                          </div>
                        </div>
                      </form>
                    </div>
                  </div>

                  <% }} catch(Exception e){ } %>
          </tbody>
        </table>
      </div>
    </section>

  </div>
  <center>
    <h5>Kelompok-1 PBO 2025</h5>
  </center>
  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>

  </body>

  </html>