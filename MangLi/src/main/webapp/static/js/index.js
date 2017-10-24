$(function () {
    var name = getCookie('userName');
    if(name==null){
        $("#state").html("登录 | 注册");
        $("#name2").html("UserName");
    }else{
        $("#state").html("");
        $("#name2").html(name);
    }

    $("#caidan p").click(function(){
        var k = $(this).index();
        if(k==0){
            location.href = "toPersonal";
        }
        if(k==1){
            location.href = "toResume";
        }
    });

    $(".page-header").css({"color":"white"});
    $("#home_head li").hide();
    $("#home_head li").eq(0).show();
    $("#head_menu").on('click','li',changeMenu);
    loadIndex();
    //  功能菜单
    $("#functions p").hover(function(){
            clearInterval(ti);
            $("#functions #caidan p b").eq($(this).index()).css("transform","scale(1)");
            pi = $(this).index();
            st();
            $("#functions #caidan p img").eq($(this).index()).css({"opacity":"0.5"});
        },
        function(){
            $("#functions #caidan p b").eq($(this).index()).css("transform","scale(0)");
            $("#functions #caidan p img").eq($(this).index()).css("opacity","1");
            $("#functions #caidan p span").eq($(this).index()).css({"color":"white","background-color":"#232332"});
            ti=setInterval(st,1000);
        });

//functions p 移动
    var ti=setInterval(st,1000);

})
//functions p 移动到第几个
var pi=0;
function st(){
    $("#functions #caidan p").css({"border":"10px solid ghostwhite"});
    $("#functions #caidan p").eq(pi).css({"border":"10px solid #232332"});
    $("#functions #caidan img").css({"transform":"scale(0.9)"});
    $("#functions #caidan img").eq(pi).css({"transform":"scale(1)"});
    $("#functions #caidan p span").css({"color":"#506367","background-color":"white"});
    $("#functions #caidan p span").eq(pi).css({"color":"white","background-color":"#232332"});
    pi++;
    if(pi>5){
        pi=0;
    }
}

function changeMenu(){
    //alert($(this).index());
    var inx = $(this).index();
    if(inx==0){
        $("#homePage").fadeIn(1000);
        $("#photo").fadeOut(100);
        $("#contact").fadeOut(100);
        $("#complain").fadeOut(100);
        $("#functions").fadeOut(100);
        $("#hotJobs").fadeOut(100);
    }
    if(inx==1){
        $("#homePage").fadeOut(200);
        $("#photo").fadeOut(200);
        $("#contact").fadeOut(200);
        $("#complain").fadeOut(200);
        $("#functions").fadeIn(1000);
        $("#hotJobs").fadeOut(200);
    }
    if(inx==2){
        $("#homePage").fadeOut(300);
        $("#photo").fadeOut(300);
        $("#contact").fadeOut(300);
        $("#complain").fadeOut(300);
        $("#functions").fadeOut(300);
        $("#hotJobs").fadeIn(1000);
    }
    if(inx==3){
        $("#homePage").fadeOut(400);
        $("#photo").fadeIn(1000);
        $("#contact").fadeOut(400);
        $("#complain").fadeOut(400);
        $("#functions").fadeOut(400);
        $("#hotJobs").fadeOut(400);
    }
    if(inx==4){
        $("#homePage").fadeOut(500);
        $("#photo").fadeOut(500);
        $("#contact").fadeIn(1000);
        $("#complain").fadeOut(500);
        $("#functions").fadeOut(500);
        $("#hotJobs").fadeOut(500);
    }
    if(inx==5) {
        $("#homePage").fadeOut(600);
        $("#photo").fadeOut(600);
        $("#contact").fadeOut(600);
        $("#complain").fadeIn(1000);
        $("#functions").fadeOut(600);
        $("#hotJobs").fadeOut(600);
    }

}

var time;
var index=0;
function loadIndex(){
    time = setInterval(startRun, 50);
}

//foot开始移动
function startRun(){
    i = parseInt($(".progress-bar").html());
    i++;
    if(i>110){
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
