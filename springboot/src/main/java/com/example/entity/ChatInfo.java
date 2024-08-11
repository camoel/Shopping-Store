package com.example.entity;


/**
 * 聊天信息
 */
public class ChatInfo {

    /** ID */
    private Integer id;
    /** 聊天用户ID */
    private Integer chatUserId;
    /** 当前用户ID */
    private Integer userId;
    /** 聊天内容 */
    private String text;
    /** 是否已读 */
    private String isread;
    /** 时间 */
    private String time;
    private String chatUserName;
    private String chatUserAvatar;
    private String userName;
    private String userAvatar;

    public String getChatUserAvatar() {
        return chatUserAvatar;
    }

    public void setChatUserAvatar(String chatUserAvatar) {
        this.chatUserAvatar = chatUserAvatar;
    }

    public String getUserAvatar() {
        return userAvatar;
    }

    public void setUserAvatar(String userAvatar) {
        this.userAvatar = userAvatar;
    }

    public String getChatUserName() {
        return chatUserName;
    }

    public void setChatUserName(String chatUserName) {
        this.chatUserName = chatUserName;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
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

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public String getIsread() {
        return isread;
    }

    public void setIsread(String isread) {
        this.isread = isread;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

}