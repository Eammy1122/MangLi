$(function(){
     //setInterval(startChangeBackground,1000);
     $("#left li").hover(function(){
         $("#left li").eq($(this).index()).css({"background":"white"});
         $("#left i").eq($(this).index()).css({"background":"#3B5998","color":"white"});
     },function(){
         $("#left li").eq($(this).index()).css({"background":"#3B5998"});
         $("#left i").eq($(this).index()).css({"background":"white","color":"#3B5998"});
     });

     $("#left").on('click','li',changeContentLi);
})
function changeContentLi(){
    var ind = $(this).index();
    $("#content li").css({"transform":"scale(0)","transition":"all 0.00001s"});
    $("#content li").eq(ind).css({"transform":"scale(1)","transition":"all 0.5s"});
    setTimeout(function(){
        $("#content li").eq(ind).css({"transform":"scale(0.8)","transition":"all 0.3s"});
    },600);
    setTimeout(function(){
        $("#content li").eq(ind).css({"transform":"scale(1)","transition":"all 0.3s"});
    },800);
}



//记录背景图片的索引
// var bg_i=0;
// function startChangeBackground(){
//     $(".bg").fadeIn(1000);
//     $(".bg").eq(bg_i).fadeOut(2000);
//     bg_i++;
//     if(bg_i>5){
//         bg_i=0;
//     }
//
// }