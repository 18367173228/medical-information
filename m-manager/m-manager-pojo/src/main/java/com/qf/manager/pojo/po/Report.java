package com.qf.manager.pojo.po;

import java.util.Date;

/**
 * Created by Administrator on 2018/5/24.
 * `reportId` int(11) NOT NULL AUTO_INCREMENT,
 `uname` varchar(255) DEFAULT NULL,
 `dname` varchar(255) DEFAULT NULL,
 `reportTime` date DEFAULT NULL,
 `title` varchar(255) DEFAULT NULL,
 `section` varchar(255) DEFAULT NULL,
 `picture` varchar(255) DEFAULT NULL,
 */
public class Report {
    private Integer reportId;
    private String uname;
    private String did;
    private String reportTime;
    private String title;
    private String section;
    private String picture;
    private Integer status;

    @Override
    public String toString() {
        return "Report{" +
                "reportId=" + reportId +
                ", uname='" + uname + '\'' +
                ", did='" + did + '\'' +
                ", reportTime=" + reportTime +
                ", title='" + title + '\'' +
                ", section='" + section + '\'' +
                ", picture='" + picture + '\'' +
                ", status=" + status +
                '}';
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

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



    public String getReportTime() {
        return reportTime;
    }

    public void setReportTime(String reportTime) {
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

    public String getDid() {
        return did;
    }

    public void setDid(String did) {
        this.did = did;
    }

}
