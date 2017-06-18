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

-- // add table rp_notify_record
-- Migration SQL that makes the change goes here.
CREATE TABLE `rp_notify_record`
(
  id                 VARCHAR(50)   NOT NULL,
  version            INT           NOT NULL,
  create_time        DATETIME      NOT NULL,
  editor             VARCHAR(100) COMMENT '修改者',
  creator            VARCHAR(100) COMMENT '创建者',
  edit_time          DATETIME COMMENT '最后修改时间',
  notify_times       INT           NOT NULL,
  limit_notify_times INT           NOT NULL,
  url                VARCHAR(2000) NOT NULL,
  merchant_order_no  VARCHAR(50)   NOT NULL,
  merchant_no        VARCHAR(50)   NOT NULL,
  status             VARCHAR(50)   NOT NULL
  COMMENT '100:成功 101:失败',
  notify_type        VARCHAR(30) COMMENT '通知类型',
  PRIMARY KEY (id),
  KEY ak_key_2 (merchant_order_no)
)
  COMMENT = 'notify_record';

-- //@UNDO
-- SQL to undo the change goes here.
DROP TABLE IF EXISTS `rp_notify_record`;

