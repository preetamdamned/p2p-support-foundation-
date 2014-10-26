
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
<script>
    $("body").css("background", "black");
</script>
<div class="row">
    <div class="large-12 column hide-for-small">
        <br/>
        <br/>
        <!--<h2>We were expecting you. Welcome aboard.<h2>-->
        <br/>

    </div>
</div>
<div class="row">
    <div class="large-3 columns ">
        <div class="panel">
            <a href="#"><img src="./Foundation Template   Feed_files/300x240&text=[img].bmp"></a>
            <h5><a href="#"><%=user.getFname()%></a></h5>
            <div class="section-container vertical-nav" data-section="" data-options="deep_linking: false; one_up: true">
                <section class="section">
                    <h5 class="title"><a href="#">Section 1</a></h5>
                </section>
                <section class="section">
                    <h5 class="title"><a href="#">Section 2</a></h5>
                </section>
                <section class="section">
                    <h5 class="title"><a href="#">Section 3</a></h5>
                </section>
                <section class="section">
                    <h5 class="title"><a href="#">Section 4</a></h5>
                </section>
                <section class="section">
                    <h5 class="title"><a href="#">Section 5</a></h5>
                </section>
                <section class="section">
                    <h5 class="title"><a href="#">Section 6</a></h5>
                </section>
            </div>
        </div>
    </div>
    <div class="large-6 columns">
        <div class="row">
            <div class="large-2 columns small-3"><img src="./Foundation Template   Feed_files/80x80&text=[img].bmp"></div>
            <div class="large-10 columns">
                <p><strong>Some Person said:</strong> Bacon ipsum dolor sit amet nulla ham qui sint exercitation eiusmod commodo, chuck duis velit. Aute in reprehenderit, dolore aliqua non est magna in labore pig pork biltong.</p>
                <ul class="inline-list">
                    <li><a href="">Reply</a></li>
                    <li><a href="">Share</a></li>
                </ul>
                <h6>2 Comments</h6>
                <div class="row">
                    <div class="large-2 columns small-3"><img src="./Foundation Template   Feed_files/50x50&text=[img].bmp"></div>
                    <div class="large-10 columns"><p>Bacon ipsum dolor sit amet nulla ham qui sint exercitation eiusmod commodo, chuck duis velit. Aute in reprehenderit</p></div>
                </div>
                <div class="row">
                    <div class="large-2 columns small-3"><img src="./Foundation Template   Feed_files/50x50&text=[img].bmp"></div>
                    <div class="large-10 columns"><p>Bacon ipsum dolor sit amet nulla ham qui sint exercitation eiusmod commodo, chuck duis velit. Aute in reprehenderit</p></div>
                </div>
            </div>
        </div>
        <hr>
        <div class="row">
            <div class="large-2 columns small-3"><img src="./Foundation Template   Feed_files/80x80&text=[img].bmp"></div>
            <div class="large-10 columns">
                <p><strong>Some Person said:</strong> Bacon ipsum dolor sit amet nulla ham qui sint exercitation eiusmod commodo, chuck duis velit. Aute in reprehenderit, dolore aliqua non est magna in labore pig pork biltong.</p>
                <ul class="inline-list">
                    <li><a href="">Reply</a></li>
                    <li><a href="">Share</a></li>
                </ul>
            </div>
        </div>
        <hr>
        <div class="row">
            <div class="large-2 columns small-3"><img src="./Foundation Template   Feed_files/80x80&text=[img].bmp"></div>
            <div class="large-10 columns">
                <p><strong>Some Person said:</strong> Bacon ipsum dolor sit amet nulla ham qui sint exercitation eiusmod commodo, chuck duis velit. Aute in reprehenderit, dolore aliqua non est magna in labore pig pork biltong.</p>
                <ul class="inline-list">
                    <li><a href="">Reply</a></li>
                    <li><a href="">Share</a></li>
                </ul>
                <h6>2 Comments</h6>
                <div class="row">
                    <div class="large-2 columns small-3"><img src="./Foundation Template   Feed_files/50x50&text=[img].bmp"></div>
                    <div class="large-10 columns"><p>Bacon ipsum dolor sit amet nulla ham qui sint exercitation eiusmod commodo, chuck duis velit. Aute in reprehenderit</p></div>
                </div>
            </div>
        </div>
    </div>
    <aside class="large-3 columns hide-for-small">
        <p><img src="./Foundation Template   Feed_files/300x440&text=[ad].bmp"></p>
        <p><img src="./Foundation Template   Feed_files/300x440&text=[ad].bmp"></p>
    </aside>
</div>
<jsp:include page="components/offCanvasfoot.jsp"></jsp:include>
<jsp:include page="components/foot.jsp"></jsp:include>