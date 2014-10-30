<%@page import="p2p.UserBean"%>
<%@page import="p2p.ProfileBean"%>
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
