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

-- // add table rp_pay_way
-- Migration SQL that makes the change goes here.

/*==============================================================*/
/* table: rp_pay_way                                            */
/*==============================================================*/
CREATE TABLE `rp_pay_way`
(
  id               VARCHAR(50)  NOT NULL
  COMMENT 'id',
  version          BIGINT       NOT NULL DEFAULT 0
  COMMENT 'version',
  create_time      DATETIME     NOT NULL
  COMMENT '创建时间',
  edit_time        DATETIME COMMENT '修改时间',
  pay_way_code     VARCHAR(50)  NOT NULL
  COMMENT '支付方式编号',
  pay_way_name     VARCHAR(100) NOT NULL
  COMMENT '支付方式名称',
  pay_type_code    VARCHAR(50)  NOT NULL
  COMMENT '支付类型编号',
  pay_type_name    VARCHAR(100) NOT NULL
  COMMENT '支付类型名称',
  pay_product_code VARCHAR(50) COMMENT '支付产品编号',
  status           VARCHAR(36)  NOT NULL
  COMMENT '状态(100:正常状态,101非正常状态)',
  sorts            INT                   DEFAULT 1000
  COMMENT '排序(倒序排序,默认值1000)',
  pay_rate         DOUBLE       NOT NULL
  COMMENT '商户支付费率',
  PRIMARY KEY (id)
)
  COMMENT = 'pay way';

-- //@UNDO
-- SQL to undo the change goes here.

DROP TABLE IF EXISTS `rp_pay_way`;

