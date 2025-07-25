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
          <!-- <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"> -->
          <!-- Bootstrap 5.3.3 CSS -->
          <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
            integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

          <!-- Bootstrap 5.3.3 JavaScript (Popper + Bootstrap) -->
          <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-y6pD6K6E6bdI0aFhWdj8fNNkStz+OQKQHrwB7lihs3VJk74zZKtOImvJoJPuU7FZ"
            crossorigin="anonymous"></script>
        </head>

        <body>
          <main class="my-form">
            <div class="cotainer">
              <div class="row justify-content-center">
                <div class="col-md-8">
                  <div class="card">
                    <div class="card-header">Tambahkan Mahasiswa Baru</div>
                    <div class="card-body">
                      <% String error=(String) session.getAttribute("error"); if (error !=null) {
                        session.removeAttribute("error"); %>
                        <div class="alert alert-danger alert-dismissible fade show" role="alert" id="errorAlert">
                          <%= error %>
                            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                              <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <% } %>
                          <% String success=(String) session.getAttribute("success"); if (success !=null) {
                            session.removeAttribute("success"); %>
                            <div class="alert alert-success alert-dismissible fade show" role="alert" id="successAlert">
                              <%= success %>
                                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                  <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <% } %>
                              <form name="my-form" action="addNewStudent.jsp" method="post">
                                <!-- Jenjang Dropdown -->
                                <div class="form-group row">
                                  <label for="jenjang" class="col-md-4 col-form-label text-md-right">Jenjang</label>
                                  <div class="col-md-6">
                                    <select class="form-control" name="jenjang" required>
                                      <option value="">-- Pilih Jenjang --</option>
                                      <option value="S1">S1</option>
                                      <option value="S2">S2</option>
                                      <option value="S3">S3</option>
                                    </select>
                                  </div>
                                </div>

                                <!-- Jurusan Dropdown -->
                                <div class="form-group row">
                                  <label for="jurusan" class="col-md-4 col-form-label text-md-right">Jurusan</label>
                                  <div class="col-md-6">
                                    <select class="form-control" name="jurusan" required>
                                      <option value="">-- Pilih Jurusan --</option>
                                      <option value="Teknik Informatika">Teknik Informatika</option>
                                      <option value="Teknik Mesin">Teknik Mesin</option>
                                      <option value="Teknik Industri">Teknik Industri</option>
                                      <option value="Teknik Sipil">Teknik Sipil</option>
                                      <option value="Teknik Elektro">Teknik Elektro</option>
                                      <option value="Manajemen">Manajemen</option>
                                      <option value="Ekonomi">Ekonomi</option>
                                      <option value="Akuntansi">Akuntansi</option>
                                    </select>
                                  </div>
                                </div>

                                <!-- NIM -->
                                <div class="form-group row">
                                  <label class="col-md-4 col-form-label text-md-right">NIM</label>
                                  <div class="col-md-6">
                                    <input type="text" class="form-control" name="nim" id="nim" required>
                                  </div>
                                </div>

                                <!-- Nama -->
                                <div class="form-group row">
                                  <label class="col-md-4 col-form-label text-md-right">Nama</label>
                                  <div class="col-md-6">
                                    <input type="text" class="form-control" name="nama" id="nama" required>
                                  </div>
                                </div>
                                <!-- Nama Ayah -->
                                <div class="form-group row">
                                  <label class="col-md-4 col-form-label text-md-right">Nama Ayah</label>
                                  <div class="col-md-6">
                                    <input type="text" class="form-control" name="namaAyah" id="namaAyah" required>
                                  </div>
                                </div>
                                <!-- Jenis Kelamin Dropdown -->
                                <div class="form-group row">
                                  <label for="gender" class="col-md-4 col-form-label text-md-right">Jenis
                                    Kelamin</label>
                                  <div class="col-md-6">
                                    <select class="form-control" name="gender" required>
                                      <option value="">-- Pilih Jenis Kelamin --</option>
                                      <option value="Laki-Laki">Laki-Laki</option>
                                      <option value="Perempuan">Perempuan</option>
                                    </select>
                                  </div>
                                </div>
                                <div class="col-md-6 offset-md-4 mt-3">
                                  <button type="submit" class="btn btn-primary">Simpan</button>
                                </div>
                              </form>
                              <script>
                                // Menghilangkan alert error dan success setelah 4 detik
                                window.onload = function () {
                                  const errorAlert = document.getElementById("errorAlert");
                                  const successAlert = document.getElementById("successAlert");

                                  if (errorAlert) {
                                    setTimeout(() => {
                                      errorAlert.style.display = 'none';
                                    }, 4000);
                                  }

                                  if (successAlert) {
                                    setTimeout(() => {
                                      successAlert.style.display = 'none';
                                    }, 4000);
                                  }
                                };
                              </script>
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
                          <label for="email_address" class="col-md-4 col-form-label text-md-right">Pemrograman
                            Web</label>
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
    <section class="mt-4">
      <div class="container">
        <h5 class="mb-3">Daftar Mahasiswa</h5>
        <div class="table-responsive">
          <table class="table table-striped table-bordered">
            <thead class="thead-dark text-center">
              <tr>
                <th>Jenjang</th>
                <th>Jurusan</th>
                <th>NIM</th>
                <th>Nama</th>
                <th>Nama Ayah</th>
                <th>Jenis Kelamin</th>
                <th>Aksi</th>
              </tr>
            </thead>
            <tbody>
              <%@page import="java.sql.*" %>
                <%@page import="project.ConnectionProvider" %>
                  <% try { Connection con=ConnectionProvider.getCon(); Statement st=con.createStatement(); ResultSet
                    rs=st.executeQuery("select * from student"); while(rs.next()) { %>
                    <tr>
                      <td>
                        <%=rs.getString(1)%>
                      </td>
                      <td>
                        <%=rs.getString(2)%>
                      </td>
                      <td>
                        <%=rs.getString(3)%>
                      </td>
                      <td>
                        <%=rs.getString(4)%>
                      </td>
                      <td>
                        <%=rs.getString(5)%>
                      </td>
                      <td>
                        <%=rs.getString(6)%>
                      </td>
                      <td>
                        <button class="btn btn-warning btn-sm" data-toggle="modal"
                          data-target="#editStudentModal<%=rs.getString(3)%>">Edit</button>
                        <button class="btn btn-danger btn-sm" data-toggle="modal"
                          data-target="#deleteStudentModal<%=rs.getString(3)%>">Hapus</button>
                      </td>
                    </tr>

                    <!-- Modal Edit Mahasiswa -->
                    <div class="modal fade" id="editStudentModal<%=rs.getString(3)%>" tabindex="-1" role="dialog">
                      <div class="modal-dialog" role="document">
                        <form action="updateStudent.jsp" method="post">
                          <div class="modal-content">
                            <div class="modal-header">
                              <h5 class="modal-title">Edit Data Mahasiswa</h5>
                              <button type="button" class="close" data-dismiss="modal">
                                <span>&times;</span>
                              </button>
                            </div>
                            <div class="modal-body">
                              <input type="hidden" name="nim" value="<%=rs.getString(3)%>">
                              <div class="form-group">
                                <label>Jenjang</label>
                                <input type="text" class="form-control" name="jenjang" value="<%=rs.getString(1)%>">
                              </div>
                              <div class="form-group">
                                <label>Jurusan</label>
                                <input type="text" class="form-control" name="jurusan" value="<%=rs.getString(2)%>">
                              </div>
                              <div class="form-group">
                                <label>Nama</label>
                                <input type="text" class="form-control" name="nama" value="<%=rs.getString(4)%>">
                              </div>
                              <div class="form-group">
                                <label>Nama Ayah</label>
                                <input type="text" class="form-control" name="namaAyah" value="<%=rs.getString(5)%>">
                              </div>
                              <div class="form-group">
                                <label>Jenis Kelamin</label>
                                <input type="text" class="form-control" name="gender" value="<%=rs.getString(6)%>">
                              </div>
                            </div>
                            <div class="modal-footer">
                              <button type="submit" class="btn btn-primary">Simpan Perubahan</button>
                              <button type="button" class="btn btn-secondary" data-dismiss="modal">Batal</button>
                            </div>
                          </div>
                        </form>
                      </div>
                    </div>

                    <!-- Modal Delete Mahasiswa -->
                    <div class="modal fade" id="deleteStudentModal<%=rs.getString(3)%>" tabindex="-1" role="dialog">
                      <div class="modal-dialog" role="document">
                        <form action="deleteStudent.jsp" method="post">
                          <input type="hidden" name="nim" value="<%=rs.getString(3)%>">
                          <div class="modal-content">
                            <div class="modal-header">
                              <h5 class="modal-title">Hapus Data</h5>
                              <button type="button" class="close" data-dismiss="modal">
                                <span>&times;</span>
                              </button>
                            </div>
                            <div class="modal-body">
                              <p>Apakah kamu yakin ingin menghapus data mahasiswa dengan NIM <strong>
                                  <%=rs.getString(3)%>
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

                    <% }} catch(Exception e) { out.println(e); } %>
            </tbody>
          </table>
        </div>
      </div>
    </section>
  </div>

  <div id="Tokyo1" class="w3-container w3-border city" style="display:none">
    <section class="mt-4">
      <div class="container">
        <h5 class="mb-3">Hasil Semua Mahasiswa</h5>
        <div class="table-responsive">
          <table class="table table-striped table-bordered">
            <thead class="thead-dark text-center">
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
            <tbody>
              <%@page import="java.sql.*" %>
                <%@page import="project.ConnectionProvider" %>
                  <% try { Connection con=ConnectionProvider.getCon(); Statement st=con.createStatement(); ResultSet
                    rs=st.executeQuery("select * from result"); while(rs.next()) { %>
                    <tr>
                      <td>
                        <%=rs.getString(1)%>
                      </td>
                      <td>
                        <%=rs.getString(2)%>
                      </td>
                      <td>
                        <%=rs.getString(3)%>
                      </td>
                      <td>
                        <%=rs.getString(4)%>
                      </td>
                      <td>
                        <%=rs.getString(5)%>
                      </td>
                      <td>
                        <%=rs.getString(6)%>
                      </td>
                      <td>
                        <%=rs.getString(7)%>
                      </td>
                      <td>
                        <%=rs.getString(8)%>
                      </td>
                      <td>
                        <button class="btn btn-warning btn-sm" data-toggle="modal"
                          data-target="#editModal<%=rs.getString(1)%>">Edit</button>
                        <button class="btn btn-danger btn-sm" data-toggle="modal"
                          data-target="#deleteModal<%=rs.getString(1)%>">Hapus</button>
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
                              <% String[] labelMapel={ "Pemrograman Web" , "Statistika" , "Basis Data"
                                , "Logika Matematika" , "Bahasa Inggris" , "Kewarganegaraan" , "Jaringan Komputer" };
                                for (int i=2; i <=8; i++) { %>
                                <div class="form-group">
                                  <label>
                                    <%= labelMapel[i - 2] %>
                                  </label>
                                  <input type="text" class="form-control" name="s<%= i - 1 %>"
                                    value="<%= rs.getString(i) %>">
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
                    <% }} catch(Exception e) { out.println(e); } %>
            </tbody>
          </table>
        </div>
      </div>
    </section>
  </div>



  <center>
    <h5>Kelompok-1 PBO 2025</h5>
  </center>
  <!-- <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script> -->
  <!-- jQuery (opsional, hanya jika dibutuhkan) -->
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>

  </body>

  </html>