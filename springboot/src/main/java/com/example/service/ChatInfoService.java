package com.example.service;

import cn.hutool.core.date.DateUtil;
import com.example.entity.Account;
import com.example.entity.ChatInfo;
import com.example.mapper.ChatInfoMapper;
import com.example.utils.TokenUtils;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * 聊天信息业务处理
 **/
@Service
public class ChatInfoService {

    @Resource
    private ChatInfoMapper chatInfoMapper;

    /**
     * 新增
     */
    public void add(ChatInfo chatInfo) {
        chatInfo.setTime(DateUtil.now());
        chatInfoMapper.insert(chatInfo);
    }

    /**
     * 删除
     */
    public void deleteById(Integer id) {
        chatInfoMapper.deleteById(id);
    }

    /**
     * 批量删除
     */
    public void deleteBatch(List<Integer> ids) {
        for (Integer id : ids) {
            chatInfoMapper.deleteById(id);
        }
    }

    /**
     * 修改
     */
    public void updateById(ChatInfo chatInfo) {
        chatInfoMapper.updateById(chatInfo);
    }

    /**
     * 根据ID查询
     */
    public ChatInfo selectById(Integer id) {
        return chatInfoMapper.selectById(id);
    }

    /**
     * 查询所有
     */
    public List<ChatInfo> selectAll(ChatInfo chatInfo) {
        return chatInfoMapper.selectAll(chatInfo);
    }

    /**
     * 分页查询
     */
    public PageInfo<ChatInfo> selectPage(ChatInfo chatInfo, Integer pageNum, Integer pageSize) {
        PageHelper.startPage(pageNum, pageSize);
        List<ChatInfo> list = chatInfoMapper.selectAll(chatInfo);
        return PageInfo.of(list);
    }

    public Integer selectUnReadChatNum(Integer userId, Integer chatUserId) {
        return chatInfoMapper.selectUnReadChatNum(userId, chatUserId);
    }

    public List<ChatInfo> selectUserChat(Integer chatUserId) {
        Account currentUser = TokenUtils.getCurrentUser();
        Integer userId = currentUser.getId();
        return chatInfoMapper.selectUserChat(userId, chatUserId);
    }

    public void updateRead(Integer chatUserId) {
        Account currentUser = TokenUtils.getCurrentUser();
        chatInfoMapper.updateRead(currentUser.getId(), chatUserId);
    }

}
