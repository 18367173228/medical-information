package com.qf.manager.pojo.po;

public class Drug {
    private Long drugid;

    private String drugname;

    private String drugimg;

    private Double drugprice;

    private Integer cid;

    private String productiondate;

    private String shelflife;

    private String note;

    private Integer dstatus;

    public Long getDrugid() {
        return drugid;
    }

    public void setDrugid(Long drugid) {
        this.drugid = drugid;
    }

    public String getDrugname() {
        return drugname;
    }

    public void setDrugname(String drugname) {
        this.drugname = drugname == null ? null : drugname.trim();
    }

    public String getDrugimg() {
        return drugimg;
    }

    public void setDrugimg(String drugimg) {
        this.drugimg = drugimg == null ? null : drugimg.trim();
    }

    public Double getDrugprice() {
        return drugprice;
    }

    public void setDrugprice(Double drugprice) {
        this.drugprice = drugprice;
    }

    public Integer getCid() {
        return cid;
    }

    public void setCid(Integer cid) {
        this.cid = cid;
    }

    public String getProductiondate() {
        return productiondate;
    }

    public void setProductiondate(String productiondate) {
        this.productiondate = productiondate == null ? null : productiondate.trim();
    }

    public String getShelflife() {
        return shelflife;
    }

    public void setShelflife(String shelflife) {
        this.shelflife = shelflife == null ? null : shelflife.trim();
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note == null ? null : note.trim();
    }

    public Integer getDstatus() {
        return dstatus;
    }

    public void setDstatus(Integer dstatus) {
        this.dstatus = dstatus;
    }
}