$(function(){
  var lid=location.search.slice(5);
  $.ajax({
    url:"http://localhost:3000/details",
    type:"get",
    data:{lid},
    dataType:"json",
    success:function(res){
      console.log(res);
	  //右侧
      var {product, specs, pics}=res;
      var {title,subtitle,price,promise}=product;
      var h6=document.querySelector(
        "#details>h6:first-child"
      );
      h6.innerHTML=title;
      var nextH6=h6.nextElementSibling;
      nextH6.children[0].innerHTML=subtitle;
      var nextDiv=nextH6.nextElementSibling;
      nextDiv.children[0].children[1].innerHTML=
        "¥"+price.toFixed(2);
      nextDiv.children[1].children[1].innerHTML=
        promise;
      
      var html="";
      for(var sp of specs){
        html+=`<a class="btn btn-sm btn-outline-secondary ${lid==sp.lid?'active':''}" href="product_details.html?lid=${sp.lid}">${sp.spec}</a>`
      }
      nextDiv.nextElementSibling
            .nextElementSibling
            .children[1].innerHTML=html;


//左边图片
      var html="";
      for(var p of pics){
        var {sm,md,lg}=p;
        html+=`<li class="float-left p-1">
          <img src="${sm}" data-md="${md}" data-lg="${lg}">
        </li>`;
      }
      var ulImgs=document.querySelector(
        "#preview>div>div:last-child ul"
      )
      ulImgs.innerHTML=html;
      ulImgs.style.width=`${pics.length*62}px`;
      var leftBtn=
        ulImgs.parentNode.previousElementSibling;
      var rightBtn=
        ulImgs.parentNode.nextElementSibling;
      if(pics.length<=4) 
        rightBtn.className+=" disabled";

      var moved=0;
      leftBtn.onclick=function(){
        var btn=this;
        if(btn.className.indexOf("disabled")==-1){
          moved--;
          ulImgs.style.marginLeft=`-${moved*62}px`
          rightBtn.className=
            rightBtn.className
                    .replace("disabled","");
          if(moved==0)
            btn.className+=" disabled";
        }
      }
      rightBtn.onclick=function(){
        var btn=this;
        if(btn.className.indexOf("disabled")==-1){
          moved++;
          ulImgs.style.marginLeft=
            `-${moved*62}px`;
          leftBtn.className=
            leftBtn.className
                  .replace("disabled","")
          if(pics.length-4==moved)
            btn.className+=" disabled";
        }
      }

      var mImg=document.querySelector(
        "#preview>div>img"
      );
      var lgDiv=document.getElementById("div-lg");
      mImg.src=pics[0].md;
      lgDiv.style.backgroundImage=
        `url(${pics[0].lg})`;
      //html 30行: class=" ... d-none"
      ulImgs.onmouseover=function(e){
        if(e.target.nodeName=="IMG"){
          var img=e.target;
          //<img src=sm data-md=md data-lg=lg
          mImg.src=img.getAttribute("data-md");
          lgDiv.style.backgroundImage=
            `url(${img.getAttribute("data-lg")})`;
        }
      }
      //放大镜效果
      var mask=document.getElementById("mask");
      var sMask=
        document.getElementById("super-mask");
      sMask.onmouseover=function(){
        lgDiv.className=
          lgDiv.className
              .replace("d-none","");
        mask.className=
          mask.className
              .replace("d-none","");
      }
      sMask.onmouseout=function(){
        lgDiv.className+=" d-none";
        mask.className+="d-none";
      }
      var msize=176,smsize=320,max=(smsize-msize)+15;
      sMask.onmousemove=function(e){
        var left=e.offsetX-msize/2;
        var top=e.offsetY-msize/2;
        //防止mask超出lgDiv范围！
        if(left<"25") left="0"; else if(left>max) left=max+20;
        if(top<"79") top="0"; else if(top>max) top=max+25  ;

        mask.style.left=`${left}px`;
        mask.style.top=`${top}px`;

        lgDiv.style.backgroundPosition=
          `-${16/7*left}px -${16/7*top}px`
      }
    }
  })
})//地址: http://localhost:3000/product_details.html?lid=1