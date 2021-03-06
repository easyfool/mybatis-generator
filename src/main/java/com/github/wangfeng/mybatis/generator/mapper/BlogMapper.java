package com.github.wangfeng.mybatis.generator.mapper;

import com.github.wangfeng.mybatis.generator.entity.BlogDO;

public interface BlogMapper {
    int deleteByPrimaryKey(Long id);

    int insert(BlogDO record);

    int insertSelective(BlogDO record);

    BlogDO selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(BlogDO record);

    int updateByPrimaryKey(BlogDO record);
}