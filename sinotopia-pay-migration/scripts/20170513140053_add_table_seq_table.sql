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

-- // add table seq_table
-- Migration SQL that makes the change goes here.

CREATE TABLE `seq_table`
(
  SEQ_NAME      VARCHAR(50)                 NOT NULL,
  CURRENT_VALUE BIGINT DEFAULT '1000000002' NOT NULL,
  INCREMENT     SMALLINT DEFAULT '1'        NOT NULL,
  REMARK        VARCHAR(100)                NOT NULL,
  PRIMARY KEY (SEQ_NAME)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;

-- //@UNDO
-- SQL to undo the change goes here.
DROP TABLE IF EXISTS `seq_table`;

