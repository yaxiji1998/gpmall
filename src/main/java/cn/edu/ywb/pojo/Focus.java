package cn.edu.ywb.pojo;

import java.util.Calendar;

public class Focus {
    private Integer id;
    private Integer goodId;
    private Integer userId;
    private Calendar focustime;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getGoodId() {
        return goodId;
    }

    public void setGoodId(Integer goodId) {
        this.goodId = goodId;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Calendar getFocustime() {
        return focustime;
    }

    public void setFocustime(Calendar focustime) {
        this.focustime = focustime;
    }

    @Override
    public String toString() {
        return "Focus{" +
                "id=" + id +
                ", goodId=" + goodId +
                ", userId=" + userId +
                ", focustime=" + focustime +
                '}';
    }
}
