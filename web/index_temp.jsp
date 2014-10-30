
<%@page import="p2p.UserBean"%>
<%
//    out.print(""+);
    UserBean user;
    if (request.getSession().getAttribute("importedUser") == null) {
        response.sendRedirect("login.jsp");
        user = new UserBean();//fixes exception
    } else {
        user = (UserBean) session.getAttribute("importedUser");
    }
%>
<jsp:include page="components/head.jsp"></jsp:include>
<jsp:include page="components/offcanvasHead.jsp"></jsp:include>
<%--<jsp:include page="components/navbar.jsp"></jsp:include>--%>

<jsp:include page="components/offCanvasfoot.jsp"></jsp:include>
<jsp:include page="components/foot.jsp"></jsp:include>