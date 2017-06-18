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

-- // add table rp_account_history
-- Migration SQL that makes the change goes here.

/*==============================================================*/
/* table: rp_account_history                                    */
/*==============================================================*/
CREATE TABLE `rp_account_history`
(
  id               VARCHAR(50)    NOT NULL,
  create_time      DATETIME       NOT NULL,
  edit_time        DATETIME,
  version          BIGINT         NOT NULL,
  remark           VARCHAR(200),
  account_no       VARCHAR(50)    NOT NULL,
  amount           DECIMAL(20, 6) NOT NULL,
  balance          DECIMAL(20, 6) NOT NULL,
  fund_direction   VARCHAR(36)    NOT NULL,
  is_allow_sett    VARCHAR(36)    NOT NULL,
  is_complete_sett VARCHAR(36)    NOT NULL,
  request_no       VARCHAR(36)    NOT NULL,
  bank_trx_no      VARCHAR(30),
  trx_type         VARCHAR(36)    NOT NULL,
  risk_day         INT,
  user_no          VARCHAR(50),
  PRIMARY KEY (id)
)
  COMMENT = 'cash account history';

-- //@UNDO
-- SQL to undo the change goes here.

DROP TABLE IF EXISTS `rp_account_history`;
