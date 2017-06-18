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

-- // add table rp_trade_payment_record
-- Migration SQL that makes the change goes here.

CREATE TABLE `rp_trade_payment_record`
(
  id                    VARCHAR(50) NOT NULL
  COMMENT 'id',
  version               INT         NOT NULL DEFAULT 0
  COMMENT '版本号',
  create_time           DATETIME COMMENT '创建时间',
  status                VARCHAR(30) COMMENT '状态(参考枚举:paymentrecordstatusenum)',
  editor                VARCHAR(100) COMMENT '修改者',
  creator               VARCHAR(100) COMMENT '创建者',
  edit_time             DATETIME COMMENT '最后修改时间',
  product_name          VARCHAR(50) COMMENT '商品名称',
  merchant_order_no     VARCHAR(50) NOT NULL
  COMMENT '商户订单号',
  trx_no                VARCHAR(50) NOT NULL
  COMMENT '支付流水号',
  bank_order_no         VARCHAR(50) COMMENT '银行订单号',
  bank_trx_no           VARCHAR(50) COMMENT '银行流水号',
  merchant_name         VARCHAR(300) COMMENT '商家名称',
  merchant_no           VARCHAR(50) NOT NULL
  COMMENT '商家编号',
  payer_user_no         VARCHAR(50) COMMENT '付款人编号',
  payer_name            VARCHAR(60) COMMENT '付款人名称',
  payer_pay_amount      DECIMAL(20, 6)       DEFAULT 0
  COMMENT '付款方支付金额',
  payer_fee             DECIMAL(20, 6)       DEFAULT 0
  COMMENT '付款方手续费',
  payer_account_type    VARCHAR(30) COMMENT '付款方账户类型(参考账户类型枚举:accounttypeenum)',
  receiver_user_no      VARCHAR(15) COMMENT '收款人编号',
  receiver_name         VARCHAR(60) COMMENT '收款人名称',
  receiver_pay_amount   DECIMAL(20, 6)       DEFAULT 0
  COMMENT '收款方支付金额',
  receiver_fee          DECIMAL(20, 6)       DEFAULT 0
  COMMENT '收款方手续费',
  receiver_account_type VARCHAR(30) COMMENT '收款方账户类型(参考账户类型枚举:accounttypeenum)',
  order_ip              VARCHAR(30) COMMENT '下单ip(客户端ip,从网关中获取)',
  order_referer_url     VARCHAR(100) COMMENT '从哪个页面链接过来的(可用于防诈骗)',
  order_amount          DECIMAL(20, 6)       DEFAULT 0
  COMMENT '订单金额',
  plat_income           DECIMAL(20, 6) COMMENT '平台收入',
  fee_rate              DECIMAL(20, 6) COMMENT '费率',
  plat_cost             DECIMAL(20, 6) COMMENT '平台成本',
  plat_profit           DECIMAL(20, 6) COMMENT '平台利润',
  return_url            VARCHAR(600) COMMENT '页面回调通知url',
  notify_url            VARCHAR(600) COMMENT '后台异步通知url',
  pay_way_code          VARCHAR(50) COMMENT '支付方式编号',
  pay_way_name          VARCHAR(100) COMMENT '支付方式名称',
  pay_success_time      DATETIME COMMENT '支付成功时间',
  complete_time         DATETIME COMMENT '完成时间',
  is_refund             VARCHAR(30)          DEFAULT '101'
  COMMENT '是否退款(100:是,101:否,默认值为:101)',
  refund_times          INT                  DEFAULT 0
  COMMENT '退款次数(默认值为:0)',
  success_refund_amount DECIMAL(20, 6) COMMENT '成功退款总金额',
  trx_type              VARCHAR(30) COMMENT '交易业务类型  ：消费、充值等',
  order_from            VARCHAR(30) COMMENT '订单来源',
  pay_type_code         VARCHAR(50) COMMENT '支付类型编号',
  pay_type_name         VARCHAR(100) COMMENT '支付类型名称',
  fund_into_type        VARCHAR(30) COMMENT '资金流入类型',
  remark                VARCHAR(3000) COMMENT '备注',
  field1                VARCHAR(500),
  field2                VARCHAR(500),
  field3                VARCHAR(500),
  field4                VARCHAR(500),
  field5                VARCHAR(500),
  bank_return_msg       VARCHAR(2000) COMMENT '银行返回信息',
  PRIMARY KEY (id),
  UNIQUE KEY ak_key_2 (trx_no)
)
  COMMENT = 'trade_payment_record';

-- //@UNDO
-- SQL to undo the change goes here.
DROP TABLE IF EXISTS `rp_trade_payment_record`;

