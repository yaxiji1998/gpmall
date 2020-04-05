package cn.edu.ywb.pojo;

public class Order {
    private Integer id;
    private Integer userId;
    private User user;
    private Integer goodId;
    private Good good;
    private Integer addressId;
    private Address address;
    private Integer status;
    private String statusString;
    private Integer amount;
    private String orderDate;
    private Integer shoppingNumber;

    @Override
    public String toString() {
        return "Order{" +
                "id=" + id +
                ", userId=" + userId +
                ", user=" + user +
                ", goodId=" + goodId +
                ", good=" + good +
                ", addressId=" + addressId +
                ", address=" + address +
                ", status=" + status +
                ", statusString='" + statusString + '\'' +
                ", amount=" + amount +
                ", orderDate='" + orderDate + '\'' +
                ", shoppingNumber=" + shoppingNumber +
                '}';
    }

    public Integer getShoppingNumber() {
        return shoppingNumber;
    }

    public void setShoppingNumber(Integer shoppingNumber) {
        this.shoppingNumber = shoppingNumber;
    }

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

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Integer getGoodId() {
        return goodId;
    }

    public void setGoodId(Integer goodId) {
        this.goodId = goodId;
    }

    public Good getGood() {
        return good;
    }

    public void setGood(Good good) {
        this.good = good;
    }

    public Integer getAddressId() {
        return addressId;
    }

    public void setAddressId(Integer addressId) {
        this.addressId = addressId;
    }

    public Address getAddress() {
        return address;
    }

    public void setAddress(Address address) {
        this.address = address;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
        if(status!=null){
            switch (status){
                case 0:this.statusString = "未付款";
                break;
                case 1:this.statusString = "已付款";
                break;
                case 2:this.statusString = "已发货";
                break;
                case 3:this.statusString = "已收货";
                break;
                default:break;
            }
        }
    }

    public String getStatusString() {
        return statusString;
    }

    public void setStatusString(String statusString) {
        this.statusString = statusString;
    }

    public Integer getAmount() {
        return amount;
    }

    public void setAmount(Integer amount) {
        this.amount = amount;
    }

    public String getOrderDate() {
        return orderDate;
    }

    public void setOrderDate(String orderDate) {
        this.orderDate = orderDate;
    }
}
