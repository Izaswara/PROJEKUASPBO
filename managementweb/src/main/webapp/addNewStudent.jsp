<%@page import="java.sql.*"%>
<%@page import="project.ConnectionProvider"%>
<%
    String nim = request.getParameter("nim");
    String nama = request.getParameter("nama");
    String namaAyah = request.getParameter("namaAyah");
    String jurusan = request.getParameter("jurusan");
    String jenjang = request.getParameter("jenjang");
    String gender = request.getParameter("gender");

    try {
        Connection con = ConnectionProvider.getCon();

        // Cek apakah NIM sudah ada
        PreparedStatement check = con.prepareStatement("SELECT * FROM student WHERE nim = ?");
        check.setString(1, nim);
        ResultSet rs = check.executeQuery();

        if (rs.next()) {
            session.setAttribute("error", "NIM sudah terdaftar!");
            response.sendRedirect("adminHome.jsp");
        } else {
            PreparedStatement ps = con.prepareStatement("INSERT INTO student VALUES (?, ?, ?, ?, ?, ?)");
            ps.setString(1, jenjang);
            ps.setString(2, jurusan);
            ps.setString(3, nim);
            ps.setString(4, nama);
            ps.setString(5, namaAyah);
            ps.setString(6, gender);
            ps.executeUpdate();

            session.setAttribute("success", "Mahasiswa berhasil ditambahkan!");
            response.sendRedirect("adminHome.jsp");
        }
    } catch(Exception e) {
        session.setAttribute("error", "Terjadi kesalahan: " + e.getMessage());
        response.sendRedirect("adminHome.jsp");
    }
%>
