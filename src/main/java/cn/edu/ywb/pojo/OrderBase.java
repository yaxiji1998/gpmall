package cn.edu.ywb.pojo;

import java.util.Calendar;

public class OrderBase {
    private Integer id;
    private Integer userId;
    private Double amount;
    private Integer status;
    //status是整型，所以这里要将它转化为String类型
    private String statusString;
    private Calendar orderDate;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Double getAmount() {
        return amount;
    }

    public void setAmount(Double amount) {
        this.amount = amount;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public String getStatusString() {
        return statusString;
    }

    public void setStatusString(String statusString) {
        this.statusString = statusString;
    }

    public Calendar getOrderDate() {
        return orderDate;
    }

    public void setOrderDate(Calendar orderDate) {
        this.orderDate = orderDate;
    }

    @Override
    public String toString() {
        return "OrderBase{" +
                "id=" + id +
                ", userId=" + userId +
                ", amount=" + amount +
                ", status=" + status +
                ", statusString='" + statusString + '\'' +
                ", orderDate=" + orderDate +
                '}';
    }
}
