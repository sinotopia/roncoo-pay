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

-- // add table pms_menu
-- Migration SQL that makes the change goes here.

CREATE TABLE `pms_menu`
(
  id          BIGINT      NOT NULL AUTO_INCREMENT,
  version     BIGINT      NOT NULL,
  creator     VARCHAR(50) NOT NULL
  COMMENT '创建人',
  create_time DATETIME    NOT NULL
  COMMENT '创建时间',
  editor      VARCHAR(50) COMMENT '修改人',
  edit_time   DATETIME COMMENT '修改时间',
  status      VARCHAR(20) NOT NULL,
  remark      VARCHAR(300),
  is_leaf     VARCHAR(20),
  level       SMALLINT,
  parent_id   BIGINT      NOT NULL,
  target_name VARCHAR(100),
  number      VARCHAR(20),
  name        VARCHAR(100),
  url         VARCHAR(100),
  PRIMARY KEY (id)
)
  AUTO_INCREMENT = 1000;

ALTER TABLE pms_menu
  COMMENT '菜单表';

-- //@UNDO
-- SQL to undo the change goes here.
DROP TABLE IF EXISTS `pms_menu`;
