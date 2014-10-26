<jsp:include page="components/head.jsp"></jsp:include>
    <!--Start of offcanvas code-->
    <nav class="top-bar hide-for-small-only" data-topbar role="navigation">
                <ul class="title-area">
                    <li class="name">
                        <h1><a href="#">My Site</a></h1>
                    </li>
                    <!-- Remove the class "menu-icon" to get rid of menu icon. Take out "Menu" to just have icon alone -->
                    <li class="toggle-topbar menu-icon"><a href="#"><span>Menu</span></a></li>
                </ul>

                <section class="top-bar-section">
                    <!-- Right Nav Section -->
                    <ul class="right">
                        <li class="active"><a href="#">Right Button Active</a></li>
                        <li class="has-dropdown">
                            <a href="#">Right Button Dropdown</a>
                            <ul class="dropdown">
                                <li><a href="#">First link in dropdown</a></li>
                                <li class="active"><a href="#">Active link in dropdown</a></li>
                            </ul>
                        </li>
                    </ul>

                    <!-- Left Nav Section -->
                    <ul class="left">
                        <li><a href="#">Left Nav Button</a></li>
                    </ul>
                </section>
            </nav>
    <div class="off-canvas-wrap" data-offcanvas>
        <div class="inner-wrap">
            
            <nav class="tab-bar  show-for-small-only">
                <section class="left-small">
                    <a class="left-off-canvas-toggle menu-icon" href="#"><span></span></a>
                </section>

                <section class="middle tab-bar-section">
                    <h1 class="title">Foundation</h1>
                </section>

                <section class="right-small">
                    <a class="right-off-canvas-toggle menu-icon" href="#"><span></span></a>
                </section>
            </nav>

            <aside class="left-off-canvas-menu">
                <ul class="off-canvas-list">
                    <li><label>Foundation</label></li>
                    <li><a href="#">The Psychohistorians</a></li>
                    <li><a href="#">...</a></li>
                </ul>
            </aside>

            <aside class="right-off-canvas-menu">
                <ul class="off-canvas-list">
                    <li><label>Users</label></li>
                    <li><a href="#">Hari Seldon</a></li>
                    <li><a href="#">...</a></li>
                </ul>
            </aside>

            <section class="main-section">
                <!-- content goes here -->
            </section>

            <a class="exit-off-canvas"></a>

        </div>
    </div>
    <!--//end of offcanvas code-->
<jsp:include page="components/foot.jsp"></jsp:include>