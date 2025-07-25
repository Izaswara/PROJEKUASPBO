/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: jetty/9.4.44.v20210927
 * Generated at: 2025-07-09 14:02:22 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import project.ConnectionProvider;
import java.sql.*;

public final class insertNewResult_jsp extends org.apache.jasper.runtime.HttpJspBase
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
