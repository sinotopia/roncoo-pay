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

-- // add functions
-- Migration SQL that makes the change goes here.

/*==============================================================*/
/* create function                                              */
/*==============================================================*/
CREATE FUNCTION `FUN_SEQ`(SEQ VARCHAR(50))
  RETURNS BIGINT(20)
  BEGIN
    UPDATE SEQ_TABLE
    SET CURRENT_VALUE = CURRENT_VALUE + INCREMENT
    WHERE SEQ_NAME = SEQ;
    RETURN FUN_SEQ_CURRENT_VALUE(SEQ);
  END;


CREATE FUNCTION `FUN_SEQ_CURRENT_VALUE`(SEQ VARCHAR(50))
  RETURNS BIGINT(20)
  BEGIN
    DECLARE VALUE INTEGER;
    SET VALUE = 0;
    SELECT CURRENT_VALUE
    INTO VALUE
    FROM SEQ_TABLE
    WHERE SEQ_NAME = SEQ;
    RETURN VALUE;
  END;

CREATE FUNCTION `FUN_SEQ_SET_VALUE`(SEQ VARCHAR(50), VALUE INTEGER)
  RETURNS BIGINT(20)
  BEGIN
    UPDATE SEQ_TABLE
    SET CURRENT_VALUE = VALUE
    WHERE SEQ_NAME = SEQ;
    RETURN FUN_SEQ_CURRENT_VALUE(SEQ);
  END;

CREATE FUNCTION FUN_NOW()
  RETURNS DATETIME
  BEGIN
    RETURN now();
  END;

-- 时间函数

CREATE FUNCTION `FUN_DATE_ADD`(STR_DATE VARCHAR(10), STR_INTERVAL INTEGER)
  RETURNS DATE
  BEGIN
    RETURN date_add(STR_DATE, INTERVAL STR_INTERVAL DAY);
  END;

-- //@UNDO
-- SQL to undo the change goes here.
DROP FUNCTION IF EXISTS `FUN_SEQ`;

DROP FUNCTION IF EXISTS `FUN_SEQ_CURRENT_VALUE`;

DROP FUNCTION IF EXISTS `FUN_SEQ_SET_VALUE`;

DROP FUNCTION IF EXISTS `FUN_NOW`;

DROP FUNCTION IF EXISTS `FUN_DATE_ADD`; 

