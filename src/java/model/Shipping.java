/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.util.Date;

/**
 *
 * @author gia huy
 */
class Shipping {
    private int shippingId;
    private int orderId;
    private String shippingAddress;
    private String shippingStatus;
    private Date expectedDeliveryDate;
    
    // Getters and Setters

    public Shipping(int shippingId, int orderId, String shippingAddress, String shippingStatus, Date expectedDeliveryDate) {
        this.shippingId = shippingId;
        this.orderId = orderId;
        this.shippingAddress = shippingAddress;
        this.shippingStatus = shippingStatus;
        this.expectedDeliveryDate = expectedDeliveryDate;
    }

    public int getShippingId() {
        return shippingId;
    }

    public void setShippingId(int shippingId) {
        this.shippingId = shippingId;
    }

    public int getOrderId() {
        return orderId;
    }

    public void setOrderId(int orderId) {
        this.orderId = orderId;
    }

    public String getShippingAddress() {
        return shippingAddress;
    }

    public void setShippingAddress(String shippingAddress) {
        this.shippingAddress = shippingAddress;
    }

    public String getShippingStatus() {
        return shippingStatus;
    }

    public void setShippingStatus(String shippingStatus) {
        this.shippingStatus = shippingStatus;
    }

    public Date getExpectedDeliveryDate() {
        return expectedDeliveryDate;
    }

    public void setExpectedDeliveryDate(Date expectedDeliveryDate) {
        this.expectedDeliveryDate = expectedDeliveryDate;
    }
    
}