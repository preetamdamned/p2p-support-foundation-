<%
//    out.print(""+);
    if (request.getSession().getAttribute("importedUser") != null) {
        response.sendRedirect("");
    }
%>
<!doctype html>
<html class="no-js" lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>p2p support signin</title>
        <link rel="stylesheet" href="css/foundation.css" />
        <link rel="stylesheet" href="css/cus.css" />
        <link rel="stylesheet" href="css/mod.css" />
        <script src="js/vendor/modernizr.js"></script>
        
    </head>
    <body>
        <div class="contained">
            <div class="row">
                <div class="large-12 hidden-for-medium hidden-for-small column smooth">
                    <br/>
                    <br/>
                    <br/>
                    <br/>
                    <br/>
                </div>
            </div>
            <div class="row">
                <div id="reg_form" class="large-6 columns hi smooth">
                    <div class="row form-head">
                        <h5 class="large-12 smooth large-centered medium-centered text-center small-centered">
                            Sign in Right here...
                        </h5>
                    </div>
                    <form name="reg_form" name="loginform" method="post" action="handler.jsp">

                        <div class="row">
                            <div class="large-12 smooth columns">
                                <label>Username
                                    <input type="text" name="username"  placeholder="usrname or email" required=""/>
                                </label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="large-12 medium-12 smooth column">
                                <label>Password
                                    <input type="password" required="" name="password"  placeholder="password"/>
                                    <input type="hidden" name="requestType"  value="signin"/>
                                </label>
                            </div>
                        </div>
                        <div class="row form-action">
                            <button role="button" type="submit" class="button large-5 columns radius">Sign In</button>
                            <button role="button" type="reset" class="button large-5 large-offset-1 columns radius">Reset</button>

                        </div>
                    </form>
                </div>
                <div class="large-5 columns">
                    <div class="row">
                        <div class="large-12 columns small-text-center smooth large-text-left ">
                            <h1>
                                Welcome back!
                            </h1>
                            <p>
                                Add more to Awesomeness.
                                <br/>
                                We share support and stuffs here.
                                <br/>
                                Get Solutions.Give solutions.Share Solutions.
                                <br/>
                            </p>
                            <h3>
                                Enjoy the joy of sharing troubleshoots.  
                            </h3>
                            <h4><a href="register.jsp">Register</a> if new to p2p support.</h4>

                        </div>
                    </div>
                    <button role="button" class="small button radius small-centered large-uncentered large-4 medium-12  column">Know more</button>

                </div>



            </div>        
            <div class="large-12 column footer text-center smooth">
                <div id="snapper">
                    <!--<h1>^</h1>-->
                    <img src="img/up.png" alt="^"/>
                </div>
                <div class="foot-content">
                    <div class="row">
                        <div class="large-12 column smooth" >
                            <br/>
                            <br/>
                            Designed in 2014 By Preetam Kumar. This is a Project which fulfills the requirements of the Advanced Web Development Lab for the academics in Jaipur National University
                        </div>
                    </div>
                    <div class="row">
                        <div class="large-12 column text-center">
                            <hr/>
                            (c) 2014 , preesystems. All Rights reserved. 
                            <br/>

                        </div>
                    </div>

                </div>
            </div>
        </div>
        <script src="js/vendor/jquery.js"></script>
        <script src="js/cus.js"></script>
        <script src="js/foundation.min.js"></script>
        <script>
            $(document).foundation();
        </script>
    </body>
</html>
