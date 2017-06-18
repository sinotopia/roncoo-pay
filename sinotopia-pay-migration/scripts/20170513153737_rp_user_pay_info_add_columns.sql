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

-- // rp_user_pay_info add columns
-- Migration SQL that makes the change goes here.

-- 2016.8.5 第三方支付信息表增加支付宝线下产品字段
ALTER TABLE `rp_user_pay_info`
  ADD offline_app_id VARCHAR(50);
ALTER TABLE `rp_user_pay_info`
  ADD rsa_private_key VARCHAR(100);
ALTER TABLE `rp_user_pay_info`
  ADD rsa_public_key VARCHAR(100);

-- //@UNDO
-- SQL to undo the change goes here.
ALTER TABLE `rp_user_pay_info`
  DROP COLUMN offline_app_id;
ALTER TABLE `rp_user_pay_info`
  DROP COLUMN rsa_private_key;
ALTER TABLE `rp_user_pay_info`
  DROP COLUMN rsa_public_key;

