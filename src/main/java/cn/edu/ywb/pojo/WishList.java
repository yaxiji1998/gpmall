package cn.edu.ywb.pojo;


public class WishList {
    private Integer id;
    private Integer goodId;
    private Integer userId;
    private Good good;

    public Good getGood() {
        return good;
    }

    public void setGood(Good good) {
        this.good = good;
    }

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


    @Override
    public String toString() {
        return "WishList{" +
                "id=" + id +
                ", goodId=" + goodId +
                ", userId=" + userId +
                '}';
    }
}
