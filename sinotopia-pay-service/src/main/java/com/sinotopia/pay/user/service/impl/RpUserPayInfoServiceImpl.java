/*
 * Copyright 2015-2102 RonCoo(http://www.roncoo.com) Group.
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
package com.sinotopia.pay.user.service.impl;

import java.util.HashMap;
import java.util.Map;

import com.sinotopia.pay.user.entity.RpUserPayInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sinotopia.pay.common.core.pagination.PageBean;
import com.sinotopia.pay.common.core.pagination.PageParam;
import com.sinotopia.pay.user.dao.RpUserPayInfoDao;
import com.sinotopia.pay.user.service.RpUserPayInfoService;

/**
 * 用户第三方支付信息service实现类
 * www.sinotopia.com
 *
 * @author：sinotopia
 */
@Service("rpUserPayInfoService")
public class RpUserPayInfoServiceImpl implements RpUserPayInfoService {

    @Autowired
    private RpUserPayInfoDao rpUserPayInfoDao;

    @Override
    public void saveData(RpUserPayInfo rpUserPayInfo) {
        rpUserPayInfoDao.insert(rpUserPayInfo);
    }

    @Override
    public void updateData(RpUserPayInfo rpUserPayInfo) {
        rpUserPayInfoDao.update(rpUserPayInfo);
    }

    @Override
    public RpUserPayInfo getDataById(String id) {
        return rpUserPayInfoDao.getById(id);
    }

    @Override
    public PageBean listPage(PageParam pageParam, RpUserPayInfo rpUserPayInfo) {
        Map<String, Object> paramMap = new HashMap<String, Object>();
        return rpUserPayInfoDao.listPage(pageParam, paramMap);
    }

    /**
     * 通过商户编号获取商户支付配置信息
     *
     * @param userNO
     * @return
     */
    @Override
    public RpUserPayInfo getByUserNo(String userNo, String payWayCode) {
        return rpUserPayInfoDao.getByUserNo(userNo, payWayCode);
    }
}