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

-- // add seq_table initial data
-- Migration SQL that makes the change goes here.

INSERT INTO `seq_table` (SEQ_NAME, CURRENT_VALUE, INCREMENT, REMARK)
VALUES ('ACCOUNT_NO_SEQ', 10000000, 1, '账户--账户编号');
INSERT INTO `seq_table` (SEQ_NAME, CURRENT_VALUE, INCREMENT, REMARK)
VALUES ('ACTIVITY_NO_SEQ', 10000006, 1, '活动--活动编号');
INSERT INTO `seq_table` (SEQ_NAME, CURRENT_VALUE, INCREMENT, REMARK)
VALUES ('USER_NO_SEQ', 10001113, 1, '用户--用户编号');
INSERT INTO `seq_table` (SEQ_NAME, CURRENT_VALUE, INCREMENT, REMARK)
VALUES ('TRX_NO_SEQ', 10000000, 1, '交易—-支付流水号');
INSERT INTO `seq_table` (SEQ_NAME, CURRENT_VALUE, INCREMENT, REMARK)
VALUES ('BANK_ORDER_NO_SEQ', 10000000, 1, '交易—-银行订单号');
INSERT INTO `seq_table` (SEQ_NAME, CURRENT_VALUE, INCREMENT, REMARK)
VALUES ('RECONCILIATION_BATCH_NO_SEQ', 10000000, 1, '对账—-批次号');

-- //@UNDO
-- SQL to undo the change goes here.
DELETE FROM `seq_table`;

