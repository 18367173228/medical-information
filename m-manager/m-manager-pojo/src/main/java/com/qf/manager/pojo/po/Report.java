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
    private String dname;
    private Date reportTime;
    private String title;
    private String section;
    private String picture;

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

    public String getDname() {
        return dname;
    }

    public void setDname(String dname) {
        this.dname = dname;
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

    @Override
    public String toString() {
        return "Report{" +
                "reportId=" + reportId +
                ", uname='" + uname + '\'' +
                ", dname='" + dname + '\'' +
                ", reportTime=" + reportTime +
                ", title='" + title + '\'' +
                ", section='" + section + '\'' +
                ", picture='" + picture + '\'' +
                '}';
    }
}
