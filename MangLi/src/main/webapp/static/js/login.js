$(function(){
    $(".l_p").hide();
    $("#login").on('click','.btn',Login);
    $("#regist").on('click','.btn',Regist);
})
function aler(i) {
    function show() {
        $(".l_i").eq(i).animate({ 'opacity': 1 }, 300);
    }
    function hide() {
        $(".l_i").eq(i).animate({ 'opacity': 0 }, 300);
    }
    setInterval(hide, 500);
    setInterval(show, 500);
}

function Login(){
    $(".l_p").hide();
    var str = $(this).val();
    if(str=="登录"){
        var data = {phone:$("#userName").val(),password:$("#pwd").val()};
        var url = "user/login";
        $.getJSON(url,data,function(result){

            if(result.state==0){
                var loginData = result.data;
                setCookie('userName',loginData.username);
                setCookie('userId',loginData.user_id);
                location.href="index.jsp";
            }
            else{
                if(result.message=="手机号不能为空"||result.message=="手机号输入错误"){
                    $(".l_p").eq(0).show();
                    $(".l_i").eq(0).html(result.message);
                    aler(0);
                }
                if(result.message=="密码不能为空"||result.message=="密码输入错误"){
                    $(".l_p").eq(1).show();
                    $(".l_i").eq(1).html(result.message);
                    aler(1);
                }
            }
        })
    }
    else{
        $("#login").hide();
        $("#regist").show();
    }
}
function Regist(){
    var str = $(this).val();
    if(str=="登录"){
        $("#regist").hide();
        $("#login").show();

    }
    else{
        alert(str);
    }
}