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
        <title>p2p support signup</title>
        <link rel="stylesheet" href="css/foundation.css" />
        <link rel="stylesheet" href="css/cus.css" />
        <link rel="stylesheet" href="css/mod.css" />
        <script src="js/vendor/modernizr.js"></script>
        <script src="js/vendor/jquery.js"></script>
    </head>
    <body>
        <script>
            var validate = function () {
                return document.regform.password.value === document.regform.repassword.value;
            };
            var form = document.regform;

            $(document).ready(function () {
                $(window).keydown(function (event) {
                    if (event.keyCode === 13) {
                        event.preventDefault();
                        return false;
                    }
                });
            });
        </script>
        <div class="contained">
            <div class="row">
                <div class="large-12 hidden-for-medium hidden-for-small column">
                    <br/>
                    <br/>
                    <br/>
                    <br/>
                    <br/>
                </div>
            </div>
            <div class="row">
                <div class="large-5 columns">
                    <div class="row">
                        <div class="large-12 columns small-text-center large-text-left">
                            <h1>
                                Hi There!
                            </h1>
                            <p>
                                Welcome to Awesomeness.
                                <br/>
                                We share support and stuffs here.
                                <br/>
                                Get Solutions.Give solutions.Share Solutions.
                                <br/>
                            </p>
                            <h3>
                                Join to become a part of peer support.  
                            </h3>
                            <h4><a href="login.jsp">Login</a> if already a member.</h4>
                        </div>
                    </div>
                    <!--<div class="small-centered large-uncentered large-6">-->
                    <button role="button" class="small button radius small-centered large-uncentered large-4 medium-12  column">Know more</button>
                    <!--</div>-->   
                </div>


                <div id="reg_form" class="large-6 columns">
                    <div class="row form-head">
                        <h5 class="large-12 large-centered medium-centered text-center small-centered">
                            Get Started Right on...
                        </h5>
                    </div>
                    <form  name="regform" method="post" action="handler.jsp">

                        <div class="row">
                            <div class="large-6 medium-6 columns">
                                <label>First Name
                                    <input type="text" name="fname" placeholder="Steven X" required=""/>
                                </label>
                            </div>
                            <div class="large-6 medium-6 columns">
                                <label>Last Name
                                    <input type="text" name="lname" placeholder="White" required=""/>
                                </label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="large-12 medium-12 column">
                                <label>Email
                                    <input type="email" required="" name="email" placeholder="someone@someplace.com"/>
                                </label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="large-6 medium-6 columns">
                                <label>Password
                                    <input type="password" required="" name="password" placeholder="password"/>
                                </label>
                            </div>
                            <div class="large-6 medium-6 columns">
                                <label>Re-Enter Password
                                    <input type="password" required="" name="repassword" placeholder="re-enter password"/>
                                    <input type="hidden" name="requestType" value="signup"/>
                                </label>
                            </div>
                        </div>
                        <div class="row form-action">
                            <button role="button" type="submit" onsubmit="return false;" class="button large-5 columns radius">Sign up</button>
                            <button role="button" type="reset" class="button large-5 large-offset-1 columns radius">Reset</button>

                        </div>
                    </form>
                </div>
            </div>        
            <jsp:include page="components/foot.jsp"></jsp:include>