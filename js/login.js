$(function(){
    $(".alogin").click(function(){
        var uname=$("#uname").val();
        var upwd=$("#upwd").val();
        
        $.ajax({
            url:"http://127.0.0.1:3000/users/signin",
            type:"post",
            data:{uname,upwd},
            dataType:"json",
            success:function(res){
				if(res.code===200){
                alert((res.msg+"3s后跳转到首页"));
                setTimeout(function(){
                    location.href="index.html";
                },3000);
                console.log(sessionStorage);
                sessionStorage["loginUname"]=uname;
                
			}else{
                alert(res.msg);
			  //$("#uname_test").html(res.msg);
			}
            }
        })
        
    })
   
})
