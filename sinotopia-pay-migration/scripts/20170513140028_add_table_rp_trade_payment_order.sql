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

-- // add table rp_trade_payment_order
-- Migration SQL that makes the change goes here.
CREATE TABLE `rp_trade_payment_order`
(
  id                    VARCHAR(50)  NOT NULL
  COMMENT 'id',
  version               INT          NOT NULL DEFAULT 0
  COMMENT '版本号',
  create_time           DATETIME     NOT NULL
  COMMENT '创建时间',
  editor                VARCHAR(100) COMMENT '修改者',
  creator               VARCHAR(100) COMMENT '创建者',
  edit_time             DATETIME COMMENT '最后修改时间',
  status                VARCHAR(50) COMMENT '状态(参考枚举:orderstatusenum)',
  product_name          VARCHAR(300) COMMENT '商品名称',
  merchant_order_no     VARCHAR(30)  NOT NULL
  COMMENT '商户订单号',
  order_amount          DECIMAL(20, 6)        DEFAULT 0
  COMMENT '订单金额',
  order_from            VARCHAR(30) COMMENT '订单来源',
  merchant_name         VARCHAR(100) COMMENT '商家名称',
  merchant_no           VARCHAR(100) NOT NULL
  COMMENT '商户编号',
  order_time            DATETIME COMMENT '下单时间',
  order_date            DATE COMMENT '下单日期',
  order_ip              VARCHAR(50) COMMENT '下单ip(客户端ip,在网关页面获取)',
  order_referer_url     VARCHAR(100) COMMENT '从哪个页面链接过来的(可用于防诈骗)',
  return_url            VARCHAR(600) COMMENT '页面回调通知url',
  notify_url            VARCHAR(600) COMMENT '后台异步通知url',
  cancel_reason         VARCHAR(600) COMMENT '订单撤销原因',
  order_period          SMALLINT COMMENT '订单有效期(单位分钟)',
  expire_time           DATETIME COMMENT '到期时间',
  pay_way_code          VARCHAR(50) COMMENT '支付方式编号',
  pay_way_name          VARCHAR(100) COMMENT '支付方式名称',
  remark                VARCHAR(200) COMMENT '支付备注',
  trx_type              VARCHAR(30) COMMENT '交易业务类型  ：消费、充值等',
  trx_no                VARCHAR(50) COMMENT '支付流水号',
  pay_type_code         VARCHAR(50) COMMENT '支付类型编号',
  pay_type_name         VARCHAR(100) COMMENT '支付类型名称',
  fund_into_type        VARCHAR(30) COMMENT '资金流入类型',
  is_refund             VARCHAR(30)           DEFAULT '101'
  COMMENT '是否退款(100:是,101:否,默认值为:101)',
  refund_times          INT                   DEFAULT 0
  COMMENT '退款次数(默认值为:0)',
  success_refund_amount DECIMAL(20, 6) COMMENT '成功退款总金额',
  field1                VARCHAR(500),
  field2                VARCHAR(500),
  field3                VARCHAR(500),
  field4                VARCHAR(500),
  field5                VARCHAR(500),
  PRIMARY KEY (id),
  UNIQUE KEY ak_key_2 (merchant_order_no, merchant_no)
)
  COMMENT = 'trade_payment_order';

-- //@UNDO
-- SQL to undo the change goes here.
DROP TABLE IF EXISTS `rp_trade_payment_order`;

