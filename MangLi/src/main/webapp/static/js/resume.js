$(function(){
    var name = getCookie('userName');
    if(name==null){
        $("#state").html("登录 | 注册");
        $("#name2").html("UserName");
    }else{
        $("#state").html("");
        $("#name2").html(name);
    }

    $(".con-left-foot li").hover(
        function(){
            $(".content .con-left-foot p").eq($(this).index()).css({"color":"red"});
            $(".content .con-left-foot span").eq(2*$(this).index()).css({"color":"red"});
        },function(){
            $(".content .con-left-foot p").eq($(this).index()).css({"color":"gray"});
            $(".content .con-left-foot span").eq(2*$(this).index()).css({"color":"black"});
        }
    );

    // $(".con-right .edit").hide();
    $(".con-right li").hover(function(){
        $(".edit").eq($(this).index()).show();
    },function(){
        $(".edit").eq($(this).index()).hide();
    });
    $(".con-right .edit").click(function(){
         alert($(this).parents().parents().index());
    });
})