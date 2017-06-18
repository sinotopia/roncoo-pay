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

-- // add table rp_account_check_mistake_scratch_pool
-- Migration SQL that makes the change goes here.
CREATE TABLE `rp_account_check_mistake_scratch_pool`
(
  id                    VARCHAR(50)  NOT NULL,
  version               INT UNSIGNED NOT NULL,
  create_time           DATETIME     NOT NULL,
  editor                VARCHAR(100) COMMENT '修改者',
  creator               VARCHAR(100) COMMENT '创建者',
  edit_time             DATETIME COMMENT '最后修改时间',
  product_name          VARCHAR(50) COMMENT '商品名称',
  merchant_order_no     VARCHAR(30)  NOT NULL
  COMMENT '商户订单号',
  trx_no                CHAR(20)     NOT NULL
  COMMENT '支付流水号',
  bank_order_no         CHAR(20) COMMENT '银行订单号',
  bank_trx_no           VARCHAR(30) COMMENT '银行流水号',
  order_amount          DECIMAL(20, 6) DEFAULT 0
  COMMENT '订单金额',
  plat_income           DECIMAL(20, 6) COMMENT '平台收入',
  fee_rate              DECIMAL(20, 6) COMMENT '费率',
  plat_cost             DECIMAL(20, 6) COMMENT '平台成本',
  plat_profit           DECIMAL(20, 6) COMMENT '平台利润',
  status                VARCHAR(30) COMMENT '状态(参考枚举:paymentrecordstatusenum)',
  pay_way_code          VARCHAR(50) COMMENT '支付通道编号',
  pay_way_name          VARCHAR(100) COMMENT '支付通道名称',
  pay_success_time      DATETIME COMMENT '支付成功时间',
  complete_time         DATETIME COMMENT '完成时间',
  is_refund             VARCHAR(30)    DEFAULT '101'
  COMMENT '是否退款(100:是,101:否,默认值为:101)',
  refund_times          SMALLINT       DEFAULT 0
  COMMENT '退款次数(默认值为:0)',
  success_refund_amount DECIMAL(20, 6) COMMENT '成功退款总金额',
  remark                VARCHAR(500) COMMENT '备注',
  batch_no              VARCHAR(50),
  bill_date             DATETIME
)
  COMMENT = 'account_check_mistake_scratch_pool';

-- //@UNDO
-- SQL to undo the change goes here.
DROP TABLE IF EXISTS `rp_account_check_mistake_scratch_pool`;

