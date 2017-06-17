package com.sinotopia.pay;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.sinotopia.pay.account.service.RpAccountTransactionService;
import com.sinotopia.pay.common.core.pagination.PageBean;
import com.sinotopia.pay.common.core.pagination.PageParam;
import com.sinotopia.pay.permission.service.PmsOperatorService;

/**
 * @描述: 启动Dubbo服务用的MainClass.
 * @作者: WuShuicheng .
 * @创建时间: 2013-11-5,下午9:47:55 .
 * @版本: 1.0 .
 */
public class DubboProvider {

    private static final Log log = LogFactory.getLog(DubboProvider.class);

    @SuppressWarnings("unused")
    public static void main(String[] args) {
        try {
            ApplicationContext ac = new ClassPathXmlApplicationContext("classpath:spring/spring-context-service.xml");
            RpAccountTransactionService rpAccountTransactionService = (RpAccountTransactionService) ac.getBean("rpAccountTransactionService");
            PmsOperatorService operator = (PmsOperatorService) ac.getBean("pmsOperatorService");
            PageBean listPage = operator.listPage(new PageParam(), null);
            listPage.getTotalCount();
        } catch (Exception e) {
            e.printStackTrace();
            log.error("== DubboProvider context start error:", e);
        }
    }

}