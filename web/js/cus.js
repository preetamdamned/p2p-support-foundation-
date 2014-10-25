//animations
var footToogle= function (){
    $("#snapper").toggleClass("rotate180");
    $(".foot-content").toggle(500);
    $(".footer").toggleClass("abs");
};




//functions
$(footToogle());

$("#snapper").click(function () {
    footToogle();
});
