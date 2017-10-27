var resume=null;
function loadResume(){
    var url = "resume/loadResume";
    var data = {user_id:getCookie('userId')};
    $.getJSON(url,data,function(result){
        if(result.state==0){
            console.log(result);
            resume = result.data;
            if(resume!=null){
                $(".tishi").hide();
                $(".info p").show();
                $(".info span").eq(0).html(getCookie('userName'));
                $(".info span").eq(1).html(resume.address_now);
                $(".info span").eq(2).html(resume.work_exp);
                $(".info span").eq(3).html(resume.sex);
                $(".info span").eq(4).html(resume.birth);
                $(".info span").eq(5).html(resume.work_state);
                $(".info span").eq(7).html(resume.email);
                $(".info span").eq(9).html(getCookie('phone'));
                loadXinXiSalary();
                loadQiuZhi();
            }
        }
        else{
            alert(result.message);
        }
    });
}
function loadXinXiSalary() {
    var salary = resume.salary;
    if(salary!=null){
        $(".xin-shouru").html(resume.salary+"万元");
        $(".con-right .xinxi-mon").eq(0).hide();
    }
}
function loadQiuZhi() {
    var url = "resume/loadQiuZhi";
    var data = {resume_id:resume.resume_id};
    $.getJSON(url,data,function(result){
        if(result.state==0){
            if(result.data!=null){
                $(".xinxi-mon").eq(1).hide();
                $(".qiu-mon").show();

                $(".qiu-mon span").eq(0).html(result.data.salary);
                $(".qiu-mon span").eq(1).html(result.data.address);
                $(".qiu-mon span").eq(2).html(result.data.will_work);
                $(".qiu-mon span").eq(3).html(result.data.trade);
                $(".qiu-mon span").eq(4).html(result.data.will_type);
            }
        }else{
            alert(result.message);
        }
    });
}

function saveResumeXinXi() {

    var url = "resume/updateXinXi";
    var data = {address_now:$(".info-change input").eq(0).val(),
                work_exp:$(".info-change input").eq(1).val(),
                sex:$(".info-change input").eq(2).val(),
                birth:$(".info-change input").eq(3).val(),
                work_state:$(".info-change input").eq(4).val(),
                email:$(".info-change input").eq(5).val(),
                user_id:getCookie('userId')};
    $.getJSON(url,data,function(result){
        console.log(result);
        var r = result.data;
        if(result.state==0){
            alert("提交成功");

            $(".info span").eq(1).html(r.address_now);
            $(".info span").eq(2).html(r.work_exp);
            $(".info span").eq(3).html(r.sex);
            $(".info span").eq(4).html(r.birth);
            $(".info span").eq(5).html(r.work_state);
            $(".info span").eq(7).html(r.email);
            $(".info span").eq(9).html(getCookie('phone'));

            $(".right-img").show();
            $(".info-change").hide();
            $(".info").show();
            if(r==null){
                $(".tishi").show();
            }else{
                $(".info p").show();
            }
            $(".con-right .edit").eq(0).css({"opacity":"1"});
        }
        else{
            if(result.message=="请输入现居住地址"){
                shanshan(0,".info-change",result.message);
            }
            if(result.message=="请选择工作经验"){
                shanshan(1,".info-change",result.message);
            }
            if(result.message=="请选择性别"){
                shanshan(2,".info-change",result.message);
            }
            if(result.message=="请选择出生日期"||result.message=="出生日期有误"){
                shanshan(3,".info-change",result.message);
            }
            if(result.message=="请选择当前工作状态"){
                shanshan(4,".info-change",result.message);
            }
            if(result.message=="请输入邮箱地址"){
                shanshan(5,".info-change",result.message);
            }
        }
    })
}

function saveResumeXinSalry() {
    var url = "resume/updateSalry";
    var data= {salary:$(".xinxi1 input").val(),user_id:getCookie('userId')};
    $.getJSON(url,data,function(result){
        if(result.state==0){
            alert("提交成功");
            $(".xin-shouru").html(result.data.salary+"万元");
            $(".con-right .edit").eq(1).css({"opacity":"1"});
            $(".con-right .xinxi-monChange").hide();
        }else{
            shanshan(0,".xinxi-monChange",result.message);
        }
    })

}

function loadResumeQiu() {
    var url = "resume/updateQiu";
    var data = {salary:$(".qiu-monChange input").eq(0).val(),
                address:$(".qiu-monChange input").eq(1).val(),
                will_work:$(".qiu-monChange input").eq(2).val(),
                trade:$(".qiu-monChange input").eq(3).val(),
                will_type:$(".qiu-monChange input").eq(4).val(),};
    $.getJSON(url,data,function(result){
        if(result.state==0){
            console.log(result);
        }
        else{
            alert(result.message);
        }
    })

}

function shanshan(i,cl,message) {
    $(cl+" p").eq(i).show();
    $(cl+" i").eq(i).html(message);
    function show() {
        $(cl+" i").eq(i).animate({ 'opacity': 1 }, 300);
    }
    function hide() {
        $(cl+" i").eq(i).animate({ 'opacity': 0 }, 300);
    }
    setInterval(hide, 500);
    setInterval(show, 500);
}