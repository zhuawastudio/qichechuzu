package com.service;

import com.baomidou.mybatisplus.service.IService;
import com.entity.GonggaoEntity;
import com.utils.PageUtils;

import java.util.Map;

/**
 * 公告 服务类
 */
public interface GonggaoService extends IService<GonggaoEntity> {

    /**
    * @param params 查询参数
    * @return 带分页的查询出来的数据
    */
     PageUtils queryPage(Map<String, Object> params);
}