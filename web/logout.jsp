
<%
    //if any active sessions
    if (request.getSession().getAttribute("importedUser") != null) {
        request.getSession().setAttribute("importedUser",null);
        response.sendRedirect("logoutmsg.jsp");
    }
    else{
        response.sendRedirect("logoutmsg.jsp");
    }
%>