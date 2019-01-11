const express=require('express');
const router=express.Router();
const pool=require("../pool");

router.post('/signin',function(req,res){
    //获取浏览器请求的数据
    var obj=req.body;
    //验证用户名和密码不能空
    var $uname=obj.uname;
    if(!$uname){
      res.send({code:401,msg:'用户名不能为空'});
      return;
    }
    var $upwd=obj.upwd;
    if(!$upwd){
      res.send({code:402,msg:'密码不能为空'});
      return;
    }
    //查看数据库中是否有这个用户
    
    pool.query('SELECT * FROM traveling_user WHERE uname=? AND upwd=?',[$uname,$upwd],function(err,result){
      if(err) throw err;
      //查询的结果是数组
      if(result.length>0){
        req.session.uid=result[0]["uid"]
        console.log(req.session.uid);

        res.send({code:200,msg:"登录成功"});//uname:result[0]["uname"]
      }else{
        res.send({code:301,msg:'用户名或密码错误'});
      }
      
    });
  
  });

  router.get("/islogin",(req,res)=>{
    if(req.session.uid===undefined)
      res.send({ok:0});
    else
      res.send({ok:1});
  })
  router.get("/signout",(req,res)=>{
    req.session.uid=undefined;
    res.end();
  })






  //1.用户注册路由
router.post('/reg',function(req,res){
    //接收post请求的数据
    var obj=req.body;
    var $uname=obj.uname;
    //判断用户名是否为空
    if($uname==''){
      res.send({code:401,msg:'uname required'});
      return;//阻止程序继续往后执行
    }
    var $upwd=obj.upwd;
    if(!$upwd){ //如果是空
      res.send({code:402,msg:'upwd required'});
      return;
    }
    var $email=obj.email;
    if(!$email){
      res.send({code:403,msg:'email required'});
      return;
    }
   
    //把用户信息插入到数据库
    pool.query('INSERT INTO traveling_user VALUES(NULL,?,?,?)',[$uname,$upwd,$email],function(err,result){
      if(err) throw err;
      //判断affectedRows是否大于0
      if(result.affectedRows>0){
        res.send({code:200,msg:'reg success'});
      }
    });
  });
module.exports=router;