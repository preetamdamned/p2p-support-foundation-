<!--Start of offcanvas code-->
<%@page import="p2p.UserBean" %>
<%
    UserBean user;

    if (request.getSession().getAttribute("importedUser") == null) {
        user = new UserBean();
    } else {
        user = (UserBean) session.getAttribute("importedUser");
    }
%>
<div class="sticky">
    <nav class="top-bar hide-for-small" data-topbar role="navigation">
        <ul class="title-area">
            <li class="name">
                <h1><a href="">p2p support</a></h1>
            </li>
            <!-- Remove the class "menu-icon" to get rid of menu icon. Take out "Menu" to just have icon alone -->
            <li class="toggle-topbar menu-icon"><a href="#"><span>Menu</span></a></li>
        </ul>

        <section class="top-bar-section">
            <!-- Right Nav Section -->
            <ul class="right">
                <li class="has-form">
                    <div class="row collapse">
                        <div class="large-8 small-9 columns">
                            <input type="text" placeholder="Find Stuff">
                        </div>
                        <div class="large-4 small-3 columns">
                            <a href="#" class=" button expand">Search</a>
                        </div>
                    </div>
                </li>
                <li class="has-form">
                    <a href="logout.jsp" class="alert button">logout</a>
                </li>
            </ul>

            <!--Left Nav Section--> 
            <ul class="left">
                <!--<li><a href="#">Left Nav Button</a></li>-->
                <li class="has-dropdown">
                    <a href="#">Settings</a>
                    <ul class="dropdown">
                        <li><a href="account.jsp"><%=user.getFname()%></a></li>
                        <li class="active"><a href="#">Edit Profile</a></li>
                    </ul>
                </li>
            </ul>
        </section>
    </nav>
</div>
<div class="off-canvas-wrap docs-wrap" data-offcanvas="">
    <div class="inner-wrap">
        <!--original off-canvas navigation -->
        <nav class="tab-bar show-for-small">
            <section class="left-small">
                <a class="left-off-canvas-toggle menu-icon" aria-expanded="false"><span></span></a>
            </section>

            <section class="middle tab-bar-section">
                <h1 class="title">p2p Support</h1>

            </section>

            <!--      <section class="right-small">
                    <a class="right-off-canvas-toggle menu-icon" aria-expanded="false"><span></span></a>
                  </section>-->
        </nav>
        <!--simple topbar navigation-->


        <aside class="left-off-canvas-menu">
            <ul class="off-canvas-list">
                <li><label>Settings</label></li>
                <li><a href="#"><%
                    out.print(user.getFname());%></a></li>
                <li><a href="#">Edit Profile</a></li>
                <li><a href="logout.jsp">logout</a></li>


            </ul>
        </aside>

        <!--    <aside class="right-off-canvas-menu">
              <ul class="off-canvas-list">
                <li><label>Users</label></li>
              </ul>
            </aside>-->

        <section class="main-section">
            <script>
                $(".main-section").css("background", "rgb(207, 219, 219)");
                $(".main-section").css("color", "#000000");
            </script>
            <!--End of offcanvas code-->