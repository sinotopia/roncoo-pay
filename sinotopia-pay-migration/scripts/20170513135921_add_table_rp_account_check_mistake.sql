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

-- // add table rp_account_check_mistake
-- Migration SQL that makes the change goes here.
CREATE TABLE `rp_account_check_mistake`
(
  id                     VARCHAR(50)  NOT NULL,
  version                INT UNSIGNED NOT NULL,
  create_time            DATETIME     NOT NULL,
  editor                 VARCHAR(100) COMMENT '修改者',
  creator                VARCHAR(100) COMMENT '创建者',
  edit_time              DATETIME COMMENT '最后修改时间',
  status                 VARCHAR(30),
  remark                 VARCHAR(500),
  account_check_batch_no VARCHAR(50)  NOT NULL,
  bill_date              DATE         NOT NULL,
  bank_type              VARCHAR(30)  NOT NULL,
  order_time             DATETIME,
  merchant_name          VARCHAR(100),
  merchant_no            VARCHAR(50),
  order_no               VARCHAR(40),
  trade_time             DATETIME,
  trx_no                 VARCHAR(20),
  order_amount           DECIMAL(20, 6),
  refund_amount          DECIMAL(20, 6),
  trade_status           VARCHAR(30),
  fee                    DECIMAL(20, 6),
  bank_trade_time        DATETIME,
  bank_order_no          VARCHAR(40),
  bank_trx_no            VARCHAR(40),
  bank_trade_status      VARCHAR(30),
  bank_amount            DECIMAL(20, 6),
  bank_refund_amount     DECIMAL(20, 6),
  bank_fee               DECIMAL(20, 6),
  err_type               VARCHAR(30)  NOT NULL,
  handle_status          VARCHAR(10)  NOT NULL,
  handle_value           VARCHAR(1000),
  handle_remark          VARCHAR(1000),
  operator_name          VARCHAR(100),
  operator_account_no    VARCHAR(50),
  PRIMARY KEY (id)
)
  COMMENT = 'account_check_mistake';

-- //@UNDO
-- SQL to undo the change goes here.
DROP TABLE IF EXISTS `rp_account_check_mistake`;

