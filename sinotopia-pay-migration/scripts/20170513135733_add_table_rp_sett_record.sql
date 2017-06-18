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

-- // add table rp_sett_record
-- Migration SQL that makes the change goes here.
/*==============================================================*/
/* table: rp_sett_record                                        */
/*==============================================================*/
CREATE TABLE `rp_sett_record`
(
  id                   VARCHAR(50) NOT NULL
  COMMENT 'id',
  version              INT         NOT NULL DEFAULT 0
  COMMENT '版本号',
  create_time          DATETIME    NOT NULL
  COMMENT '创建时间',
  edit_time            DATETIME    NOT NULL
  COMMENT '修改时间',
  sett_mode            VARCHAR(50) COMMENT '结算发起方式(参考settmodetypeenum)',
  account_no           VARCHAR(20) NOT NULL
  COMMENT '账户编号',
  user_no              VARCHAR(20) COMMENT '用户编号',
  user_name            VARCHAR(200) COMMENT '用户姓名',
  user_type            VARCHAR(50) COMMENT '用户类型',
  sett_date            DATE COMMENT '结算日期',
  bank_code            VARCHAR(20) COMMENT '银行编码',
  bank_name            VARCHAR(100) COMMENT '银行名称',
  bank_account_name    VARCHAR(60) COMMENT '开户名',
  bank_account_no      VARCHAR(20) COMMENT '开户账户',
  bank_account_type    VARCHAR(50) COMMENT '开户账户',
  country              VARCHAR(200) COMMENT '开户行所在国家',
  province             VARCHAR(50) COMMENT '开户行所在省份',
  city                 VARCHAR(50) COMMENT '开户行所在城市',
  areas                VARCHAR(50) COMMENT '开户行所在区',
  bank_account_address VARCHAR(300) COMMENT '开户行全称',
  mobile_no            VARCHAR(20) COMMENT '收款人手机号',
  sett_amount          DECIMAL(24, 10) COMMENT '结算金额',
  sett_fee             DECIMAL(16, 6) COMMENT '结算手续费',
  remit_amount         DECIMAL(16, 2) COMMENT '结算打款金额',
  sett_status          VARCHAR(50) COMMENT '结算状态(参考枚举:settrecordstatusenum)',
  remit_confirm_time   DATETIME COMMENT '打款确认时间',
  remark               VARCHAR(200) COMMENT '描述',
  remit_remark         VARCHAR(200) COMMENT '打款备注',
  operator_loginname   VARCHAR(50) COMMENT '操作员登录名',
  operator_realname    VARCHAR(50) COMMENT '操作员姓名',
  PRIMARY KEY (id)
)
  COMMENT = 'sett_record';

-- //@UNDO
-- SQL to undo the change goes here.
DROP TABLE IF EXISTS `rp_sett_record`;

