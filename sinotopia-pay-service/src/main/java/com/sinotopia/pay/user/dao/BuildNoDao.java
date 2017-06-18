/*
 * Copyright 2015-2102 RonCoo(http://www.sinotopia.com) Group.
 *  
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *  
 *      http://www.apache.org/licenses/LICENSE-2.0
 *  
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package com.sinotopia.pay.user.dao;

import com.sinotopia.pay.common.core.dao.BaseDao;
import com.sinotopia.pay.user.entity.SeqBuild;

/**
 * 生成编号dao
 * www.sinotopia.com
 *
 * @author：sinotopia
 */
public interface BuildNoDao extends BaseDao<SeqBuild> {

    String getSeqNextValue(SeqBuild seqBuild);

}
