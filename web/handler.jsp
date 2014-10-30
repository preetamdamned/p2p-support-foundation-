<%-- 
    Document   : request handler
    Created on : 23 Oct, 2014, 12:37:53 PM
    Author     : Preetam Kumar
    Version    : 1.0
--%>
<%@page import="com.mysql.jdbc.exceptions.MySQLIntegrityConstraintViolationException"%>
<%@page import="p2p.*"%>
<%@page import="p2p.ProfileBean"%>
<%@ page import="java.sql.*" %>
<%@ page import="com.mysql.jdbc.Driver" %>
<%
// mysql driver
//    String driver = "com.mysql.jdbc.Driver";
//
//// the "url" to our DB, the last part is the name of the DB
//    String url = "jdbc:mysql://localhost:3306/p2p_support";
//
//// the default DB username and password may be the same as your control panel login
//    String name = "root";
//    String pass = "toor";
//    //loading driver...
//    Class.forName(driver);
//    // initialize the Connection, with our D.B.info. ...
//    Connection con = null;
//    boolean err_con = false;
//    try {
//        con = DriverManager.getConnection(url, name, pass);
//    } catch (com.mysql.jdbc.exceptions.jdbc4.CommunicationsException comex) {
//        out.print("<div style='background:grey; color:white;padding:100px'><h1 style='background:grey;color:yellow;'>Info:Database Server offline for maintenance.</h1><h3>Contatct the administrator.</h3><br/>Go to <a href='login.jsp'>Sign In</a> page.</div>");
//        err_con = true;
//    } catch (Exception e) {
//        err_con = true;
//        out.print("internal database error occured");
//    }
    Connection con=(Connection)request.getAttribute("dbSocket");
%>
<%--<%@page contentType="text/html" pageEncoding="UTF-8"%>--%>
<jsp:useBean id="UserOb" class="p2p.UserBean" scope="page" /> 
<jsp:setProperty name="UserOb" property="*"/>
<jsp:useBean id="SigninOb" class="p2p.SigninBean" scope="page" />
<jsp:setProperty name="SigninOb" property="*"/>
<%
//    if (!err_con) {
//case 1: New user Sign Up / Registeration handling code.
        if (UserOb.getRequestType().equals("signup")) {
            //out.print("You were trying to signup!");
            boolean err_flag = false;
            Integer err_code = 0;
            try {
                // TBuilding the query string
                String inqry = "INSERT INTO `p2p_support`.`users`"
                        + "(`email`, `fname`, `lname`, `password`)"
                        + "VALUES ('" + UserOb.getEmail().toLowerCase() + "', '" + UserOb.getFname().toLowerCase() + "', '" + UserOb.getLname().toLowerCase() + "', '" + UserOb.getPassword().toLowerCase() + "')";

                //                out.print(inqry);
                Statement stat = con.createStatement();

                //executing insert query....
                stat.execute(inqry);

            } catch (MySQLIntegrityConstraintViolationException dup) {
                err_flag = true;
                err_code = dup.getErrorCode();
                //out.println("<div class=\"alert-error text-center\"> Duplicate Registeration for same email ID! </div>");
            } catch (SQLException sqle) {
                err_flag = true;
                err_code = sqle.getErrorCode();
                //out.println("<p> DB Error Code:</p> <b> " + sqle.getErrorCode() + "</b>");
            }
            if (err_flag) {
                //out.print(err_code);
                response.sendRedirect("register.jsp");
            } else {
                response.sendRedirect("login.jsp");
            }

        }
// Case 2: User Sign In / Login handling    
        if (SigninOb.getRequestType().equals("signin")) {
            boolean err_flag = false;
            Integer err_code = null;
            //out.print("You were trying to signin!");

            ResultSet res = null;
            //createing Statement....
            Statement st = con.createStatement();
            //executing statement and return a resultset.
            //building select SQL statement...
            String comquery = "SELECT user_id,fname,lname,password,email,type FROM p2p_support.users"
                    //                                    + " where email='" + SigninOb.getUsername().toLowerCase() + "' and password='" + SigninOb.getPassword() + "'";
                    + " where email='" + Security.superSanitize(SigninOb.getUsername().toLowerCase()) + "' and password='" + Security.superSanitize(SigninOb.getPassword()) + "'";
//        out.print(comquery);
            UserBean importedUser = new UserBean();
            ProfileBean importedProfile = new ProfileBean();
            try {
                res = st.executeQuery(comquery);

                res.next();

                //our environment variable for imported user data from the data base.
                /**
                 * * for testing perpose out.print("<br/>");
                 * out.print(res.getString("user_id")); out.print("<br/>");
                 * out.print(res.getString("fname")); out.print("<br/>");
                 * out.print(res.getString("lname")); out.print("<br/>");
                 * out.print(res.getString("email")); out.print("<br/>");
                 * out.print(res.getString("password")); *
                 */
                //Importing userdata from data base into environment variable...
                importedUser.setEmail(res.getString("email"));
                importedUser.setFname(res.getString("fname"));
                importedUser.setLname(res.getString("lname"));
                importedUser.setPassword(res.getString("password"));
                importedUser.setUser_id(res.getInt("user_id"));
                importedUser.setUserType(res.getString("type"));

                String subquery = "SELECT * FROM p2p_support.profile where user_id=" + importedUser.getUser_id();
                
                
                res = st.executeQuery(subquery);

                res.next();
                importedProfile.setAbout(res.getString("about"));
                importedProfile.setFlag(res.getBoolean("flag"));
                importedProfile.setOrg(res.getString("org"));
                importedProfile.setPro_pic_map(res.getString("pro_pic_map"));
                importedProfile.setProfession(res.getString("profession"));
                importedProfile.setProfile_id(res.getInt("profile_id"));
                importedProfile.setXp(res.getInt("xp"));

            } catch (SQLException sqle) {
//            out.print("<br/>" + sqle.getLocalizedMessage());
//            out.print("<br/>" + sqle.getErrorCode());
                err_flag = true;
//                out.print(sqle.getLocalizedMessage());
                err_code = sqle.getErrorCode();
            }

            //pushing the imported data object to  the session.
            if (!err_flag) {
                session.setAttribute("importedUser", importedUser);
                session.setAttribute("importedProfile", importedProfile);
                response.sendRedirect("");
            } else {

                response.sendRedirect("login.jsp");
            }
            //if(UserOb.getEmail())
//        }
        //closing connection...
//        con.close();
        //out.print(UserOb.getRequestType());
    }
%>