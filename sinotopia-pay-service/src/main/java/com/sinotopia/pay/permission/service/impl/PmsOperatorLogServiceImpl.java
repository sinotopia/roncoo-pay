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
package com.sinotopia.pay.permission.service.impl;

import java.util.HashMap;
import java.util.Map;

import com.sinotopia.pay.permission.dao.PmsOperatorLogDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sinotopia.pay.common.core.pagination.PageBean;
import com.sinotopia.pay.common.core.pagination.PageParam;
import com.sinotopia.pay.permission.entity.PmsOperatorLog;
import com.sinotopia.pay.permission.service.PmsOperatorLogService;

/**
 * 操作员service接口实现
 * <p>
 * www.sinotopia.com
 *
 * @author：sinotopia
 */
@Service("pmsOperatorLogService")
public class PmsOperatorLogServiceImpl implements PmsOperatorLogService {
    @Autowired
    private PmsOperatorLogDao pmsOperatorLogDao;

    /**
     * 创建pmsOperator
     */
    @Override
    public void saveData(PmsOperatorLog pmsOperatorLog) {
        pmsOperatorLogDao.insert(pmsOperatorLog);
    }

    /**
     * 修改pmsOperator
     */
    @Override
    public void updateData(PmsOperatorLog pmsOperatorLog) {
        pmsOperatorLogDao.update(pmsOperatorLog);
    }

    /**
     * 根据id获取数据pmsOperator
     *
     * @param id
     * @return
     */
    @Override
    public PmsOperatorLog getDataById(Long id) {
        return pmsOperatorLogDao.getById(id);

    }

    /**
     * 分页查询pmsOperator
     *
     * @param pageParam
     * @param ActivityVo PmsOperator
     * @return
     */
    @Override
    public PageBean listPage(PageParam pageParam, PmsOperatorLog pmsOperatorLog) {
        Map<String, Object> paramMap = new HashMap<String, Object>();
        return pmsOperatorLogDao.listPage(pageParam, paramMap);
    }

}
