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

-- // add table rp_account
-- Migration SQL that makes the change goes here.

/*==============================================================*/
/* table: rp_account                                            */
/*==============================================================*/

CREATE TABLE `rp_account`
(
  id             VARCHAR(50)    NOT NULL,
  create_time    DATETIME       NOT NULL,
  edit_time      DATETIME,
  version        BIGINT         NOT NULL,
  remark         VARCHAR(200),
  account_no     VARCHAR(50)    NOT NULL,
  balance        DECIMAL(20, 6) NOT NULL,
  unbalance      DECIMAL(20, 6) NOT NULL,
  security_money DECIMAL(20, 6) NOT NULL,
  status         VARCHAR(36)    NOT NULL,
  total_income   DECIMAL(20, 6) NOT NULL,
  total_expend   DECIMAL(20, 6) NOT NULL,
  today_income   DECIMAL(20, 6) NOT NULL,
  today_expend   DECIMAL(20, 6) NOT NULL,
  account_type   VARCHAR(50)    NOT NULL,
  sett_amount    DECIMAL(20, 6) NOT NULL,
  user_no        VARCHAR(50),
  PRIMARY KEY (id)
)
  COMMENT = 'cash account';

-- //@UNDO
-- SQL to undo the change goes here.

DROP TABLE IF EXISTS `rp_account`;

