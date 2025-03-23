/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author gia huy
 */
public class Brand {
    private int brandId;
    private String brandName;
    private String description;
    
    public Brand(int brandId, String brandName, String description) {
        this.brandId = brandId;
        this.brandName = brandName;
        this.description = description;
    }
    
    public int getBrandId() { return brandId; }
    public void setBrandId(int brandId) { this.brandId = brandId; }
    public String getBrandName() { return brandName; }
    public void setBrandName(String brandName) { this.brandName = brandName; }
    public String getDescription() { return description; }
    public void setDescription(String description) { this.description = description; }
}
