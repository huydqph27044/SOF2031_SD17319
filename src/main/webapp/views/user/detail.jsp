<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/plugin/bootstrap.min.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/custom/style.css" />

</head>
<body>
<%--header--%>
<div class="container header">
    <div class="menu-top">
        <nav class="navbar navbar-expand-lg bg-body-tertiary">
            <div class="container-fluid">
                <a class="navbar-brand" href="#">
                    <img src="${pageContext.request.contextPath}/upload/logo1.png" alt="" />
                </a>

                <form class="d-flex" role="search">
                    <input
                            class="form-control me-2 search-btn"
                            type="search"
                            placeholder="Search"
                            aria-label="Search"
                    />
                    <button class="btn btn-outline-success" type="submit">Search</button>
                </form>
                <button
                        class="navbar-toggler"
                        type="button"
                        data-bs-toggle="collapse"
                        data-bs-target="#navbarNav"
                        aria-controls="navbarNav"
                        aria-expanded="false"
                        aria-label="Toggle navigation"
                >
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav">
                        <c:if test="${users.name != null}">
                            <li class="nav-item">
                                <a class="nav-link">${users.name}</a>
                            </li>
                        </c:if>
                        <c:if test="${users.name == null}">
                            <li class="nav-item">
                                <a class="nav-link" href="${pageContext.request.contextPath}/login">Đăng nhập</a>
                            </li>
                        </c:if>
                        <!-- ng-show="!successLogin" -->
                        <li class="nav-item dropdown">
                            <a
                                    class="nav-link dropdown-toggle"
                                    href="#"
                                    role="button"
                                    data-bs-toggle="dropdown"
                                    aria-expanded="false">Trang của tôi</a>

                            <ul class="dropdown-menu">
                                <li><a class="dropdown-item" href="#ho-so">Hồ sơ</a></li>
                                <li>
                                    <a class="dropdown-item" href="#ho-so/doi-mat-khau">Đổi mật khẩu</a>
                                </li>
                                <li>
                                    <a class="dropdown-item" href="#ho-so/mua-hang">Lịch sử mua hàng</a>
                                </li>
                                <li>
                                    <a class="dropdown-item" href="${pageContext.request.contextPath}/logout">Đăng xuất</a>
                                </li>

                                <li>
                                    <a class="dropdown-item" href="${pageContext.request.contextPath}/login">Quản trị viên</a>
                                </li>
                            </ul>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#gio-hang">Giỏ hàng</a>
                        </li>

                    </ul>
                </div>
            </div>
        </nav>
    </div>
    <div class="menu-nav">
        <nav class="navbar navbar-expand-lg bg-body-tertiary">
            <div class="container-fluid">
                <button
                        class="navbar-toggler"
                        type="button"
                        data-bs-toggle="collapse"
                        data-bs-target="#navbarNav"
                        aria-controls="navbarNav"
                        aria-expanded="false"
                        aria-label="Toggle navigation"
                >
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <a class="nav-link" href="${pageContext.request.contextPath}/home">Trang chủ</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="${pageContext.request.contextPath}/product/list">Sản phẩm</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#gioi-thieu">Giới thiệu</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#tin-tuc">Tin tức</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#lien-he">Liên hệ</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
    </div>
</div>
<%--end header--%>
<%--body--%>
<!--  -->
<div class="container trang-chu">

    <div class="san-pham-ban-chay">
        <h5 class="title-detail">Chi tiết sản phẩm</h5>
        <div
                class="row g-0 bg-body-secondary position-relative"
        >
            <div class="col-md-6 mb-md-0 p-md-4">
                <img src="${pageContext.request.contextPath}/upload/${product.image}" class="w-100" alt="..." />
            </div>
            <div class="col-md-6 p-4 ps-md-0">
                <h5 class="mt-0">${product.name}</h5>

                <div
                >
                    <p>Danh mục: ${product.category.name}</p>
                </div>
                <p>Giá tiền: ${product.priceSale}</p>
                <p>Giảm giá: ${product.priceSale - product.priceImport}</p>
                <p>Thành tiền: ${product.priceImport}</p>
                <p>Số lượng: ${product.quantity}</p>
                <p>Mô tả: ${product.descriptions}</p>
                <p>
                    <a href="#/gio-hang">
                        <button type="button" class="btn btn-outline-success">
                            + Giỏ hàng
                        </button>
                    </a>
                    <a href="#/san-pham/mua-ngay">
                        <button type="button" class="btn btn-outline-danger">
                            + Mua ngay
                        </button>
                    </a>
                </p>
            </div>
        </div>
        <div class="sanphamTuongTu">
            <h6 class="title-tuongtu"><span>Sản phẩm tương tự</span></h6>
            <div class="row">
                <c:forEach items="${listPro}" var="sp">
                    <div class="col-lg-4 col-md-6">
                        <div class="card d-flex flex-column align-items-center">
                            <a href="${pageContext.request.contextPath}/product/detail/${sp.id}">
                                <div class="product-name">${sp.name}</div>
                                <div class="card-img"><img
                                        src="${pageContext.request.contextPath}/upload/${sp.image}"
                                        alt=""></div>
                                <div class="card-body pt-5">
                                    <div class="text-muted text-center mt-auto">Số lượng: ${sp.quantity}</div>
                                        <%--                            <div class="d-flex align-items-center justify-content-center colors my-2">--%>
                                        <%--                                <div class="btn-group" data-toggle="buttons" data-tooltip="tooltip"--%>
                                        <%--                                     data-placement="right" title="choose color"><label--%>
                                        <%--                                        class="btn btn-red form-check-label"> <input class="form-check-input"--%>
                                        <%--                                                                                     type="radio" autocomplete="off">--%>
                                        <%--                                </label> <label class="btn btn-blue form-check-label active"> <input--%>
                                        <%--                                        class="form-check-input" type="radio" autocomplete="off"> </label> <label--%>
                                        <%--                                        class="btn btn-green form-check-label"> <input class="form-check-input"--%>
                                        <%--                                                                                       type="radio" autocomplete="off">--%>
                                        <%--                                </label> <label class="btn btn-orange form-check-label"> <input class="form-check-input"--%>
                                        <%--                                                                                                type="radio"--%>
                                        <%--                                                                                                autocomplete="off">--%>
                                        <%--                                </label> <label class="btn btn-pink form-check-label"> <input class="form-check-input"--%>
                                        <%--                                                                                              type="radio"--%>
                                        <%--                                                                                              autocomplete="off">--%>
                                        <%--                                </label></div>--%>
                                        <%--                            </div>--%>
                                    <div class="d-flex align-items-center price" style="margin-left: 80px">$:
                                        <div class="del mr-2"><span class="text-dark"> ${sp.priceSale}</span></div>
                                        <div class="font-weight-bold"> ${sp.priceImport}</div>
                                    </div>
                                </div>
                            </a>
                            <div>
                                <p>
                                    <a href="${pageContext.request.contextPath}/product/cart">
                                        <button type="button" class="btn btn-outline-success">
                                            + Giỏ hàng
                                        </button>
                                    </a>
                                    <a href="${pageContext.request.contextPath}/product/buy-now">
                                        <button type="button" class="btn btn-outline-danger">
                                            + Mua ngay
                                        </button>
                                    </a>
                                </p>
                            </div>
                        </div>

                    </div>
                </c:forEach>
            </div>
        </div>

    </div>

</div>
<%--end body--%>
<%--footer--%>
<div class="container py-4 py-md-5 px-4 px-md-3 text-body-secondary footer">
    <div class="row">
        <div class="col-lg-3 mb-3">
            <a
                    class="d-inline-flex align-items-center mb-2 text-body-secondary text-decoration-none"
                    href="/"
                    aria-label="Bootstrap"
            >
                <img src="../../assets/logo1.png" alt="" />
                <br />
            </a>
            <ul class="list-unstyled small">
                <li class="mb-2">
                    Xe đạp điện trợ lực Nhật bản hiệu năng cao
                    <a href="/docs/5.3/about/team/">KingBicycle team</a>
                </li>
                <li class="mb-2">Địa chỉ: 81 Nhật Chiêu, Tây Hồ, TP. Hà Nội</li>
                <li class="mb-2">Email: Info@KingBicycle.com</li>
            </ul>
        </div>
        <div class="col-6 col-lg-2 offset-lg-1 mb-3">
            <h5>Links</h5>
            <ul class="list-unstyled">
                <li class="mb-2"><a href="/">Home</a></li>
                <li class="mb-2"><a href="/gioi-thieu">Giới thiệu</a></li>
                <li class="mb-2"><a href="/lien-he">Liên hệ</a></li>
                <li class="mb-2">
                    <a href="san-pham">Sản phẩm</a>
                </li>
                <li class="mb-2">
                    <a href="/tin-tuc">Tin tức</a>
                </li>
            </ul>
        </div>
        <div class="col-6 col-lg-2 mb-3">
            <h5>Tin tức</h5>
            <ul class="list-unstyled">
                <li class="mb-2">
                    <a href="/tin-tuc">Bài viết nổi bật</a>
                </li>
                <li class="mb-2">
                    <a href="/tin-tuc">Bài viết gần đây</a>
                </li>
                <li class="mb-2">
                    <a href="/tin-tuc">Thảo luận</a>
                </li>
                <li class="mb-2">
                    <a href="/tin-tuc">Chủ đề mới</a>
                </li>
            </ul>
        </div>
        <div class="col-6 col-lg-2 mb-3">
            <h5>Liên hệ</h5>
            <ul class="list-unstyled">
                <li class="mb-2">
                    <a href="lien-he">Liên hệ</a>
                </li>
                <li class="mb-2">
                    <a href="/lien-he">Hotline</a>
                </li>
                <li class="mb-2"><a href="/lien-he">Email</a></li>
                <li class="mb-2"><a href="/lien-he">Fanpage</a></li>
                <li class="mb-2">
                    <a href="/lien-he"> Twitter</a>
                </li>
            </ul>
        </div>
        <div class="col-6 col-lg-2 mb-3">
            <h5>Xe đạp</h5>
            <ul class="list-unstyled">
                <li class="mb-2">
                    <a href="/san-pham">Mẫu mới</a>
                </li>
                <li class="mb-2">
                    <a href="san-pham">Nổi bật</a>
                </li>
                <li class="mb-2">
                    <a href="/san-pham">Bán chạy</a>
                </li>
                <li class="mb-2">
                    <a href="/san-pham">Hiệu suất cao</a>
                </li>
                <li class="mb-2">
                    <a href="/san-pham">Tất cả</a>
                </li>
            </ul>
        </div>
    </div>
</div>
<%--end footer--%>
<script src="${pageContext.request.contextPath}/js/plugin/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/js/plugin/bootstrap.bundle.min.js"></script>
</body>
</html>