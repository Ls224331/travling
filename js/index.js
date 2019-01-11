$(function(){
    $.ajax({
      url:"http://localhost:3000/index",
      type:"get",
      dataType:"json",
      success:function(res){
        //console.log(res);
        var p=res[0];
        var {title,details,price,pic,href}=p;
        
        var html=`<div>
        <img class="float-left" src="${pic}" alt="">
        <div class="float-left "><h4>${title}</h4></div><br><br>
        <div class=""><p>${details}</p></div>
        <span style="color:#f00;font-size:18px">￥${price.toFixed(2)}</span>
        <a href="${href}" class="btn btn-info ml-3">查看详情</a>
        </div>`;
        var div=document.querySelector(
          "#main>:nth-child(2)>:nth-child(1)"
        );
        div.innerHTML=html;
  
        var p=res[1];
        var {title,details,price,pic,href}=p;
        
        var html=`<div>
        <img class="float-left" src="${pic}" alt="">
        <div class="float-left "><h4>${title}</h4></div><br><br>
        <div class=""><p>${details}</p></div>
        <span style="color:#f00;font-size:18px">￥${price.toFixed(2)}</span>
        <a href="${href}" class="btn btn-info ml-3">查看详情</a>
        </div>`;
        var div=document.querySelector(
          "#main>:nth-child(2)>:nth-child(2)"
        );
        div.innerHTML=html;
  
        var p=res[2];
        var {title,details,price,pic,href}=p;
       
        var html=`<div>
        <img class="float-left" src="${pic}" alt="">
        <div class="float-left "><h4>${title}</h4></div><br><br>
        <div class=""><p>${details}</p></div>
        <span style="color:#f00;font-size:18px">￥${price.toFixed(2)}</span>
        <a href="${href}" class="btn btn-info ml-3">查看详情</a>
        </div>`;
        var div=document.querySelector(
          "#main>:nth-child(2)>:nth-child(3)"
        );
        div.innerHTML=html;
  
        var p=res[3];
        var {title,details,price,pic,href}=p;
        
        var html=`<div>
        <img class="float-left" src="${pic}" alt="">
        <div class="float-left "><h4>${title}</h4></div><br><br>
        <div class=""><p>${details}</p></div>
        <span style="color:#f00;font-size:18px">￥${price.toFixed(2)}</span>
        <a href="${href}" class="btn btn-info ml-3">查看详情</a>
        </div>`;
        var div=document.querySelector(
          "#main>:nth-child(3)>:nth-child(1)"
        );
        div.innerHTML=html;

        var p=res[4];
        var {title,details,price,pic,href}=p;
        
        var html=`<div>
        <img class="float-left" src="${pic}" alt="">
        <div class="float-left "><h4>${title}</h4></div><br><br>
        <div class=""><p>${details}</p></div>
        <span style="color:#f00;font-size:18px">￥${price.toFixed(2)}</span>
        <a href="${href}" class="btn btn-info ml-3">查看详情</a>
        </div>`;
        var div=document.querySelector(
          "#main>:nth-child(3)>:nth-child(2)"
        );
        div.innerHTML=html;

        var p=res[5];
        var {title,details,price,pic,href}=p;
        
        var html=`<div>
        <img class="float-left" src="${pic}" alt="">
        <div class="float-left "><h4>${title}</h4></div><br><br>
        <div class=""><p>${details}</p></div>
        <span style="color:#f00;font-size:18px">￥${price.toFixed(2)}</span>
        <a href="${href}" class="btn btn-info ml-3">查看详情</a>
        </div>`;
        var div=document.querySelector(
          "#main>:nth-child(3)>:nth-child(3)"
        );
        div.innerHTML=html;
      }
    })
    .then(res=>{ 
      
    })
    //http://localhost:3000
  })