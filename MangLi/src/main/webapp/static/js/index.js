$(function () {
    $("#home_head li").hide();
    $("#home_head li").eq(0).show();
    loadIndex();
})
var time;
var index=0;
function loadIndex(){
    time = setInterval(startRun, 50);
}
function startRun(){
    i = parseInt($(".progress-bar").html());
    i++;
    if(i>120){
        i=0;
        clearInterval(time);
        index++;
        if(index>5){
            index=0;
        }
        movePage();
    }
    $(".progress-bar").html(i);
    $(".progress-bar").css({"width":i+"%"});

}
function movePage(){
    console.log(index);
    $("#home_head li").hide(100);
    $("#home_head li").eq(index).show(1000);
    setTimeout(function(){
        time = setInterval(startRun, 50);
    },2000);
}
