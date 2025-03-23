package model;

/**
 *
 * @author gia huy
 */
public class ProductDetail {
    private int detailId;
    private int productId;
    private String size;
    private String content;
    private String material;
    private double weight;
    private String color;
    private String languageCode;

    // Constructor
    public ProductDetail(int detailId, int productId, String size, String content, String material, double weight, String color, String languageCode) {
        this.detailId = detailId;
        this.productId = productId;
        this.size = size;
        this.content = content;
        this.material = material;
        this.weight = weight;
        this.color = color;
        this.languageCode = languageCode;
    }

    // Getters and Setters
    public int getDetailId() {
        return detailId;
    }

    public void setDetailId(int detailId) {
        this.detailId = detailId;
    }

    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public String getSize() {
        return size;
    }

    public void setSize(String size) {
        this.size = size;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getMaterial() {
        return material;
    }

    public void setMaterial(String material) {
        this.material = material;
    }

    public double getWeight() {
        return weight;
    }

    public void setWeight(double weight) {
        this.weight = weight;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public String getLanguageCode() {
        return languageCode;
    }

    public void setLanguageCode(String languageCode) {
        this.languageCode = languageCode;
    }

    @Override
    public String toString() {
        return "ProductDetail{" +
                "detailId=" + detailId +
                ", productId=" + productId +
                ", size='" + size + '\'' +
                ", content='" + content + '\'' +
                ", material='" + material + '\'' +
                ", weight=" + weight +
                ", color='" + color + '\'' +
                ", languageCode='" + languageCode + '\'' +
                '}';
    }
}
