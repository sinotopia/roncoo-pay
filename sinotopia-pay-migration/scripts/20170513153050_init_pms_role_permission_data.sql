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

-- // init pms_role_permission data
-- Migration SQL that makes the change goes here.
-- -- 角色与用户功能点关联的初始化数据

-- admin（拥有所有的权限点）
INSERT INTO `pms_role_permission` (role_id, permission_id) SELECT
                                                             1,
                                                             id
                                                           FROM PMS_PERMISSION;

-- guest （只有所有的查看权限）
INSERT INTO `pms_role_permission` (version, status, creator, create_time, editor, edit_time, remark, role_id, permission_id)
VALUES
  (0, 'ACTIVE', 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', '', 2, 1),
  (0, 'ACTIVE', 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', '', 2, 11),
  (0, 'ACTIVE', 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', '', 2, 21),
  (0, 'ACTIVE', 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', '', 2, 31),
  (0, 'ACTIVE', 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', '', 2, 41),
  (0, 'ACTIVE', 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', '', 2, 51),
  (0, 'ACTIVE', 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', '', 2, 61),
  (0, 'ACTIVE', 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', '', 2, 71),
  (0, 'ACTIVE', 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', '', 2, 81),
  (0, 'ACTIVE', 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', '', 2, 85),
  (0, 'ACTIVE', 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', '', 2, 91),
  (0, 'ACTIVE', 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', '', 2, 101),
  (0, 'ACTIVE', 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', '', 2, 111),
  (0, 'ACTIVE', 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', '', 2, 121),
  (0, 'ACTIVE', 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', '', 2, 131),
  (0, 'ACTIVE', 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', '', 2, 141),
  (0, 'ACTIVE', 'roncoo', '2016-06-03 11:07:43', 'test', '2016-06-03 11:07:43', '', 2, 151);

-- //@UNDO
-- SQL to undo the change goes here.
DELETE FROM `pms_role_permission`
WHERE role_id = 1 OR
      (role_id = 2 AND permission_id IN (1, 11, 21, 31, 41, 51, 61, 71, 81, 85, 91, 101, 111, 121, 131, 141, 151));

