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

-- // add table rp_user_info
-- Migration SQL that makes the change goes here.

/*==============================================================*/
/* table: rp_user_info                                          */
/*==============================================================*/
CREATE TABLE `rp_user_info`
(
  id          VARCHAR(50) NOT NULL,
  create_time DATETIME    NOT NULL,
  status      VARCHAR(36) NOT NULL,
  user_no     VARCHAR(50),
  user_name   VARCHAR(100),
  account_no  VARCHAR(50) NOT NULL,
  PRIMARY KEY (id),
  UNIQUE KEY ak_key_2 (account_no)
)
  COMMENT = 'user_info';

-- //@UNDO
-- SQL to undo the change goes here.
DROP TABLE IF EXISTS `rp_user_info`;

