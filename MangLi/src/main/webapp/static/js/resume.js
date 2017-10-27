$(function(){
    var name = getCookie('userName');

    loadResume();

    $(".info-change p").hide();


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
            $(this).css({"border":"1px solid red"});
        },function(){
            $(".content .con-left-foot p").eq($(this).index()).css({"color":"gray"});
            $(".content .con-left-foot span").eq(2*$(this).index()).css({"color":"black"});
            $(this).css({"border":"1px solid rgba(230,230,250,0.5)"});
        }
    );

    $(".con-left-foot li").click(function(){
        var i = $(this).index();
        location.href="#con-li-"+i;
    });

    // $(".con-right .edit").hide();

    $(".con-right li").hover(function(){
        $(".edit").eq($(this).index()).show();
    },function(){
        $(".edit").eq($(this).index()).hide();
    });

    //个人信息li.eq(0)

    $(".con-right .edit").eq(0).click(function(){
        $(".right-img").hide();
        $(".info").hide();
        for(var i=0;i<5;i++){
            $(".info-change input").eq(i).val($(".info span").eq(i+1).html());
        }
        $(".info-change input").eq(5).val($(".info span").eq(7).html());
        $(".info-change").show();
        $(".con-right .edit").eq(0).css({"opacity":"0"});
    });

    $(".info-change button").click(function(){
        if($(this).index()==1){
            console.log(resume);
            if(resume==null){
                $(".tishi").show();
                $(".info p").hide();

            }else{
                $(".info p").show();
            }
            $(".right-img").show();
            $(".info").show();
            $(".info-change").hide();
            $(".con-right .edit").eq(0).css({"opacity":"1"});
        }
        else{
            $(".info-change p").hide();
            saveResumeXinXi();
        }
    });




    $(".con-right .edit").eq(1).click(function(){
        $(this).css({"opacity":"0"});
        $(".con-right .xinxi-mon").eq(0).hide();
        $(".con-right .xinxi-monChange").show();
    });

    $(".xinxi2 button").click(function(){
        if($(this).index()==1){
            $(".con-right .edit").eq(1).css({"opacity":"1"});
            $(".con-right .xinxi-monChange").hide();
            if(!$(".xin-shouru").html().length>0){
                $(".con-right .xinxi-mon").eq(0).show();
            }
        }else {
            $(".xinxi-monChange p").hide();
            saveResumeXinSalry();
        }
    });

    $(".con-right .edit").eq(2).click(function(){
        $(this).css({"opacity":"0"});
        $(".xinxi-mon").eq(1).hide();
        $(".qiu-mon").hide();
        $(".qiu-monChange").show();
    });

    $(".qiu-monChange button").click(function(){
        var t=0;
        var s=0;
        if($(this).index()==1){
            for(var i=0;i<5;i++){
                if($(".qiu-mon span").eq(i).html().length>0){
                    s++;
                }
            }
            if(s==0){
                $(".xinxi-mon").eq(1).show();
            }
            else{
                $(".qiu-mon").show();
            }
            $(".qiu-monChange").hide();
            $(".con-right .edit").eq(2).css({"opacity":"1"});
        }
        else{
            $(".qiu-monChange p").hide();
            loadResumeQiu();
            // for(var i=0;i<5;i++){
            //     $(".qiu-mon span").eq(i).html($(".qiu-monChange input").eq(i).val());
            //     if($(".qiu-mon span").eq(i).html().length>0){
            //         t++;
            //     }
            // }
            // if(t==0){
            //     $(".xinxi-mon").eq(1).show();
            // }
            // else{
            //     $(".qiu-mon").show();
            // }
            //
            // $(".qiu-monChange").hide();
        }


    });

    $(".con-right .edit").eq(3).click(function(){
        $(".xinxi-mon").eq(2).hide();
        $(".con-right .edit").eq(3).css({"opacity":"0"});
        $(".work-jy").hide();
        $(".work-jiChange").show();
    });

    $(".work-jiChange button").click(function(){
        var s=0;
        var t=0;
        if($(this).index()==1){
            for(var i=0;i<$(".work-jy span").length;i++){
                if($(".work-jy span").eq(i).html().length>0){
                    s++;
                }
            }
            if(s==0){
                $(".xinxi-mon").eq(2).show();
            }else{
                $(".work-jy").show();
            }
        }
        else{
            for(var i=0;i<$(".work-jiChange input").length;i++){
                $(".work-jy span").eq(i).html($(".work-jiChange input").eq(i).val());
                if($(".work-jiChange input").eq(i).val().length>0){
                    t++;
                }
            }
            $(".work-jy span").eq($(".work-jy span").length-1).html($("#workDescription").val());
            if($("#workDescription").val().length>0){

                t++;
            }
           if(t==0){
               $(".xinxi-mon").eq(2).show();
           }else{
               $(".work-jy").show();
           }
        }
        $(".work-jiChange").hide();
        $(".con-right .edit").eq(3).css({"opacity":"1"});
    });

    loadJiaoYu();

    LoadZaiXiao();

    loadJiNeng();

    loadFuJia();





//    教育经历
    //点击添加按钮
    $(".con-right .edit").eq(4).click(function(){
        $(".xinxi-mon").eq(3).hide();
        $(".con-right .edit").eq(4).css({"opacity":"0"});
        $(".school-mon").hide();
        $(".school-change").show();
    });

    //点击school-change里的按钮
    $(".school-change button").click(function(){
        if($(this).index()==1){
            if($(".schome-mon li").length>0){
                $(".school-mon").show();
            }else{
                $(".xinxi-mon").eq(3).show();
            }
        }
        else{
            addJiaoYuLi();
            $(".school-mon").show();
            loadJiaoYu();
        }
        $(".con-right .edit").eq(4).css({"opacity":"1"});
        $(".school-change").hide();
    });

//    在校情况

//   点击添加按钮
    $(".con-right .edit").eq(5).click(function(){
        $(".xinxi-mon").eq(4).hide();
        $(".con-right .edit").eq(5).css({"opacity":"0"});
        $(".schome-mon").hide();
        $(".schome-change").show();
    });

    $(".schome-change button").click(function(){
        if($(this).index()==1){
            if($(".schome-mon li").length>0){
                $(".schome-mon").show();
            }else{
                $(".xinxi-mon").eq(4).show();
            }
            $(".schome-change").hide();
            $(".con-right .edit").eq(5).css({"opacity":"1"});
        }
        else{
            addZaiXiao();
            $(".schome-mon").show();
            $(".schome-change").hide();
            $(".con-right .edit").eq(5).css({"opacity":"1"});
            LoadZaiXiao();
        }
    });

//    技能特长
//    添加按钮
    $(".con-right .edit").eq(6).click(function(){
        $(".xinxi-mon").eq(5).hide();
        $(".con-right .edit").eq(6).css({"opacity":"0"});
        $(".jineng-mon").hide();
        $(".jineng-change").show();
    });

    $(".jineng-change button").click(function(){
        if($(this).index()==1){
            if($(".jineng-mon li").length>0){
                $(".jineng-mon").show();
            }else{
                $(".xinxi-mon").eq(5).show();
            }
            $(".jineng-change").hide();
            $(".con-right .edit").eq(6).css({"opacity":"1"});
        }
        else{
            alert(0);
        }
    });
//    附加信息
//    添加按钮
    $(".con-right .edit").eq(7).click(function(){
        $(".xinxi-mon").eq(6).hide();
        $(".con-right .edit").eq(7).css({"opacity":"0"});
        $(".fujia-mon").hide();
        $(".fujia-change").show();
    });

    $(".fujia-change button").click(function(){
        if($(this).index()==1){
            if($(".fujia-mon li").length>0){
                $(".fujia-mon").show();
            }
            else{
                $(".xinxi-mon").eq(6).show();
            }
            $(".con-right .edit").eq(7).css({"opacity":"1"});
            $(".fujia-change").hide();
        }
        else{
            alert(0);
        }
    });

})

function loadJiaoYu(){
    $(".school-mon li").eq(0).css({"margin-top":"55px"});

    $(".school-mon li").eq($(".school-mon li").length-1).css({"margin-bottom":"25px"});

    $(".school-mon li").hover(function(){
        $(this).css({"border":"1px solid red"});
        $(".school-delete").eq($(this).index()).show();
    },function(){
        $(this).css({"border":"none"});
        $(".school-delete").eq($(this).index()).hide();
    });
}

function LoadZaiXiao(){
    $(".schome-mon li").eq(0).css({"margin-top":"55px"});

    $(".schome-mon li").eq($(".school-mon li").length-1).css({"margin-bottom":"25px"});
    $(".schome-mon li").hover(function(){
        $(this).css({"border":"1px solid red"});
        $(".schoolhome-delete").eq($(this).index()).show();
    },function(){
        $(this).css({"border":"none"});
        $(".schoolhome-delete").eq($(this).index()).hide();
    });
}
function addJiaoYuLi(){
    var tem = '<li><div><label>时间:</label><span>[2010]</span>--<span>[2011]</span>'
             +'</div><div><label>学校:</label><span>[江西师范大学]</span></div>'
             +'<div class="school-delete"><span class="glyphicon glyphicon-edit"></span>' +
        '<span class="glyphicon glyphicon-trash"></span></div><div><label>学历/学位</label>' +
        '<span>[本科]</span></div><div><label>专业描述</label><span>[java]</span></div></li>';
    var ul = $("#jiaoyu-ul");
    var li = tem.replace('[2010]',$(".school-change input").eq(0).val());
    var li = li.replace('[2011]',$(".school-change input").eq(1).val());
    var li = li.replace('[2011]',$(".school-change input").eq(2).val());
    var li = li.replace('[2011]',$(".school-change input").eq(3).val());
    var li = li.replace('[2011]',$(".school-change textarea").val());
    li = $(li);
    ul.append(li);
}
function addZaiXiao(){
    var tem = '<li><div><label>时间:</label><span>[2010]</span>--<span>[2011]</span>' +
        '</div><div><label>描述:</label><span>[获院级三等奖]</span></div>' +
        '<div class="schoolhome-delete"><span class="glyphicon glyphicon-edit"></span>' +
        '<span class="glyphicon glyphicon-trash"></span></div></li>';
    var ul = $("#zaixiao-ul");
    var li = tem.replace('[2010]',$(".schome-change input").eq(0).val());
    var li = tem.replace('[2011]',$(".schome-change input").eq(1).val());
    var li = tem.replace('[获院级三等奖]',$(".schome-change textarea").val());
    li = $(li);
    ul.append(li);
}


function loadJiNeng(){
    $(".jineng-mon li").eq(0).css({"margin-top":"55px"});

    $(".jineng-mon li").eq($(".jineng-mon li").length-1).css({"margin-bottom":"25px"});

    $(".jineng-mon li").hover(function(){
        $(this).css({"border":"1px solid red"});
        $(".jineng-delete").eq($(this).index()).show();
    },function(){
        $(this).css({"border":"none"});
        $(".jineng-delete").eq($(this).index()).hide();
    });
}
function loadFuJia(){
    $(".fujia-mon li").eq(0).css({"margin-top":"55px"});

    $(".fujia-mon li").eq($(".fujia-mon li").length-1).css({"margin-bottom":"25px"});

    $(".fujia-mon li").hover(function(){
        $(this).css({"border":"1px solid red"});
        $(".fujia-delete").eq($(this).index()).show();
    },function(){
        $(this).css({"border":"none"});
        $(".fujia-delete").eq($(this).index()).hide();
    });
}