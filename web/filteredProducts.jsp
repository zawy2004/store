<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.util.List, model.Product" %>
<%
    List<Product> productList = (List<Product>) request.getAttribute("productList");
    int index = 0;
%>

<c:forEach var="product" items="${productList}">
    <% if (index % 3 == 0) { %>
    <div class="row">
    <% } %>
        <div class="col-lg-4 col-md-6 col-sm-12 mb-20">
            <a href="ProductDetail?productId=${product.productId}" class="product__new-item">
                <div class="card" style="width: 100%">
                    <div>
                        <img class="card-img-top" src="${product.imageUrl}" alt="${product.name}">
                        <form action="" class="hover-icon hidden-sm hidden-xs">
                            <input type="hidden">
                            <a href="pay?productId=${product.productId}" class="btn-add-to-cart" title="Mua ngay">
                                <i class="fas fa-cart-plus"></i>
                            </a>
                            <a data-toggle="modal" data-target="#myModal" class="quickview" title="Xem nhanh">
                                <i class="fas fa-search"></i>
                            </a>
                        </form>
                    </div>
                    <div class="card-body">
                        <h5 class="card-title description">${product.name}</h5>
                        <div class="product__price">
                            <p class="card-text price-color product__price-old">${product.price * 1.2}đ</p>
                            <p class="card-text price-color product__price-new">${product.price} đ</p>
                        </div>
                        <div class="home-product-item__action">
                            <span class="home-product-item__like home-product-item__like--liked">
                                <i class="home-product-item__like-icon-empty far fa-heart"></i>
                                <i class="home-product-item__like-icon-fill fas fa-heart"></i>
                            </span>
                            <div class="home-product-item__rating">
                                <i class="home-product-item__star--gold fas fa-star"></i>
                                <i class="home-product-item__star--gold fas fa-star"></i>
                                <i class="home-product-item__star--gold fas fa-star"></i>
                                <i class="home-product-item__star--gold fas fa-star"></i>
                                <i class="fas fa-star"></i>
                            </div>
                            <span class="home-product-item__sold">100 đã bán</span>
                        </div>
                        <div class="sale-off">
                            <span class="sale-off-percent">20%</span>
                            <span class="sale-off-label">GIẢM</span>
                        </div>
                    </div>
                </div>
            </a>
        </div>
    <% 
        index++;
        if (index % 3 == 0 || index == productList.size()) { 
    %>
    </div>
    <% } %>
</c:forEach>