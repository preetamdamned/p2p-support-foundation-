<%@page import="com.mysql.jdbc.exceptions.MySQLIntegrityConstraintViolationException"%>
<%@page import="p2p.*"%>
<%@ page import="java.sql.*" %>
<%@ page import="com.mysql.jdbc.Driver" %>
<%!
// mysql driver
    String driver = "com.mysql.jdbc.Driver";

// the "url" to our DB, the last part is the name of the DB
    String url = "jdbc:mysql://localhost:3306/p2p_support";

// the default DB username and password may be the same as your control panel login
    String name = "root";
    String pass = "toor";
%>
<%--<%@page contentType="text/html" pageEncoding="UTF-8"%>--%>
<jsp:useBean id="UserOb" class="p2p.UserBean" scope="page" /> 
<jsp:setProperty name="UserOb" property="*"/>
<jsp:useBean id="SigninOb" class="p2p.SigninBean" scope="page" />
<jsp:setProperty name="SigninOb" property="*"/>
<%
    //loading driver...
    Class.forName(driver);
    // initialize the Connection, with our D.B.info. ...
    Connection con = DriverManager.getConnection(url, name, pass);
%>