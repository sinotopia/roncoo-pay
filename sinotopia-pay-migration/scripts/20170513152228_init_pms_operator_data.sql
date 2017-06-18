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

-- // init pms_operator data
-- Migration SQL that makes the change goes here.
-- -- 操作员的初始化数据
--  admin 超级管理员
INSERT INTO `pms_operator` (id, version, status, creator, create_time, editor, edit_time, remark, login_name, login_pwd, real_name, mobile_no, type, salt)
VALUES (1, 0, 'ACTIVE', 'roncoo', '2016-06-03 11:07:43', 'admin', '2016-06-03 11:07:43', '超级管理员', 'admin',
           'd3c59d25033dbf980d29554025c23a75', '超级管理员', '18620936193', 'ADMIN', '8d78869f470951332959580424d4bf4f');

--  guest  游客
INSERT INTO `pms_operator` (id, version, status, creator, create_time, editor, edit_time, remark, login_name, login_pwd, real_name, mobile_no, type, salt)
VALUES (2, 0, 'ACTIVE', 'roncoo', '2016-06-03 11:07:43', 'guest', '2016-06-03 11:07:43', '游客', 'guest',
           '3f0dbf580ee39ec03b632cb33935a363', '游客', '18926215592', 'USER', '183d9f2f0f2ce760e98427a5603d1c73');

-- //@UNDO
-- SQL to undo the change goes here.
DELETE FROM `pms_operator`
WHERE id IN (1, 2);

