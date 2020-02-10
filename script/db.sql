	-- 创建名称为“testdb”数据库，并设定编码集为utf8
	CREATE DATABASE
	IF
		NOT EXISTS mybatis_generator DEFAULT CHARSET utf8 COLLATE utf8_general_ci;
	-- 创建了一个名为：test 密码为：123456 的用户
	-- 如果想远程登录的话，将"localhost"改为"%"，表示在任何一台电脑上都可以登录。也可以指定某台机器可以远程登录。
	CREATE USER 'test' @'%' IDENTIFIED BY '123456';

	-- 授予用户test通过外网IP对数据库“testdb”的全部权限
	grant all privileges on mybatis_generator.* to 'test'@'%' with grant option;


	-- 刷新权限
	flush privileges;

	-- 授予用户“test”通过外网IP对于该数据库“testdb”中表的创建、修改、删除权限,以及表数据的增删查改权限
	grant create,alter,drop,select,insert,update,delete on mybatis_generator.* to test@'%';

	-- 刷新权限
	flush privileges;


	 CREATE TABLE `mybatis_generator`.`user`  (
		`id` bigint(32) NOT NULL COMMENT '主键',
		`user_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用户名',
		`password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '密码',
		`login_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '登录名',
		PRIMARY KEY (`id`) USING BTREE
	) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

