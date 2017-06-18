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

-- // init pms_menu_role data
-- Migration SQL that makes the change goes here.
--  角色与信息关联初始化数据
-- admin

INSERT INTO `pms_menu_role` (role_id, menu_id) SELECT
                                                 1,
                                                 id
                                               FROM PMS_MENU;

-- guest  所有的菜单（只有查看权限）
INSERT INTO `pms_menu_role` (role_id, menu_id) SELECT
                                                 2,
                                                 id
                                               FROM PMS_MENU;

-- //@UNDO
-- SQL to undo the change goes here.
DELETE FROM `pms_menu_role`
WHERE role_id IN (1, 2);

