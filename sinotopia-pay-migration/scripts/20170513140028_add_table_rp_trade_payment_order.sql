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
  COMMENT '�汾��',
  create_time           DATETIME     NOT NULL
  COMMENT '����ʱ��',
  editor                VARCHAR(100) COMMENT '�޸���',
  creator               VARCHAR(100) COMMENT '������',
  edit_time             DATETIME COMMENT '����޸�ʱ��',
  status                VARCHAR(50) COMMENT '״̬(�ο�ö��:orderstatusenum)',
  product_name          VARCHAR(300) COMMENT '��Ʒ����',
  merchant_order_no     VARCHAR(30)  NOT NULL
  COMMENT '�̻�������',
  order_amount          DECIMAL(20, 6)        DEFAULT 0
  COMMENT '�������',
  order_from            VARCHAR(30) COMMENT '������Դ',
  merchant_name         VARCHAR(100) COMMENT '�̼�����',
  merchant_no           VARCHAR(100) NOT NULL
  COMMENT '�̻����',
  order_time            DATETIME COMMENT '�µ�ʱ��',
  order_date            DATE COMMENT '�µ�����',
  order_ip              VARCHAR(50) COMMENT '�µ�ip(�ͻ���ip,������ҳ���ȡ)',
  order_referer_url     VARCHAR(100) COMMENT '���ĸ�ҳ�����ӹ�����(�����ڷ�թƭ)',
  return_url            VARCHAR(600) COMMENT 'ҳ��ص�֪ͨurl',
  notify_url            VARCHAR(600) COMMENT '��̨�첽֪ͨurl',
  cancel_reason         VARCHAR(600) COMMENT '��������ԭ��',
  order_period          SMALLINT COMMENT '������Ч��(��λ����)',
  expire_time           DATETIME COMMENT '����ʱ��',
  pay_way_code          VARCHAR(50) COMMENT '֧����ʽ���',
  pay_way_name          VARCHAR(100) COMMENT '֧����ʽ����',
  remark                VARCHAR(200) COMMENT '֧����ע',
  trx_type              VARCHAR(30) COMMENT '����ҵ������  �����ѡ���ֵ��',
  trx_no                VARCHAR(50) COMMENT '֧����ˮ��',
  pay_type_code         VARCHAR(50) COMMENT '֧�����ͱ��',
  pay_type_name         VARCHAR(100) COMMENT '֧����������',
  fund_into_type        VARCHAR(30) COMMENT '�ʽ���������',
  is_refund             VARCHAR(30)           DEFAULT '101'
  COMMENT '�Ƿ��˿�(100:��,101:��,Ĭ��ֵΪ:101)',
  refund_times          INT                   DEFAULT 0
  COMMENT '�˿����(Ĭ��ֵΪ:0)',
  success_refund_amount DECIMAL(20, 6) COMMENT '�ɹ��˿��ܽ��',
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

