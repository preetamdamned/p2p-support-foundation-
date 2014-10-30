<%@page import="p2p.UserBean"%>
<%@page import="p2p.ProfileBean"%>
<%@page import="com.mysql.jdbc.exceptions.MySQLIntegrityConstraintViolationException"%>
<%@page import="p2p.*"%>
<%@ page import="java.sql.*" %>
<%@ page import="com.mysql.jdbc.Driver" %>
<%
// mysql driver
    String driver = "com.mysql.jdbc.Driver";

// the "url" to our DB, the last part is the name of the DB
    String url = "jdbc:mysql://localhost:3306/p2p_support";

// the default DB username and password may be the same as your control panel login
    String name = "root";
    String pass = "toor";
    //loading driver...
    Class.forName(driver);
    // initialize the Connection, with our D.B.info. ...
    Connection con = null;
    boolean err_con = false;
    try {
        con = DriverManager.getConnection(url, name, pass);
    } catch (com.mysql.jdbc.exceptions.jdbc4.CommunicationsException comex) {
        out.print("<div style='background:grey; color:white;padding:100px'><h1 style='background:grey;color:yellow;'>Info:Database Server offline for maintenance.</h1><h3>Contatct the administrator.</h3><br/>Go to <a href='login.jsp'>Sign In</a> page.</div>");
        err_con = true;
    } catch (Exception e) {
        err_con = true;
        out.print("internal database error occured");
    }
%>
<%
//    out.print(""+);
    UserBean user;
    ProfileBean profile;
    if (request.getSession().getAttribute("importedUser") == null) {
        response.sendRedirect("login.jsp");
        user = new UserBean();
        profile = new ProfileBean();
    } else {
        user = (UserBean) session.getAttribute("importedUser");
        profile = (ProfileBean) session.getAttribute("importedProfile");
    }

//    out.print(request.getSession().getAttribute("importedUser"));
%>
<jsp:include page="components/head.jsp"></jsp:include>
<jsp:include page="components/offcanvasHead.jsp"></jsp:include>
<jsp:include page="components/submenu.jsp"></jsp:include>
<%--<jsp:include page="components/navbar.jsp"></jsp:include>--%>
<script>
//    $("body").css("background", "black");
    $("title").html("<%= user.getFname()%>'s account");
</script>
<link rel="stylesheet" href="css/mod.css">
<div class="user-info">
    <div class="row">
        <div class="large-12">
            <div class="avatar">
                <img alt="profile" src="img/default_user.jpg"/>
            </div>
        </div>
        <div class="large-12 text-center user-info-row-4">
            <h3 class="user-title"><%=user.getFname() + " " + user.getLname()%></h3>
        </div>
        <div class="large-12 text-center user-info-row">
            <p><%=user.getEmail()%></p>
        </div>
        <div class="large-12 text-center user-info-row">
            <p class=""><strong><%=user.getUserType()%></strong></p>
        </div>
        <div class="large-6 large-offset-3 text-center user-info-row">
            <!--<div class="row">-->

            <div class="progress small round " id="userxp">
                <span class="meter smooth" style="width: 50%"></span>
            </div>
            <script>
                $("#userxp span").css("width", "<%=profile.getXp() + "%"%>");
            </script>
        </div>

    </div>
</div>


<jsp:include page="components/offCanvasfoot.jsp"></jsp:include>
<jsp:include page="components/foot.jsp"></jsp:include>