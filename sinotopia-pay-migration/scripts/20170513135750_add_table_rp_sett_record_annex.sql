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

-- // add table rp_sett_record_annex
-- Migration SQL that makes the change goes here.

/*==============================================================*/
/* table: rp_sett_record_annex                                  */
/*==============================================================*/
CREATE TABLE `rp_sett_record_annex`
(
  id            VARCHAR(50)  NOT NULL,
  create_time   DATETIME     NOT NULL,
  edit_time     DATETIME,
  version       BIGINT       NOT NULL,
  remark        VARCHAR(200),
  is_delete     VARCHAR(36)  NOT NULL,
  annex_name    VARCHAR(200),
  annex_address VARCHAR(500) NOT NULL,
  settlement_id VARCHAR(50)  NOT NULL,
  PRIMARY KEY (id)
)
  COMMENT = 'sett_record_annex';

-- //@UNDO
-- SQL to undo the change goes here.
DROP TABLE IF EXISTS `rp_sett_record_annex`;

