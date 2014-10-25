<jsp:include page="components/head.jsp"></jsp:include>
<%--<jsp:include page="components/navbar.jsp"></jsp:include>--%>
<script>

    var ani = function () {
        var x = 150;
        var y = 150;
        function sleep(milliseconds) {
            var start = new Date().getTime();
            for (var i = 0; i < 1e7; i++) {
                if ((new Date().getTime() - start) > milliseconds) {
                    break;
                }
            }
        }
        for (i = 0; i < 3; i++)
            for (j = 0; j < 4; j++)
            {
                y = 150 + j * 150;
                x = 150 + i * 150;
                sleep(50);
                $("#sticker").css("background", "url(img/abeeyyar.png) " + x+"px" + " " +"-"+ y+"px");
                window.console.log("url(img/abeeyyar.png) " + x+"px" + " " +"-"+ y+"px");
            }
    };
var ref=setTimeout(ani(),500);

</script>
<div id="sticker" onmousemove="ani();" style="
     position: absolute;
     left: 0;
     right: 0;
     margin: auto;
     margin-top: 200px;
     height:150px;
     width:150px;
     background:url(img/abeeyyar.png);">

</div>
<jsp:include page="components/foot.jsp"></jsp:include>