SET NAMES UTF8;
DROP DATABASE IF EXISTS traveling;
CREATE DATABASE traveling CHARSET=UTF8;
USE traveling;


CREATE TABLE `product` (
  `pid` int(11) NOT NULL,
  `title` varchar(64) DEFAULT NULL,
  `details` varchar(128) DEFAULT NULL,
  `pic` varchar(128) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `href` varchar(128) DEFAULT NULL,
  `seq_recommended` tinyint(4) DEFAULT NULL,
  `seq_new_arrival` tinyint(4) DEFAULT NULL,
  `seq_top_sale` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



INSERT INTO `product` (`pid`, `title`, `details`, `pic`, 
`price`, `href`, `seq_recommended`, `seq_new_arrival`, `seq_top_sale`) VALUES
(1, '国内游玩', '杭州直飞北京往返五日', 'img/index/fir1.png', 
'6888.00', 'product_details.html?lid=1', 1, 1, 1),
(2, '国内游玩', '杭州直飞北京往返五日', 'img/index/fir2.jpg', '3488.00',
'product_details.html?lid=2', 2, 2, 2),
(3, '国内游玩', '杭州直飞北京往返五日', 'img/index/o3.png', '5399.00', 
'product_details.html?lid=3', 3, 3, 3),
(4, '国内游玩', '杭州直飞北京往返五日', 'img/index/o4.png', '4966.00',
'product_details.html?lid=4', 4, 4, 4),
(5, '国内游玩', '杭州直飞北京往返五日', 'img/index/fir3.jpg',
'6299.00', 'product_details.html?lid=5', 5, 5, 5),
(6, '国内游玩', '杭州直飞北京往返五日', 'img/index/fir4.jpg', '5199.00', 
'product_details.html?lid=6', 6, 6, 6),
(7, '国内游玩', '杭州直飞北京往返五日', 'img/index/fir4.jpg',
'5799.00', 'product_details.html?lid=7', 0, 0, 0);





SET NAMES UTF8;
DROP DATABASE IF EXISTS traveling;
CREATE DATABASE traveling CHARSET=UTF8;
USE traveling;

CREATE TABLE traveling_user(
    user_id     INT PRIMARY KEY AUTO_INCREMENT,
    user_name   VARCHAR(25) NOT NULL DEFAULT '',
    user_pwd    VARCHAR(32) NOT NULL DEFAULT '',
    user_email  VARCHAR(50) NOT NULL DEFAULT ''
);
INSERT INTO traveling_user VALUES(null,"tom","123456","tom@qq.com");
INSERT INTO traveling_user VALUES(null,"欧阳","456abc","ouYang@163.com");
INSERT INTO traveling_user VALUES(null,"james","456789","james@james.com.cn");






CREATE TABLE `product_details` (
  `lid` int(11) NOT NULL,
  `family_id` int(11) DEFAULT NULL,
  `title` varchar(128) DEFAULT NULL,
  `subtitle` varchar(128) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `promise` varchar(64) DEFAULT NULL,
  `spec` varchar(64) DEFAULT NULL
  
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `product_details` (`lid`, `family_id`, `title`, `subtitle`, `price`,
`promise`, `spec`) VALUES
(1, 1, '北京飞杭州，景点西湖，雷峰塔，三湖映月，断桥，乌镇',
'九月旅游季 引领大众出游 组团出游价格直降666', '6988.00',
'*出行无忧 *30天无忧退团 *48小时快速退款 *72小时安排团队', '北京直飞杭州5-6天' 
),
(2, 1, '北京飞杭州，景点西湖，雷峰塔，三湖映月，断桥，乌镇',
'九月旅游季 引领大众出游 组团出游价格直降666', '7988.00',
'*出行无忧 *30天无忧退团 *48小时快速退款 *72小时安排团队', '北京直飞杭州5-7天' 
),
(3, 1, '北京飞杭州，景点西湖，雷峰塔，三湖映月，断桥，乌镇',
'九月旅游季 引领大众出游 组团出游价格直降666', '8988.00',
'*出行无忧 *30天无忧退团 *48小时快速退款 *72小时安排团队', '定制北京直飞杭州5-8天' 
),
(4, 1, '北京飞杭州，景点西湖，雷峰塔，三湖映月，断桥，乌镇',
'九月旅游季 引领大众出游 组团出游价格直降666', '9988.00',
'*出行无忧 *30天无忧退团 *48小时快速退款 *72小时安排团队', '定制北京直飞杭州5-10天' 
),
(5, 2, '北京飞杭州，景点西湖，雷峰塔，三湖映月，断桥，乌镇',
'九月旅游季 引领大众出游 组团出游价格直降666', '6988.00',
'*出行无忧 *30天无忧退团 *48小时快速退款 *72小时安排团队', '北京直飞杭州5-6天' 
),
(6, 2, '北京飞杭州，景点西湖，雷峰塔，三湖映月，断桥，乌镇',
'九月旅游季 引领大众出游 组团出游价格直降666', '7988.00',
'*出行无忧 *30天无忧退团 *48小时快速退款 *72小时安排团队', '北京直飞杭州5-6天' 
),
(7, 2, '北京飞杭州，景点西湖，雷峰塔，三湖映月，断桥，乌镇',
'九月旅游季 引领大众出游 组团出游价格直降666', '6988.00',
'*出行无忧 *30天无忧退团 *48小时快速退款 *72小时安排团队', '北京直飞杭州5-6天' 
),
(8, 2, '北京飞杭州，景点西湖，雷峰塔，三湖映月，断桥，乌镇',
'九月旅游季 引领大众出游 组团出游价格直降666', '9988.00',
'*出行无忧 *30天无忧退团 *48小时快速退款 *72小时安排团队', '北京直飞杭州5-12天' 
)

(9, 3, '北京飞杭州，景点西湖，雷峰塔，三湖映月，断桥，乌镇',
'九月旅游季 引领大众出游 组团出游价格直降666', '2288.00',
'*出行无忧 *30天无忧退团 *48小时快速退款 *72小时安排团队', '北京直飞杭州5-12天' 
),
(10, 3, '北京飞杭州，景点西湖，雷峰塔，三湖映月，断桥，乌镇',
'九月旅游季 引领大众出游 组团出游价格直降666', '3388.00',
'*出行无忧 *30天无忧退团 *48小时快速退款 *72小时安排团队', '北京直飞杭州5-12天' 
),
(11, 3, '北京飞杭州，景点西湖，雷峰塔，三湖映月，断桥，乌镇',
'九月旅游季 引领大众出游 组团出游价格直降666', '4488.00',
'*出行无忧 *30天无忧退团 *48小时快速退款 *72小时安排团队', '北京直飞杭州5-12天' 
),
(12, 3, '北京飞杭州，景点西湖，雷峰塔，三湖映月，断桥，乌镇',
'九月旅游季 引领大众出游 组团出游价格直降666', '5588.00',
'*出行无忧 *30天无忧退团 *48小时快速退款 *72小时安排团队', '北京直飞杭州5-12天' 
),

(13, 4, '北京飞杭州，景点西湖，雷峰塔，三湖映月，断桥，乌镇',
'九月旅游季 引领大众出游 组团出游价格直降666', '6666.00',
'*出行无忧 *30天无忧退团 *48小时快速退款 *72小时安排团队', '北京直飞杭州5-12天' 
),
(14, 4, '北京飞杭州，景点西湖，雷峰塔，三湖映月，断桥，乌镇',
'九月旅游季 引领大众出游 组团出游价格直降666', '6688.00',
'*出行无忧 *30天无忧退团 *48小时快速退款 *72小时安排团队', '北京直飞杭州5-12天' 
),
(15, 4, '北京飞杭州，景点西湖，雷峰塔，三湖映月，断桥，乌镇',
'九月旅游季 引领大众出游 组团出游价格直降666', '8666.00',
'*出行无忧 *30天无忧退团 *48小时快速退款 *72小时安排团队', '北京直飞杭州5-12天' 
),
(16, 4, '北京飞杭州，景点西湖，雷峰塔，三湖映月，断桥，乌镇',
'九月旅游季 引领大众出游 组团出游价格直降666', '8888.00',
'*出行无忧 *30天无忧退团 *48小时快速退款 *72小时安排团队', '北京直飞杭州5-12天' 
),

(17, 5, '北京飞杭州，景点西湖，雷峰塔，三湖映月，断桥，乌镇',
'九月旅游季 引领大众出游 组团出游价格直降666', '6888.00',
'*出行无忧 *30天无忧退团 *48小时快速退款 *72小时安排团队', '北京直飞杭州5-12天' 
),
(18, 5, '北京飞杭州，景点西湖，雷峰塔，三湖映月，断桥，乌镇',
'九月旅游季 引领大众出游 组团出游价格直降666', '7888.00',
'*出行无忧 *30天无忧退团 *48小时快速退款 *72小时安排团队', '北京直飞杭州5-12天' 
),
(19, 5, '北京飞杭州，景点西湖，雷峰塔，三湖映月，断桥，乌镇',
'九月旅游季 引领大众出游 组团出游价格直降666', '8888.00',
'*出行无忧 *30天无忧退团 *48小时快速退款 *72小时安排团队', '北京直飞杭州5-12天' 
),
(20, 5, '北京飞杭州，景点西湖，雷峰塔，三湖映月，断桥，乌镇',
'九月旅游季 引领大众出游 组团出游价格直降666', '9888.00',
'*出行无忧 *30天无忧退团 *48小时快速退款 *72小时安排团队', '北京直飞杭州5-12天' 
),

(21, 6, '北京飞杭州，景点西湖，雷峰塔，三湖映月，断桥，乌镇',
'九月旅游季 引领大众出游 组团出游价格直降666', '3666.00',
'*出行无忧 *30天无忧退团 *48小时快速退款 *72小时安排团队', '北京直飞杭州5-12天' 
),
(22, 6, '北京飞杭州，景点西湖，雷峰塔，三湖映月，断桥，乌镇',
'九月旅游季 引领大众出游 组团出游价格直降666', '4666.00',
'*出行无忧 *30天无忧退团 *48小时快速退款 *72小时安排团队', '北京直飞杭州5-12天' 
),
(23, 6, '北京飞杭州，景点西湖，雷峰塔，三湖映月，断桥，乌镇',
'九月旅游季 引领大众出游 组团出游价格直降666', '5668.00',
'*出行无忧 *30天无忧退团 *48小时快速退款 *72小时安排团队', '北京直飞杭州5-12天' 
),
(24, 6, '北京飞杭州，景点西湖，雷峰塔，三湖映月，断桥，乌镇',
'九月旅游季 引领大众出游 组团出游价格直降666', '6888.00',
'*出行无忧 *30天无忧退团 *48小时快速退款 *72小时安排团队', '北京直飞杭州5-12天' 
)


CREATE TABLE `details_pic` (
  `pid` int(11) NOT NULL,
  `view_id` int(11) DEFAULT NULL,
  `sm` varchar(128) DEFAULT NULL,
  `md` varchar(128) DEFAULT NULL,
  `lg` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `details_pic` (`pid`, `view_id`, `sm`, `md`, `lg`) VALUES
(1, 1, 'img/details/sm/details1.jpg', 'img/details/md/details1.jpg', 'img/details/lg/details1.jpg'),
(2, 1, 'img/details/sm/details2.jpg', 'img/details/md/details2.jpg', 'img/details/lg/details2.jpg'),
(3, 1, 'img/details/sm/details4.jpg', 'img/details/md/details4.jpg', 'img/details/lg/details4.jpg'),
(4, 1, 'img/details/sm/details3.jpg', 'img/details/md/details3.jpg', 'img/details/lg/details3.jpg'),
(5, 2, 'img/details/sm/details5.jpg', 'img/details/md/details5.jpg', 'img/details/lg/details5.jpg'),
(6, 2, 'img/details/sm/details6.jpg', 'img/details/md/details6.jpg', 'img/details/lg/details6.jpg'),
(7, 2, 'img/details/sm/details7.jpg', 'img/details/md/details7.jpg', 'img/details/lg/details7.jpg'),
(8, 3, 'img/details/sm/details8.jpg', 'img/details/md/details8.jpg', 'img/details/lg/details8.jpg'),
(9, 3, 'img/details/sm/details4.jpg', 'img/details/md/details4.jpg', 'img/details/lg/details4.jpg'),
(11, 3, 'img/details/sm/details2.jpg', 'img/details/md/details2.jpg', 'img/details/lg/details2.jpg'),
(12, 4, 'img/details/sm/details3.jpg', 'img/details/md/details3.jpg', 'img/details/lg/details3.jpg'),
(13, 4, 'img/details/sm/details2.jpg', 'img/details/md/details2.jpg', 'img/details/lg/details2.jpg'),
(14, 4, 'img/details/sm/details2.jpg', 'img/details/md/details2.jpg', 'img/details/lg/details2.jpg'),
(15, 5, 'img/details/sm/details4.jpg', 'img/details/md/details4.jpg', 'img/details/lg/details4.jpg'),
(16, 5, 'img/details/sm/details1.jpg', 'img/details/md/details1.jpg', 'img/details/lg/details1.jpg'),
(17, 5, 'img/details/sm/details8.jpg', 'img/details/md/details8.jpg', 'img/details/lg/details8.jpg'),
(18, 6, 'img/details/sm/details1.jpg', 'img/details/md/details1.jpg', 'img/details/lg/details1.jpg'),
(19, 6, 'img/details/sm/details5.jpg', 'img/details/md/details5.jpg', 'img/details/lg/details5.jpg'),
(20, 6, 'img/details/sm/details3.jpg', 'img/details/md/details3.jpg', 'img/details/lg/details3.jpg'),
(21, 7, 'img/details/sm/details1.jpg', 'img/details/md/details1.jpg', 'img/details/lg/details1.jpg'),
(22, 8, 'img/details/sm/details5.jpg', 'img/details/md/details5.jpg', 'img/details/lg/details5.jpg'),
(23, 8, 'img/details/sm/details3.jpg', 'img/details/md/details3.jpg', 'img/details/lg/details3.jpg'),
(24, 8, 'img/details/sm/details1.jpg', 'img/details/md/details1.jpg', 'img/details/lg/details1.jpg'),
(25, 9, 'img/details/sm/details5.jpg', 'img/details/md/details5.jpg', 'img/details/lg/details5.jpg'),
(26, 9, 'img/details/sm/details3.jpg', 'img/details/md/details3.jpg', 'img/details/lg/details3.jpg'),
(27, 10, 'img/details/sm/details1.jpg', 'img/details/md/details1.jpg', 'img/details/lg/details1.jpg'),
(28, 10, 'img/details/sm/details5.jpg', 'img/details/md/details5.jpg', 'img/details/lg/details5.jpg'),
(29, 10, 'img/details/sm/details3.jpg', 'img/details/md/details3.jpg', 'img/details/lg/details3.jpg')





CREATE TABLE `traveling_user` (
  
  `uid`   INT PRIMARY KEY AUTO_INCREMENT,
  `uname` varchar(32) DEFAULT  NULL,
  `upwd` varchar(32) DEFAULT  NULL,
  `email` varchar(64) DEFAULT  NULL
  
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
INSERT INTO `traveling_user` (`uid`, `uname`, `upwd`, `email`) VALUES
(null, 'dingding', '123456', 'ding@qq.com'),
(null, 'dangdang', '123456', 'dang@qq.com'),
(null, 'doudou', '123456', 'dou@qq.com'),
(null, 'yaya', '123456', 'ya@qq.com')