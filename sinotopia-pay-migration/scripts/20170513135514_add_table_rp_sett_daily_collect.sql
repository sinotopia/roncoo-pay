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

-- // add table rp_sett_daily_collect
-- Migration SQL that makes the change goes here.
/*==============================================================*/
/* table: rp_sett_daily_collect                                 */
/*==============================================================*/
CREATE TABLE `rp_sett_daily_collect`
(
  id           VARCHAR(50)     NOT NULL
  COMMENT 'id',
  version      INT             NOT NULL DEFAULT 0
  COMMENT '版本号',
  create_time  DATETIME        NOT NULL
  COMMENT '创建时间',
  edit_time    DATETIME        NOT NULL
  COMMENT '修改时间',
  account_no   VARCHAR(20)     NOT NULL
  COMMENT '账户编号',
  user_name    VARCHAR(200) COMMENT '用户姓名',
  collect_date DATE            NOT NULL
  COMMENT '汇总日期',
  collect_type VARCHAR(50)     NOT NULL
  COMMENT '汇总类型(参考枚举:settdailycollecttypeenum)',
  total_amount DECIMAL(24, 10) NOT NULL
  COMMENT '交易总金额',
  total_count  INT             NOT NULL
  COMMENT '交易总笔数',
  sett_status  VARCHAR(50)     NOT NULL
  COMMENT '结算状态(参考枚举:settdailycollectstatusenum)',
  remark       VARCHAR(300) COMMENT '备注',
  risk_day     INT COMMENT '风险预存期天数',
  PRIMARY KEY (id)
)
  COMMENT = 'sett_daily_collect';

-- //@UNDO
-- SQL to undo the change goes here.
DROP TABLE IF EXISTS `rp_sett_daily_collect`;

