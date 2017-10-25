ALTER TABLE SYS_ROLE_FUNC
  DROP FOREIGN KEY FK_SYS_ROLE_FUNC_FUNC;
ALTER TABLE SYS_ROLE_FUNC
  DROP FOREIGN KEY FK_SYS_ROLE_FUNC_ROLE;
ALTER TABLE SYS_USER
  DROP FOREIGN KEY FK_SYS_USER_ROLE;

DROP TABLE IF EXISTS SYS_FILE;

DROP TABLE IF EXISTS SYS_FUNC;

DROP TABLE IF EXISTS SYS_LOG;

DROP TABLE IF EXISTS SYS_PARAM;

DROP TABLE IF EXISTS SYS_ROLE;

DROP TABLE IF EXISTS SYS_ROLE_FUNC;

DROP TABLE IF EXISTS SYS_TASK;

DROP TABLE IF EXISTS SYS_USER;

/*==============================================================*/
/* Table: SYS_FILE                                              */
/*==============================================================*/
CREATE TABLE SYS_FILE
(
  `KEY`       VARCHAR(32) NOT NULL,
  `TYPE`      VARCHAR(1)  NOT NULL,
  NAME        VARCHAR(80) NOT NULL,
  EXT         VARCHAR(8),
  BYTES       DECIMAL(12) NOT NULL,
  `DATA`      BLOB        NOT NULL,
  EXPIRED     TIMESTAMP,
  DESC_INFO   VARCHAR(200),
  UPDATE_BY   VARCHAR(40) NOT NULL,
  UPDATE_TIME TIMESTAMP   NOT NULL,
  PRIMARY KEY (`KEY`)
)
  ENGINE = InnoDB
  AUTO_INCREMENT = 1
  DEFAULT CHARSET = utf8;

/*==============================================================*/
/* Table: SYS_FUNC                                              */
/*==============================================================*/
CREATE TABLE SYS_FUNC
(
  FUNC_CODE    VARCHAR(40) NOT NULL,
  FUNC_NAME    VARCHAR(40),
  FUNC_TYPE    VARCHAR(40),
  FUNC_PATH    VARCHAR(40),
  ORDER_SEQ    DECIMAL(10),
  DISABLE_FLAH VARCHAR(1),
  DESC_INFO    VARCHAR(200),
  CREATE_BY    VARCHAR(40) NOT NULL,
  CREATE_TIME  TIMESTAMP   NOT NULL,
  UPDATE_BY    VARCHAR(40) NOT NULL,
  UPDATE_TIME  TIMESTAMP   NOT NULL,
  PRIMARY KEY (FUNC_CODE)
)
  ENGINE = InnoDB
  AUTO_INCREMENT = 1
  DEFAULT CHARSET = utf8;

/*==============================================================*/
/* Table: SYS_LOG                                               */
/*==============================================================*/
CREATE TABLE SYS_LOG
(
  LOG_TASK VARCHAR(100)  NOT NULL,
  LOG_TIME TIMESTAMP     NOT NULL,
  LOG_TEXT VARCHAR(1000) NOT NULL,
  REF01    VARCHAR(200),
  REF02    VARCHAR(200),
  REF03    VARCHAR(200),
  REF04    VARCHAR(200),
  REF05    VARCHAR(200),
  REF06    VARCHAR(200),
  REF07    VARCHAR(200),
  REF08    VARCHAR(200),
  REF09    VARCHAR(200),
  REF10    VARCHAR(200)
)
  ENGINE = InnoDB
  AUTO_INCREMENT = 1
  DEFAULT CHARSET = utf8;

/*==============================================================*/
/* Table: SYS_PARAM                                             */
/*==============================================================*/
CREATE TABLE SYS_PARAM
(
  PARAM_CODE  VARCHAR(40) NOT NULL,
  PARAM_NAME  VARCHAR(40),
  PARAM_VALUE VARCHAR(40),
  DESC_INFO   VARCHAR(200),
  CREATE_BY   VARCHAR(40) NOT NULL,
  CREATE_TIME TIMESTAMP   NOT NULL,
  UPDATE_BY   VARCHAR(40) NOT NULL,
  UPDATE_TIME TIMESTAMP   NOT NULL,
  PRIMARY KEY (PARAM_CODE)
)
  ENGINE = InnoDB
  AUTO_INCREMENT = 1
  DEFAULT CHARSET = utf8;

/*==============================================================*/
/* Table: SYS_ROLE                                              */
/*==============================================================*/
CREATE TABLE SYS_ROLE
(
  ROLE_CODE    VARCHAR(40) NOT NULL,
  ROLE_NAME    VARCHAR(40),
  DISABLE_FLAG VARCHAR(1),
  DESC_INFO    VARCHAR(200),
  CREATE_BY    VARCHAR(40) NOT NULL,
  CREATE_TIME  TIMESTAMP   NOT NULL,
  UPDATE_BY    VARCHAR(40) NOT NULL,
  UPDATE_TIME  TIMESTAMP   NOT NULL,
  PRIMARY KEY (ROLE_CODE)
)
  ENGINE = InnoDB
  AUTO_INCREMENT = 1
  DEFAULT CHARSET = utf8;

/*==============================================================*/
/* Table: SYS_ROLE_FUNC                                         */
/*==============================================================*/
CREATE TABLE SYS_ROLE_FUNC
(
  ROLE_CODE VARCHAR(40) NOT NULL,
  FUNC_CODE VARCHAR(40) NOT NULL,
  PRIMARY KEY (ROLE_CODE, FUNC_CODE)
)
  ENGINE = InnoDB
  AUTO_INCREMENT = 1
  DEFAULT CHARSET = utf8;

/*==============================================================*/
/* Table: SYS_TASK                                              */
/*==============================================================*/
CREATE TABLE SYS_TASK
(
  TASK_CODE VARCHAR(40)  NOT NULL,
  TASK_NAME VARCHAR(100) NOT NULL,
  LAST_TIME TIMESTAMP,
  UNIQUE KEY (TASK_CODE)
)
  ENGINE = InnoDB
  AUTO_INCREMENT = 1
  DEFAULT CHARSET = utf8;

/*==============================================================*/
/* Table: SYS_USER                                              */
/*==============================================================*/
CREATE TABLE SYS_USER
(
  USER_ID         VARCHAR(40)  NOT NULL,
  PASSWORD        VARCHAR(128) NOT NULL,
  USER_NAME       VARCHAR(40)  NOT NULL,
  ROLE_CODE       VARCHAR(40),
  ORG_ID          VARCHAR(32),
  EMAIL           VARCHAR(40),
  LOGIN_COUNT     DECIMAL(10),
  LAST_LOGIN_TIME TIMESTAMP,
  LAST_LOGIN_IP   VARCHAR(40),
  DISABLE_FLAG    VARCHAR(1),
  DESC_INFO       VARCHAR(200),
  CREATE_BY       VARCHAR(40)  NOT NULL,
  CREATE_TIME     TIMESTAMP    NOT NULL,
  UPDATE_BY       VARCHAR(40)  NOT NULL,
  UPDATE_TIME     TIMESTAMP    NOT NULL,
  PRIMARY KEY (USER_ID),
  UNIQUE KEY (USER_NAME)
)
  ENGINE = InnoDB
  AUTO_INCREMENT = 1
  DEFAULT CHARSET = utf8;

/*
添加索引
*/
ALTER TABLE SYS_ROLE_FUNC
  ADD CONSTRAINT FK_SYS_ROLE_FUNC_FUNC FOREIGN KEY (FUNC_CODE)
REFERENCES SYS_FUNC (FUNC_CODE);

ALTER TABLE SYS_ROLE_FUNC
  ADD CONSTRAINT FK_SYS_ROLE_FUNC_ROLE FOREIGN KEY (ROLE_CODE)
REFERENCES SYS_ROLE (ROLE_CODE);

ALTER TABLE SYS_USER
  ADD CONSTRAINT FK_SYS_USER_ROLE FOREIGN KEY (ROLE_CODE)
REFERENCES SYS_ROLE (ROLE_CODE);
