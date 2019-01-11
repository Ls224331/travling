(()=>{
    var phone_test=/^1[3-8]\d{9}$/;
    
    var upwd_test=/^[0-9]{6}$/;
    var proving_test=/^[0-9]{4}$/;
    $(".phone").blur(function(){
        $phone=$(this);
    if($phone.val()==""){
        $(".phone_test").html("手机号码不能为空");
    }else if(!phone_test.test($phone.val())){
        $(".phone_test").html("手机号码格式不正确");
    }else{
        $(".phone_test").html("");
    }
    })

   
    $(".upwd").blur(function(){
        $upwd=$(this);
        if($upwd.val()==""){
            $(".upwd_test").html("密码不能为空");
        }else if(!upwd_test.test($upwd.val())){
            $(".upwd_test").html("密码格式不正确");
        }else{
            $(".upwd_test").html("");
        }
    })

    $(".proving").blur(function(){
        $proving=$(this);
        if($proving.val()==""){
            $(".proving_test").html("验证码不能为空");
        }else if(!proving_test.test($proving.val())){
            $(".proving_test").html("验证码格式不正确");
        }else{
            $(".proving_test").html("");
        }
    })

    $("#register").click(function(){  //插入进学子数据库，按照学子数据库列表更改对应变量
        var uname=$(".phone").val();   //，后期需要按照自己所写数据库改回变量
        var upwd=$(".upwd").val();
        var email=$(".proving").val();
        if(uname==""){
            $(".phone_test").html("手机号码不能为空");
        }else if(upwd==""){
            $(".upwd_test").html("密码不能为空");
        }else if(email==""){
            $(".proving_test").html("验证码不能为空");
        }else{
            $.ajax({
                type:"post",
                url:"http://127.0.0.1:3000/users/reg",
                data:{uname,upwd,email},
                success:function(res){
                    if(res.code===200){
                        alert("注册成功3s后跳转到首页");
                        setTimeout(function(){
                            location.href="login.html";
                        },3000);
                     }else{
                     alert("注册失败");
                    }
                }
            })
        }
    })
})()

    