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

-- // init pms_role data
-- Migration SQL that makes the change goes here.
-- -- 角色的初始化数据
INSERT INTO `pms_role` (id, version, status, creator, create_time, editor, edit_time, remark, role_code, role_name)
VALUES (1, 0, 'ACTIVE', 'roncoo', '2016-06-03 11:07:43', 'admin', '2016-06-03 11:07:43', '超级管理员角色', 'admin', '超级管理员角色');

INSERT INTO `pms_role` (id, version, status, creator, create_time, editor, edit_time, remark, role_code, role_name)
VALUES (2, 0, 'ACTIVE', 'roncoo', '2016-06-03 11:07:43', 'guest', '2016-06-03 11:07:43', '游客角色', 'guest', '游客角色');

-- //@UNDO
-- SQL to undo the change goes here.
DELETE FROM `pms_role`
WHERE id IN (1, 2);

