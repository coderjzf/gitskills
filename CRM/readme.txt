备忘录:修改/删除功能
当备注超过一定长度，显示...more


相关jar包：
1.mysql驱动
2.jstl jsp核心标签库
3.c3p0连接池
4.dbutils包
包
com.domain 实体类
com.dao 与数据库操作交互的部分
com.service 业务逻辑层
com.utils 工具类包(与JDBC、Web、用户令牌生成有关的工具类)
com.web.ctroller  与请求转发有关的servlet
com.web.UI 与显示页面有关的servlet
jsp  显示层

功能：
添加客户(防表单重复提交)
查看客户
修改客户信息
删除客户

customer表
create table customer(
	id int(5) primary key auto_increment,
	name varchar(10) not null,
	gender varchar(3) not null,
	birthday date,
	tel varchar(20),
	email varchar(20),
	preference varchar(20),
	description varchar(100)
)charset=utf8;