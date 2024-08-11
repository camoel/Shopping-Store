package com.example.mapper;

import com.example.entity.ChatGroup;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

/**
 * 操作chat_group相关数据接口
 */
public interface ChatGroupMapper {

    /**
     * 新增
     */
    int insert(ChatGroup chatGroup);

    /**
     * 删除
     */
    int deleteById(Integer id);

    /**
     * 修改
     */
    int updateById(ChatGroup chatGroup);

    /**
     * 根据ID查询
     */
    ChatGroup selectById(Integer id);

    /**
     * 查询所有
     */
    List<ChatGroup> selectAll(ChatGroup chatGroup);

    @Select("select * from chat_group where user_id = #{userId}")
    List<ChatGroup> selectByUserId(Integer userId);

    @Select("select * from chat_group where chat_user_id = #{chatUserId} and user_id = #{userId}")
    ChatGroup selectByChatUserIdAndUserId(@Param("chatUserId") Integer chatUserId, @Param("userId") Integer userId);

}