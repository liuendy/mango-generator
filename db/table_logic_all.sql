USE lc_0;

CREATE TABLE lc_a_0 (
  id bigint(20) NOT NULL COMMENT 'id',
  login_name varchar(200) NOT NULL COMMENT '登录名',
  login_pwd varchar(200) DEFAULT NULL COMMENT '登录密码',
  member_id bigint(20) NOT NULL COMMENT '用户id',
  create_time datetime NOT NULL COMMENT '创建时间',
  update_time datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (id),
  UNIQUE KEY login_name (login_name) USING BTREE,
  KEY member_id (member_id) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户登录表';



CREATE TABLE lc_a_1 (
  id bigint(20) NOT NULL COMMENT 'id',
  login_name varchar(200) NOT NULL COMMENT '登录名',
  login_pwd varchar(200) DEFAULT NULL COMMENT '登录密码',
  member_id bigint(20) NOT NULL COMMENT '用户id',
  create_time datetime NOT NULL COMMENT '创建时间',
  update_time datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (id),
  UNIQUE KEY login_name (login_name) USING BTREE,
  KEY member_id (member_id) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户登录表';



USE lc_1;

CREATE TABLE lc_a_2 (
  id bigint(20) NOT NULL COMMENT 'id',
  login_name varchar(200) NOT NULL COMMENT '登录名',
  login_pwd varchar(200) DEFAULT NULL COMMENT '登录密码',
  member_id bigint(20) NOT NULL COMMENT '用户id',
  create_time datetime NOT NULL COMMENT '创建时间',
  update_time datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (id),
  UNIQUE KEY login_name (login_name) USING BTREE,
  KEY member_id (member_id) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户登录表';



CREATE TABLE lc_a_3 (
  id bigint(20) NOT NULL COMMENT 'id',
  login_name varchar(200) NOT NULL COMMENT '登录名',
  login_pwd varchar(200) DEFAULT NULL COMMENT '登录密码',
  member_id bigint(20) NOT NULL COMMENT '用户id',
  create_time datetime NOT NULL COMMENT '创建时间',
  update_time datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (id),
  UNIQUE KEY login_name (login_name) USING BTREE,
  KEY member_id (member_id) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户登录表';



USE lc_0;


CREATE TABLE lc_b_0 (
  id bigint(20) NOT NULL COMMENT 'id',
  login_name varchar(200) NOT NULL COMMENT '登录名',
  login_pwd varchar(200) DEFAULT NULL COMMENT '登录密码',
  member_id bigint(20) NOT NULL COMMENT '用户id',
  create_time datetime NOT NULL COMMENT '创建时间',
  update_time datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (id),
  UNIQUE KEY login_name (login_name) USING BTREE,
  KEY member_id (member_id) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户登录表';





CREATE TABLE lc_b_1 (
  id bigint(20) NOT NULL COMMENT 'id',
  login_name varchar(200) NOT NULL COMMENT '登录名',
  login_pwd varchar(200) DEFAULT NULL COMMENT '登录密码',
  member_id bigint(20) NOT NULL COMMENT '用户id',
  create_time datetime NOT NULL COMMENT '创建时间',
  update_time datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (id),
  UNIQUE KEY login_name (login_name) USING BTREE,
  KEY member_id (member_id) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户登录表';




USE lc_1;


CREATE TABLE lc_b_2 (
  id bigint(20) NOT NULL COMMENT 'id',
  login_name varchar(200) NOT NULL COMMENT '登录名',
  login_pwd varchar(200) DEFAULT NULL COMMENT '登录密码',
  member_id bigint(20) NOT NULL COMMENT '用户id',
  create_time datetime NOT NULL COMMENT '创建时间',
  update_time datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (id),
  UNIQUE KEY login_name (login_name) USING BTREE,
  KEY member_id (member_id) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户登录表';





CREATE TABLE lc_b_3 (
  id bigint(20) NOT NULL COMMENT 'id',
  login_name varchar(200) NOT NULL COMMENT '登录名',
  login_pwd varchar(200) DEFAULT NULL COMMENT '登录密码',
  member_id bigint(20) NOT NULL COMMENT '用户id',
  create_time datetime NOT NULL COMMENT '创建时间',
  update_time datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (id),
  UNIQUE KEY login_name (login_name) USING BTREE,
  KEY member_id (member_id) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户登录表';




