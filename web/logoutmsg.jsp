<%-- 
    Document   : logoutmsg
    Created on : 25 Oct, 2014, 8:49:35 PM
    Author     : preet_000
--%>
<%
//    out.print(""+);
    if (request.getSession().getAttribute("importedUser") != null) {
        response.sendRedirect("");
    }
%>
<jsp:include page="components/head.jsp"></jsp:include>
    <div class="row" style="margin-top: 100px;">
        <div class="large-6 large-centered column text-center radius">
            
            <h1>Holy cow! </h1>
            <div class="row">
                <div class="large-4 large-centered column">
                    <img src="img/cow.png"/>
                </div>
            </div>
            <h3>You are now logged out!</h3>
            <h5>See you soon.</h5>
            <div class="row">
                <div class="large-4 large-centered column">
                    <a role="button" class="button small round" href="login.jsp">Login</a>
                </div>
            </div>
        </div>
    </div>
<jsp:include page="components/foot.jsp"></jsp:include>