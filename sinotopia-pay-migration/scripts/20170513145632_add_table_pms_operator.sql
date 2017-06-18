--
--    Copyright 2010-2016 the original author or authors.
--
--    Licensed under the Apache License, Version 2.0 (the "License");
--    you may not use this file except in compliance with the License.
--    You may obtain a copy of the License at
--
--       http://www.apache.org/licenses/LICENSE-2.0
--
--    Unless required by applicable law or agreed to in writing, software
--    distributed under the License is distributed on an "AS IS" BASIS,
--    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
--    See the License for the specific language governing permissions and
--    limitations under the License.
--

-- // add table pms_operator
-- Migration SQL that makes the change goes here.
CREATE TABLE `pms_operator`
(
  id          BIGINT       NOT NULL AUTO_INCREMENT
  COMMENT '主键',
  version     BIGINT       NOT NULL,
  creator     VARCHAR(50)  NOT NULL
  COMMENT '创建人',
  create_time DATETIME     NOT NULL
  COMMENT '创建时间',
  editor      VARCHAR(50) COMMENT '修改人',
  edit_time   DATETIME COMMENT '修改时间',
  status      VARCHAR(20)  NOT NULL,
  remark      VARCHAR(300),
  real_name   VARCHAR(50)  NOT NULL,
  mobile_no   VARCHAR(15)  NOT NULL,
  login_name  VARCHAR(50)  NOT NULL,
  login_pwd   VARCHAR(256) NOT NULL,
  type        VARCHAR(20)  NOT NULL,
  salt        VARCHAR(50)  NOT NULL,
  PRIMARY KEY (id),
  KEY ak_key_2 (login_name)
)
  AUTO_INCREMENT = 1000;

ALTER TABLE `pms_operator`
  COMMENT '操作员表';

-- //@UNDO
-- SQL to undo the change goes here.
DROP TABLE IF EXISTS `pms_operator`;

