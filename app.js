//使用express构建web服务器 --11:25
const express = require('express');
const bodyParser = require('body-parser');
const cors=require("cors");
const session=require("express-session");
/*引入路由模块*/

const users= require("./routes/users");
const index=require("./routes/index");
const details=require("./routes/details");
const products=require("./routes/products");
  

var app = express();
 app.listen(3000);
//使用body-parser中间件
app.use(bodyParser.urlencoded({extended:false}));
//托管静态资源到public目录下
app.use(express.static('public'));
app.use(cors({
    origin:[
      "http://127.0.0.1:5500","http://localhost:3000","http://localhost:8080"],
    credentials:true
  }))
app.use(session({
  secret:"128位随机字符",
  resave:false,
  saveUninitialized:true
}))
/*使用路由器来管理路由*/

app.use("/users",users);
app.use("/index",index);
app.use("/details",details);
app.use("/products",products);