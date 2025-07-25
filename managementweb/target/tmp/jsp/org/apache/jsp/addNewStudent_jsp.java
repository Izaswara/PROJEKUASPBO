/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: jetty/9.4.44.v20210927
 * Generated at: 2025-07-09 14:01:32 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import project.ConnectionProvider;

public final class addNewStudent_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("java.sql");
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = new java.util.HashSet<>();
    _jspx_imports_classes.add("project.ConnectionProvider");
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    final java.lang.String _jspx_method = request.getMethod();
    if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method) && !javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET, POST or HEAD. Jasper also permits OPTIONS");
      return;
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");

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

      out.write('\r');
      out.write('\n');
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
