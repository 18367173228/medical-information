package com.qf.manager.pojo.po;
import java.util.Date;
/**
 * Created by Administrator on 2018/5/25.
 * `reportId` int(11) NOT NULL AUTO_INCREMENT,
 `uname` varchar(255) DEFAULT NULL,
 `did` varchar(255) DEFAULT NULL,
 `reportTime` date DEFAULT NULL,
 `title` varchar(255) DEFAULT NULL,
 `section` varchar(255) DEFAULT NULL,
 `picture` varchar(255) DEFAULT NULL,
 `status` int(11) DEFAULT '1',
 */
public class Drug {
    private Integer reportId;
    private String uname;
    private String did;
    private Date reportTime;
    private String title;
    private String section;
    private String picture;
    private Integer status;

    public Integer getReportId() {
        return reportId;
    }

    public void setReportId(Integer reportId) {
        this.reportId = reportId;
    }

    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname;
    }

    public String getDid() {
        return did;
    }

    public void setDid(String did) {
        this.did = did;
    }

    public Date getReportTime() {
        return reportTime;
    }

    public void setReportTime(Date reportTime) {
        this.reportTime = reportTime;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getSection() {
        return section;
    }

    public void setSection(String section) {
        this.section = section;
    }

    public String getPicture() {
        return picture;
    }

    public void setPicture(String picture) {
        this.picture = picture;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }
}
