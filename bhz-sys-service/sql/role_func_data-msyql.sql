insert into SYS_ROLE (role_code, role_name, disable_flag, desc_info, create_by, create_time, update_by, update_time)
values ('SYS_ADMIN', '系统管理员', '0', '1', 'SYS_INIT', now(), 'SYS_INIT', now());
insert into SYS_USER (user_id, password, user_name, role_code, org_id, email, login_count, last_login_time, last_login_ip, disable_flag, desc_info, create_by, create_time, update_by, update_time)
values ('admin', '21232f297a57a5a743894a0e4a801fc3', 'admin', 'SYS_ADMIN', null, null, null, null, null, '0', null, 'SYS_INIT', now(), 'SYS_INIT', now());


INSERT INTO SYS_FUNC VALUES('01', '系统运行', '1', '', null, '0',  '', 'SYS_INIT',now(),'SYS_INIT',now());
INSERT INTO SYS_FUNC VALUES('02', '基础信息', '1', '', null, '0',  '', 'SYS_INIT',now(),'SYS_INIT',now());
INSERT INTO SYS_FUNC VALUES('03', '检测数据', '1', '', null, '0',  '', 'SYS_INIT',now(),'SYS_INIT',now());
INSERT INTO SYS_FUNC VALUES('04', '统计分析', '1', '', null, '0',  '', 'SYS_INIT',now(),'SYS_INIT',now());
INSERT INTO SYS_FUNC VALUES('05', '消息服务', '1', '', null, '0',  '', 'SYS_INIT',now(),'SYS_INIT',now());


INSERT INTO SYS_FUNC VALUES('0101', '人员管理', '2', '', '1', '0', '', 'SYS_INIT',now(),'SYS_INIT',now());
INSERT INTO SYS_FUNC VALUES('0102', '权限配置', '2', '', '2', '0', '', 'SYS_INIT',now(),'SYS_INIT',now());
INSERT INTO SYS_FUNC VALUES('0103', '系统设置', '2', '', '3', '0', '', 'SYS_INIT',now(),'SYS_INIT',now());

INSERT INTO SYS_FUNC VALUES('0201', '组织管理', '2', '', '1', '0', '', 'SYS_INIT',now(),'SYS_INIT',now());
INSERT INTO SYS_FUNC VALUES('0202', '站点管理', '2', '', '2', '0', '', 'SYS_INIT',now(),'SYS_INIT',now());

INSERT INTO SYS_FUNC VALUES('0301', '数据报送', '2', '', '1', '0', '', 'SYS_INIT',now(),'SYS_INIT',now());

INSERT INTO SYS_FUNC VALUES('0401', '综合查询', '2', '', '1', '0', '', 'SYS_INIT',now(),'SYS_INIT',now());
INSERT INTO SYS_FUNC VALUES('0402', '统计分析', '2', '', '2', '0', '', 'SYS_INIT',now(),'SYS_INIT',now());

INSERT INTO SYS_FUNC VALUES('0501', 'ZK配置',   '2', '', '1', '0', '', 'SYS_INIT',now(),'SYS_INIT',now());
INSERT INTO SYS_FUNC VALUES('0502', 'MQ配置',   '2', '', '2', '0', '', 'SYS_INIT',now(),'SYS_INIT',now());


INSERT INTO SYS_FUNC VALUES('010101', '用户列表', '3', '', '1', '0', '', 'SYS_INIT',now(),'SYS_INIT',now());
INSERT INTO SYS_FUNC VALUES('010102', '角色管理', '3', '', '2', '0', '', 'SYS_INIT',now(),'SYS_INIT',now());
INSERT INTO SYS_FUNC VALUES('010201', '人员权限', '3', '', '1', '0', '', 'SYS_INIT',now(),'SYS_INIT',now());
INSERT INTO SYS_FUNC VALUES('010202', '数据权限', '3', '', '2', '0', '', 'SYS_INIT',now(),'SYS_INIT',now());
INSERT INTO SYS_FUNC VALUES('010301', '系统参数', '3', '', '1', '0', '', 'SYS_INIT',now(),'SYS_INIT',now());

INSERT INTO SYS_FUNC VALUES('020101', '机构列表', '3', '', '1', '0', '', 'SYS_INIT',now(),'SYS_INIT',now());
INSERT INTO SYS_FUNC VALUES('020201', '站点列表', '3', '', '1', '0', '', 'SYS_INIT',now(),'SYS_INIT',now());
INSERT INTO SYS_FUNC VALUES('020202', '设备列表', '3', '', '2', '0', '', 'SYS_INIT',now(),'SYS_INIT',now());

INSERT INTO SYS_FUNC VALUES('030101', '检测数据', '3', '', '1', '0', '', 'SYS_INIT',now(),'SYS_INIT',now());

INSERT INTO SYS_FUNC VALUES('040101', '单车数据查询',        '3', '', '1', '0', '', 'SYS_INIT',now(),'SYS_INIT',now());
INSERT INTO SYS_FUNC VALUES('040102', '日平均超限数据查询',  '3', '', '2', '0', '', 'SYS_INIT',now(),'SYS_INIT',now());
INSERT INTO SYS_FUNC VALUES('040201', '日数据',              '3', '', '1', '0', '', 'SYS_INIT',now(),'SYS_INIT',now());
INSERT INTO SYS_FUNC VALUES('040202', '月数据',              '3', '', '2', '0', '', 'SYS_INIT',now(),'SYS_INIT',now());
INSERT INTO SYS_FUNC VALUES('040203', '季度数据',            '3', '', '3', '0', '', 'SYS_INIT',now(),'SYS_INIT',now());
INSERT INTO SYS_FUNC VALUES('040204', '年数据',              '3', '', '4', '0', '', 'SYS_INIT',now(),'SYS_INIT',now());


INSERT INTO SYS_FUNC VALUES('050101', 'ZK列表', 			 '3', '', '1', '0', '', 'SYS_INIT',now(),'SYS_INIT',now());

INSERT INTO SYS_ROLE_FUNC VALUES('SYS_ADMIN','01');
INSERT INTO SYS_ROLE_FUNC VALUES('SYS_ADMIN','02');
INSERT INTO SYS_ROLE_FUNC VALUES('SYS_ADMIN','03');
INSERT INTO SYS_ROLE_FUNC VALUES('SYS_ADMIN','04');
INSERT INTO SYS_ROLE_FUNC VALUES('SYS_ADMIN','05');

INSERT INTO SYS_ROLE_FUNC VALUES('SYS_ADMIN','0101');
INSERT INTO SYS_ROLE_FUNC VALUES('SYS_ADMIN','0102');
INSERT INTO SYS_ROLE_FUNC VALUES('SYS_ADMIN','0103');

INSERT INTO SYS_ROLE_FUNC VALUES('SYS_ADMIN','0201');
INSERT INTO SYS_ROLE_FUNC VALUES('SYS_ADMIN','0202');

INSERT INTO SYS_ROLE_FUNC VALUES('SYS_ADMIN','0301');

INSERT INTO SYS_ROLE_FUNC VALUES('SYS_ADMIN','0401');
INSERT INTO SYS_ROLE_FUNC VALUES('SYS_ADMIN','0402');

INSERT INTO SYS_ROLE_FUNC VALUES('SYS_ADMIN','0501');
INSERT INTO SYS_ROLE_FUNC VALUES('SYS_ADMIN','0502');

INSERT INTO SYS_ROLE_FUNC VALUES('SYS_ADMIN','010101');
INSERT INTO SYS_ROLE_FUNC VALUES('SYS_ADMIN','010102');
INSERT INTO SYS_ROLE_FUNC VALUES('SYS_ADMIN','010201');
INSERT INTO SYS_ROLE_FUNC VALUES('SYS_ADMIN','010202');
INSERT INTO SYS_ROLE_FUNC VALUES('SYS_ADMIN','010301');

INSERT INTO SYS_ROLE_FUNC VALUES('SYS_ADMIN','020101');
INSERT INTO SYS_ROLE_FUNC VALUES('SYS_ADMIN','020201');
INSERT INTO SYS_ROLE_FUNC VALUES('SYS_ADMIN','020202');

INSERT INTO SYS_ROLE_FUNC VALUES('SYS_ADMIN','030101');

INSERT INTO SYS_ROLE_FUNC VALUES('SYS_ADMIN','040101');
INSERT INTO SYS_ROLE_FUNC VALUES('SYS_ADMIN','040102');
INSERT INTO SYS_ROLE_FUNC VALUES('SYS_ADMIN','040201');
INSERT INTO SYS_ROLE_FUNC VALUES('SYS_ADMIN','040202');
INSERT INTO SYS_ROLE_FUNC VALUES('SYS_ADMIN','040203');
INSERT INTO SYS_ROLE_FUNC VALUES('SYS_ADMIN','040204');

INSERT INTO SYS_ROLE_FUNC VALUES('SYS_ADMIN','050101');

COMMIT;
