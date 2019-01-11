$(function(){
    //$("<link rel='stylesheet' href='css/header.css'>").appendTo("head");//动态引入header.css
    $.ajax({//异步
      url:"header.html",
      type:"get",
      success:function(res){
        //res->html片段
        $(res).replaceAll("#header");//创建header.js组件，可以动态加载头部，在想要加载头部的页面底部引入header.js
        var $input=   //加此变量名为了重用
        $("#banner>div:nth-child(2)>div>div:nth-child(2)>div>div>img")
        .click(function(){
          var $img=$(this);
          var kwords=$img.parent().prev().val();//查找查询按钮图片旁的input来获取里面的输入值
          if(kwords.trim()!=="")//trim去掉空字符，此句意思在去掉空字符后不等于空
            location.href=
              `products.html?kwords=${kwords}`;
        })//return $img
        .parent().prev()//return $input //找到input输入框
        .keyup(function(e){//keyup按键盘后弹起  增加按键盘回车触发查询按钮
          if(e.keyCode==13){ //13数字代表回车
            $(this).next().children("img").click()
          }
        });//return $input
  
        if(location.search.indexOf("kwords=")!=-1){
          $input.val(
          // 专治: encodeURI/encodeURIComponent编码后的字符   //解码
            decodeURIComponent(
              location.search.split("=")[1] //截取所传关键字例如kwords=mac等号后的关键字放入文本框里
            )
          )
        }
  
  
      }
    })
    
  })

  