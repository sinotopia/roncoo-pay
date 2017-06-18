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

-- // init pms_permission data
-- Migration SQL that makes the change goes here.

-- 权限功能点的初始化数据

INSERT INTO `pms_permission` (id, version, status, creator, create_time, editor, edit_time, remark, permission_name, permission)
VALUES
  (1, 0, 'ACTIVE', 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', '权限管理-菜单-查看', '权限管理-菜单-查看',
   'pms:menu:view'),
  (2, 0, 'ACTIVE', 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', '权限管理-菜单-添加', '权限管理-菜单-添加', 'pms:menu:add'),
  (3, 0, 'ACTIVE', 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', '权限管理-菜单-查看', '权限管理-菜单-修改', 'pms:menu:edit'),
  (4, 0, 'ACTIVE', 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', '权限管理-菜单-删除', '权限管理-菜单-删除', 'pms:menu:delete'),

  (11, 0, 'ACTIVE', 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', '权限管理-权限-查看', '权限管理-权限-查看', 'pms:permission:view'),
  (12, 0, 'ACTIVE', 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', '权限管理-权限-添加', '权限管理-权限-添加', 'pms:permission:add'),
  (13, 0, 'ACTIVE', 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', '权限管理-权限-修改', '权限管理-权限-修改', 'pms:permission:edit'),
  (14, 0, 'ACTIVE', 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', '权限管理-权限-删除', '权限管理-权限-删除', 'pms:permission:delete'),

  (21, 0, 'ACTIVE', 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', '权限管理-角色-查看', '权限管理-角色-查看', 'pms:role:view'),
  (22, 0, 'ACTIVE', 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', '权限管理-角色-添加', '权限管理-角色-添加', 'pms:role:add'),
  (23, 0, 'ACTIVE', 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', '权限管理-角色-修改', '权限管理-角色-修改', 'pms:role:edit'),
  (24, 0, 'ACTIVE', 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', '权限管理-角色-删除', '权限管理-角色-删除', 'pms:role:delete'),
  (25, 0, 'ACTIVE', 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', '权限管理-角色-分配权限', '权限管理-角色-分配权限', 'pms:role:assignpermission'),

  (31, 0, 'ACTIVE', 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', '权限管理-操作员-查看', '权限管理-操作员-查看', 'pms:operator:view'),
  (32, 0, 'ACTIVE', 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', '权限管理-操作员-添加', '权限管理-操作员-添加', 'pms:operator:add'),
  (33, 0, 'ACTIVE', 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', '权限管理-操作员-查看', '权限管理-操作员-修改', 'pms:operator:edit'),
  (34, 0, 'ACTIVE', 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', '权限管理-操作员-冻结与解冻', '权限管理-操作员-冻结与解冻', 'pms:operator:changestatus'),
  (35, 0, 'ACTIVE', 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', '权限管理-操作员-重置密码', '权限管理-操作员-重置密码', 'pms:operator:resetpwd'),

  (51, 0, 'ACTIVE', 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', '账户管理-账户-查看', '账户管理-账户-查看', 'account:accountInfo:view'),
  (52, 0, 'ACTIVE', 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', '账户管理-账户-添加', '账户管理-账户-添加', 'account:accountInfo:add'),
  (53, 0, 'ACTIVE', 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', '账户管理-账户-查看', '账户管理-账户-修改', 'account:accountInfo:edit'),
  (54, 0, 'ACTIVE', 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', '账户管理-账户-删除', '账户管理-账户-删除', 'account:accountInfo:delete'),

  (61, 0, 'ACTIVE', 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', '账户管理-账户历史-查看', '账户管理-账户历史-查看', 'account:accountHistory:view'),

  (71, 0, 'ACTIVE', 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', '用户管理-用户信息-查看', '用户管理-用户信息-查看', 'user:userInfo:view'),
  (72, 0, 'ACTIVE', 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', '用户管理-用户信息-添加', '用户管理-用户信息-添加', 'user:userInfo:add'),
  (73, 0, 'ACTIVE', 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', '用户管理-用户信息-查看', '用户管理-用户信息-修改', 'user:userInfo:edit'),
  (74, 0, 'ACTIVE', 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', '用户管理-用户信息-删除', '用户管理-用户信息-删除', 'user:userInfo:delete'),

  (81, 0, 'ACTIVE', 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', '支付管理-支付产品-查看', '支付管理-支付产品-查看', 'pay:product:view'),
  (82, 0, 'ACTIVE', 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', '支付管理-支付产品-添加', '支付管理-支付产品-添加', 'pay:product:add'),
  (83, 0, 'ACTIVE', 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', '支付管理-支付产品-查看', '支付管理-支付产品-修改', 'pay:product:edit'),
  (84, 0, 'ACTIVE', 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', '支付管理-支付产品-删除', '支付管理-支付产品-删除', 'pay:product:delete'),

  (85, 0, 'ACTIVE', 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', '支付管理-支付方式-查看', '支付管理-支付方式-查看', 'pay:way:view'),
  (86, 0, 'ACTIVE', 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', '支付管理-支付方式-添加', '支付管理-支付方式-添加', 'pay:way:add'),
  (87, 0, 'ACTIVE', 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', '支付管理-支付方式-查看', '支付管理-支付方式-修改', 'pay:way:edit'),
  (88, 0, 'ACTIVE', 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', '支付管理-支付方式-删除', '支付管理-支付方式-删除', 'pay:way:delete'),

  (91, 0, 'ACTIVE', 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', '支付管理-支付配置-查看', '支付管理-支付配置-查看', 'pay:config:view'),
  (92, 0, 'ACTIVE', 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', '支付管理-支付配置-添加', '支付管理-支付配置-添加', 'pay:config:add'),
  (93, 0, 'ACTIVE', 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', '支付管理-支付配置-查看', '支付管理-支付配置-修改', 'pay:config:edit'),
  (94, 0, 'ACTIVE', 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', '支付管理-支付配置-删除', '支付管理-支付配置-删除', 'pay:config:delete'),

  (101, 0, 'ACTIVE', 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', '交易管理-订单-查看', '交易管理-订单-查看', 'trade:order:view'),
  (102, 0, 'ACTIVE', 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', '交易管理-订单-添加', '交易管理-订单-添加', 'trade:order:add'),
  (103, 0, 'ACTIVE', 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', '交易管理-订单-查看', '交易管理-订单-修改', 'trade:order:edit'),
  (104, 0, 'ACTIVE', 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', '交易管理-订单-删除', '交易管理-订单-删除', 'trade:order:delete'),

  (111, 0, 'ACTIVE', 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', '交易管理-记录-查看', '交易管理-记录-查看', 'trade:record:view'),
  (112, 0, 'ACTIVE', 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', '交易管理-记录-添加', '交易管理-记录-添加', 'trade:record:add'),
  (113, 0, 'ACTIVE', 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', '交易管理-记录-查看', '交易管理-记录-修改', 'trade:record:edit'),
  (114, 0, 'ACTIVE', 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', '交易管理-记录-删除', '交易管理-记录-删除', 'trade:record:delete'),

  (121, 0, 'ACTIVE', 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', '结算管理-记录-查看', '结算管理-记录-查看', 'sett:record:view'),
  (122, 0, 'ACTIVE', 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', '结算管理-记录-添加', '结算管理-记录-添加', 'sett:record:add'),
  (123, 0, 'ACTIVE', 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', '结算管理-记录-查看', '结算管理-记录-修改', 'sett:record:edit'),
  (124, 0, 'ACTIVE', 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', '结算管理-记录-删除', '结算管理-记录-删除', 'sett:record:delete'),

  (131, 0, 'ACTIVE', 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', '对账管理-差错-查看', '对账管理-差错-查看', 'recon:mistake:view'),
  (132, 0, 'ACTIVE', 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', '对账管理-差错-添加', '对账管理-差错-添加', 'recon:mistake:add'),
  (133, 0, 'ACTIVE', 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', '对账管理-差错-查看', '对账管理-差错-修改', 'recon:mistake:edit'),
  (134, 0, 'ACTIVE', 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', '对账管理-差错-删除', '对账管理-差错-删除', 'recon:mistake:delete'),

  (141, 0, 'ACTIVE', 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', '对账管理-批次-查看', '对账管理-批次-查看', 'recon:batch:view'),
  (142, 0, 'ACTIVE', 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', '对账管理-批次-添加', '对账管理-批次-添加', 'recon:batch:add'),
  (143, 0, 'ACTIVE', 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', '对账管理-批次-查看', '对账管理-批次-修改', 'recon:batch:edit'),
  (144, 0, 'ACTIVE', 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', '对账管理-批次-删除', '对账管理-批次-删除', 'recon:batch:delete'),

  (151, 0, 'ACTIVE', 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', '对账管理-缓冲池-查看', '对账管理-缓冲池-查看', 'recon:scratchPool:view'),
  (152, 0, 'ACTIVE', 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', '对账管理-缓冲池-添加', '对账管理-缓冲池-添加', 'recon:scratchPool:add'),
  (153, 0, 'ACTIVE', 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', '对账管理-缓冲池-查看', '对账管理-缓冲池-修改',
   'recon:scratchPool:edit'),
  (154, 0, 'ACTIVE', 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', '对账管理-缓冲池-删除', '对账管理-缓冲池-删除',
   'recon:scratchPool:delete');

-- //@UNDO
-- SQL to undo the change goes here.
DELETE FROM `pms_permission`
WHERE ID IN
      (1, 2, 3, 4, 11, 12, 13, 14, 21, 22, 23, 24, 25, 31, 32, 33, 34, 35, 51, 52, 53, 54, 61, 71, 72, 73, 74, 81, 82, 83, 84, 85, 86, 87, 88, 91, 92, 93, 94,
                                                                                                                               101, 102, 103, 104, 111, 112, 113, 114, 121, 122, 123, 124, 131, 132, 133, 134, 141, 142, 143, 144, 151, 152, 153, 154);

