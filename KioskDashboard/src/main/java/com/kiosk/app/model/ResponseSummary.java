package com.kiosk.app.model;

public class ResponseSummary {

    private String counterId;
    private int hsCount;
    private int msCount;
    private int lsCount;
    private int responseTotal;

    public ResponseSummary() {
    }

    public ResponseSummary(String counterId, int hsCount, int msCount, int lsCount) {
        this.counterId = counterId;
        this.hsCount = hsCount;
        this.msCount = msCount;
        this.lsCount = lsCount;
    }

    public String getCounterId() {
        return counterId;
    }

    public void setCounterId(String counterId) {
        this.counterId = counterId;
    }

    public int getHsCount() {
        return hsCount;
    }

    public void setHsCount(int hsCount) {
        this.hsCount = hsCount;
    }

    public int getMsCount() {
        return msCount;
    }

    public void setMsCount(int msCount) {
        this.msCount = msCount;
    }

    public int getLsCount() {
        return lsCount;
    }

    public void setLsCount(int lsCount) {
        this.lsCount = lsCount;
    }

    public int getResponseTotal() {
        return responseTotal;
    }

    public void setResponseTotal(int responseTotal) {
        this.responseTotal = responseTotal;
    }

    @Override
    public String toString() {
        return "ResponseSummary{" +
                "counterId='" + counterId + '\'' +
                ", hsCount=" + hsCount +
                ", msCount=" + msCount +
                ", lsCount=" + lsCount +
                ", responseTotal=" + responseTotal +
                '}';
    }
}
