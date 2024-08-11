package com.example.entity;

/**
 * 聊天组
 */
public class ChatGroup {

    /** ID */
    private Integer id;
    /** 聊天用户ID */
    private Integer chatUserId;
    /** 当前用户ID */
    private Integer userId;
    private String chatUserName;
    private String chatUserAvatar;
    private Integer chatNum;

    public String getChatUserName() {
        return chatUserName;
    }

    public void setChatUserName(String chatUserName) {
        this.chatUserName = chatUserName;
    }

    public String getChatUserAvatar() {
        return chatUserAvatar;
    }

    public void setChatUserAvatar(String chatUserAvatar) {
        this.chatUserAvatar = chatUserAvatar;
    }

    public Integer getChatNum() {
        return chatNum;
    }

    public void setChatNum(Integer chatNum) {
        this.chatNum = chatNum;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getChatUserId() {
        return chatUserId;
    }

    public void setChatUserId(Integer chatUserId) {
        this.chatUserId = chatUserId;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

}