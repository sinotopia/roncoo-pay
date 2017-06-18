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

-- // rp_user_info add columns
-- Migration SQL that makes the change goes here.
-- 2016.9.5 增加登录信息字段
ALTER TABLE `rp_user_info`
  ADD mobile VARCHAR(15);
ALTER TABLE `rp_user_info`
  ADD password VARCHAR(50);

-- 2017.4.4 用户信息表增加支付密码字段
ALTER TABLE `rp_user_info`
  ADD pay_pwd VARCHAR(50) COMMENT '支付密码' DEFAULT '123456';

-- //@UNDO
-- SQL to undo the change goes here.
ALTER TABLE `rp_user_info`
  DROP COLUMN mobile;
ALTER TABLE `rp_user_info`
  DROP COLUMN password;
ALTER TABLE `rp_user_info`
  DROP COLUMN pay_pwd;

