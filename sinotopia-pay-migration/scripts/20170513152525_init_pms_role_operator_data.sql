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

-- // init pms_role_operator data
-- Migration SQL that makes the change goes here.
--  admin  关联admin 和test两个角色
INSERT INTO `pms_role_operator` (id, version, status, creator, create_time, editor, edit_time, remark, role_id, operator_id)
VALUES (1, 0, 'ACTIVE', 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', '', 1, 1);
INSERT INTO `pms_role_operator` (id, version, status, creator, create_time, editor, edit_time, remark, role_id, operator_id)
VALUES (2, 0, 'ACTIVE', 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', '', 2, 1);

-- guest  关联游客角色  （游客角色只有查看交易记录的信息）
INSERT INTO `pms_role_operator` (id, version, status, creator, create_time, editor, edit_time, remark, role_id, operator_id)
VALUES (3, 0, 'ACTIVE', 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', '', 2, 2);

-- //@UNDO
-- SQL to undo the change goes here.
DELETE FROM `pms_role_operator`
WHERE id IN (1, 2, 3);

