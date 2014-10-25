

<div class="large-12 column footer text-center">
    <div id="snapper">
        <!--<h1>^</h1>-->
        <img src="img/up.png" alt="^"/>
    </div>
    <div class="foot-content">
        <div class="row">
            <div class="column text-center" >
                <br/>
            </div>
        </div>
        <div class="row">
            <div class="large-12 column">
                <br/>
                Designed in 2014 By Preetam Kumar.<br/> This is a Project which Fulfills the requirements of the  Advanced Web Development Lab for the academics in Jaipur National University.
                <br/>By the way client's IP address is <%= request.getRemoteAddr()%> aka <%= request.getServerName()%>. 
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