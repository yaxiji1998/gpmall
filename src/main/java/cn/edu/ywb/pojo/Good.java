package cn.edu.ywb.pojo;

public class Good {
    private Integer id;
    private String gname;
    private Double grprice;
    private Double goprice;
    private Integer gstore;
    private String gpicture;
    private Integer goodstype_id;
    private GoodsType goodsType;

    public GoodsType getGoodsType() {
        return goodsType;
    }

    public void setGoodsType(GoodsType goodsType) {
        this.goodsType = goodsType;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getGname() {
        return gname;
    }

    public void setGname(String gname) {
        this.gname = gname;
    }

    public Double getGrprice() {
        return grprice;
    }

    public void setGrprice(Double grprice) {
        this.grprice = grprice;
    }

    public Double getGoprice() {
        return goprice;
    }

    public void setGoprice(Double goprice) {
        this.goprice = goprice;
    }

    public Integer getGstore() {
        return gstore;
    }

    public void setGstore(Integer gstore) {
        this.gstore = gstore;
    }

    public String getGpicture() {
        return gpicture;
    }

    public void setGpicture(String gpicture) {
        this.gpicture = gpicture;
    }

    public Integer getGoodstype_id() {
        return goodstype_id;
    }

    public void setGoodstype_id(Integer goodstype_id) {
        this.goodstype_id = goodstype_id;
    }

    @Override
    public String toString() {
        return "Good{" +
                "id=" + id +
                ", gname='" + gname + '\'' +
                ", grprice=" + grprice +
                ", goprice=" + goprice +
                ", gstore=" + gstore +
                ", gpicture='" + gpicture + '\'' +
                ", goodstype_id=" + goodstype_id +
                ", goodsType=" + goodsType +
                '}';
    }
}
