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

-- // add table rp_refund_record
-- Migration SQL that makes the change goes here.
CREATE TABLE `rp_refund_record`
(
  id                      VARCHAR(50)  NOT NULL
  COMMENT 'id',
  version                 INT          NOT NULL
  COMMENT '版本号',
  create_time             DATETIME COMMENT '创建时间',
  editor                  VARCHAR(100) COMMENT '修改者',
  creator                 VARCHAR(100) COMMENT '创建者',
  edit_time               DATETIME COMMENT '最后修改时间',
  org_merchant_order_no   VARCHAR(50) COMMENT '原商户订单号',
  org_trx_no              VARCHAR(50) COMMENT '原支付流水号',
  org_bank_order_no       VARCHAR(50) COMMENT '原银行订单号',
  org_bank_trx_no         VARCHAR(50) COMMENT '原银行流水号',
  merchant_name           VARCHAR(100) COMMENT '商家名称',
  merchant_no             VARCHAR(100) NOT NULL
  COMMENT '商家编号',
  org_product_name        VARCHAR(60) COMMENT '原商品名称',
  org_biz_type            VARCHAR(30) COMMENT '原业务类型',
  org_payment_type        VARCHAR(30) COMMENT '原支付方式类型',
  refund_amount           DECIMAL(20, 6) COMMENT '订单退款金额',
  refund_trx_no           VARCHAR(50)  NOT NULL
  COMMENT '退款流水号',
  refund_order_no         VARCHAR(50)  NOT NULL
  COMMENT '退款订单号',
  bank_refund_order_no    VARCHAR(50) COMMENT '银行退款订单号',
  bank_refund_trx_no      VARCHAR(30) COMMENT '银行退款流水号',
  result_notify_url       VARCHAR(500) COMMENT '退款结果通知url',
  refund_status           VARCHAR(30) COMMENT '退款状态',
  refund_from             VARCHAR(30) COMMENT '退款来源（分发平台）',
  refund_way              VARCHAR(30) COMMENT '退款方式',
  refund_request_time     DATETIME COMMENT '退款请求时间',
  refund_success_time     DATETIME COMMENT ' 退款成功时间',
  refund_complete_time    DATETIME COMMENT '退款完成时间',
  request_apply_user_id   VARCHAR(50) COMMENT '退款请求,申请人登录名',
  request_apply_user_name VARCHAR(90) COMMENT '退款请求,申请人姓名',
  refund_reason           VARCHAR(500) COMMENT '退款原因',
  remark                  VARCHAR(3000) COMMENT '备注',
  PRIMARY KEY (id),
  UNIQUE KEY ak_key_2 (refund_trx_no)
)
  COMMENT = 'refund_record';

-- //@UNDO
-- SQL to undo the change goes here.
DROP TABLE IF EXISTS `rp_refund_record`;

