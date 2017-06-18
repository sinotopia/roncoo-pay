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

-- // init pms_menu data
-- Migration SQL that makes the change goes here.
-- �˵���ʼ������
--  -- �˵��ĳ�ʼ������
INSERT INTO pms_menu (id, version, status, creator, create_time, editor, edit_time, remark, name, url, number, is_leaf, level, parent_id, target_name)
VALUES
  (1, 0, 'ACTIVE', 'roncoo', '2016-06-03 11:07:43', 'admin', '2016-06-03 11:07:43', '', '权限管理', '##', '001', 'NO', 1, 0,
   '#'),
  (2, 0, 'ACTIVE', 'roncoo', '2016-06-03 11:07:43', 'admin', '2016-06-03 11:07:43', '', '菜单管理', 'pms/menu/list', '00101', 'YES', 2, 1, 'cdgl'),
  (3, 0, 'ACTIVE', 'roncoo', '2016-06-03 11:07:43', 'admin', '2016-06-03 11:07:43', '', '权限管理', 'pms/permission/list', '00102', 'YES', 2, 1, 'qxgl'),
  (4, 0, 'ACTIVE', 'roncoo', '2016-06-03 11:07:43', 'admin', '2016-06-03 11:07:43', '', '角色管理', 'pms/role/list', '00103', 'YES', 2, 1, 'jsgl'),
  (5, 0, 'ACTIVE', 'roncoo', '2016-06-03 11:07:43', 'admin', '2016-06-03 11:07:43', '', '操作员管理', 'pms/operator/list', '00104', 'YES', 2, 1, 'czygl'),
  (10, 0, 'ACTIVE', 'roncoo', '2016-06-03 11:07:43', 'admin', '2016-06-03 11:07:43', '', '账户管理', '##', '002', 'NO', 1, 0, '#'),
  (12, 0, 'ACTIVE', 'roncoo', '2016-06-03 11:07:43', 'admin', '2016-06-03 11:07:43', '', '账户信息', 'account/list', '00201', 'YES', 2, 10, 'zhxx'),
  (13, 0, 'ACTIVE', 'roncoo', '2016-06-03 11:07:43', 'admin', '2016-06-03 11:07:43', '', '账户历史信息', 'account/historyList', '00202', 'YES', 2, 10, 'zhlsxx'),
  (20, 0, 'ACTIVE', 'roncoo', '2016-06-03 11:07:43', 'admin', '2016-06-03 11:07:43', '', '用户管理', '##', '003', 'NO', 1, 0, '#'),
  (22, 0, 'ACTIVE', 'roncoo', '2016-06-03 11:07:43', 'admin', '2016-06-03 11:07:43', '', '用户信息', 'user/info/list', '00301', 'YES', 2, 20, 'yhxx'),
  (30, 0, 'ACTIVE', 'roncoo', '2016-06-03 11:07:43', 'admin', '2016-06-03 11:07:43', '', '支付管理', '##', '004', 'NO', 1, 0, '#'),
  (32, 0, 'ACTIVE', 'roncoo', '2016-06-03 11:07:43', 'admin', '2016-06-03 11:07:43', '', '支付产品信息', 'pay/product/list', '00401', 'YES', 2, 30, 'zfcpgl'),
  (33, 0, 'ACTIVE', 'roncoo', '2016-06-03 11:07:43', 'admin', '2016-06-03 11:07:43', '', '用户支付配置', 'pay/config/list', '00402', 'YES', 2, 30, 'yhzfpz'),
  (40, 0, 'ACTIVE', 'roncoo', '2016-06-03 11:07:43', 'admin', '2016-06-03 11:07:43', '', '交易管理', '##', '005', 'NO', 1, 0, '#'),
  (42, 0, 'ACTIVE', 'roncoo', '2016-06-03 11:07:43', 'admin', '2016-06-03 11:07:43', '', '支付订单管理', 'trade/listPaymentOrder', '00501', 'YES', 2, 40, 'zfddgl'),
  (43, 0, 'ACTIVE', 'roncoo', '2016-06-03 11:07:43', 'admin', '2016-06-03 11:07:43', '', '支付记录管理', 'trade/listPaymentRecord', '00502', 'YES', 2, 40, 'zfjjgl'),
  (50, 0, 'ACTIVE', 'roncoo', '2016-06-03 11:07:43', 'admin', '2016-06-03 11:07:43', '', '结算管理', '##', '006', 'NO', 1, 0, '#'),
  (52, 0, 'ACTIVE', 'roncoo', '2016-06-03 11:07:43', 'admin', '2016-06-03 11:07:43', '', '结算记录管理', 'sett/list', '00601', 'YES', 2, 50, 'jsjlgl'),
  (60, 0, 'ACTIVE', 'roncoo', '2016-06-03 11:07:43', 'admin', '2016-06-03 11:07:43', '', '对账管理', '##', '007', 'NO', 1, 0, '#'),
  (62, 0, 'ACTIVE', 'roncoo', '2016-06-03 11:07:43', 'admin', '2016-06-03 11:07:43', '', '对账差错列表', 'reconciliation/list/mistake', '00701', 'YES', 2, 60, 'dzcclb'),
  (63, 0, 'ACTIVE', 'roncoo', '2016-06-03 11:07:43', 'admin', '2016-06-03 11:07:43', '', '对账批次列表', 'reconciliation/list/checkbatch', '00702', 'YES', 2, 60, 'dzpclb'),
  (64, 0, 'ACTIVE', 'roncoo', '2016-06-03 11:07:43', 'admin', '2016-06-03 11:07:43', '', '对账缓冲池列表',
       'reconciliation/list/scratchPool', '00703', 'YES', 2, 60, 'dzhcclb');

-- //@UNDO
-- SQL to undo the change goes here.
DELETE FROM `pms_menu`
WHERE id IN (1, 2, 3, 4, 5, 10, 12, 13, 20, 22, 30, 32, 33, 40, 42, 43, 50, 52, 60, 62, 63, 64);

