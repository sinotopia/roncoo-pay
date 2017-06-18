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

-- // add table rp_user_bank_account
-- Migration SQL that makes the change goes here.
/*==============================================================*/
/* table: rp_user_bank_account                                  */
/*==============================================================*/
CREATE TABLE `rp_user_bank_account`
(
  id                VARCHAR(50)  NOT NULL,
  create_time       DATETIME     NOT NULL,
  edit_time         DATETIME,
  version           BIGINT       NOT NULL,
  remark            VARCHAR(200),
  status            VARCHAR(36)  NOT NULL,
  user_no           VARCHAR(50)  NOT NULL,
  bank_name         VARCHAR(200) NOT NULL,
  bank_code         VARCHAR(50)  NOT NULL,
  bank_account_name VARCHAR(100) NOT NULL,
  bank_account_no   VARCHAR(36)  NOT NULL,
  card_type         VARCHAR(36)  NOT NULL,
  card_no           VARCHAR(36)  NOT NULL,
  mobile_no         VARCHAR(50)  NOT NULL,
  is_default        VARCHAR(36),
  province          VARCHAR(20),
  city              VARCHAR(20),
  areas             VARCHAR(20),
  street            VARCHAR(300),
  bank_account_type VARCHAR(36)  NOT NULL,
  PRIMARY KEY (id)
)
  COMMENT = 'user_bank_account';

-- //@UNDO
-- SQL to undo the change goes here.
DROP TABLE IF EXISTS `rp_user_bank_account`;

