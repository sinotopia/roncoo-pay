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

-- // rp_user_pay_config add columns
-- Migration SQL that makes the change goes here.
-- Migration SQL that makes the change goes here.
-- 2017.4.5 增加用户支付配置表安全等级字段 商户服务器IP字段
ALTER TABLE `rp_user_pay_config`
  ADD security_rating VARCHAR(20) COMMENT '安全等级' DEFAULT 'MD5';

ALTER TABLE `rp_user_pay_config`
  ADD merchant_server_ip VARCHAR(200) COMMENT '商户服务器IP';

-- //@UNDO
-- SQL to undo the change goes here.
ALTER TABLE `rp_user_pay_config`
  DROP COLUMN security_rating;
ALTER TABLE `rp_user_pay_config`
  DROP COLUMN merchant_server_ip;

