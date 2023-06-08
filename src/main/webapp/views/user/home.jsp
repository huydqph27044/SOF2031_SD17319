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
    <div class="slide-show">
        <div
                id="carouselExampleIndicators"
                class="carousel slide"
                data-bs-ride="carousel"
        >
            <div class="carousel-indicators">
                <button
                        type="button"
                        data-bs-target="#carouselExampleIndicators"
                        data-bs-slide-to="0"
                        class="active"
                        aria-current="true"
                        aria-label="Slide 1"
                ></button>
                <button
                        type="button"
                        data-bs-target="#carouselExampleIndicators"
                        data-bs-slide-to="1"
                        aria-label="Slide 2"
                ></button>
                <button
                        type="button"
                        data-bs-target="#carouselExampleIndicators"
                        data-bs-slide-to="2"
                        aria-label="Slide 3"
                ></button>
            </div>
            <div class="carousel-inner">
                <div class="carousel-item active" data-bs-interval="2000" >
                    <img src="${pageContext.request.contextPath}/upload/banner-01.jpg" class="d-block" alt="..." style="width: 100%; height: 500px"/>
                </div>
                <div class="carousel-item" data-bs-interval="1500">
                    <img src="${pageContext.request.contextPath}/upload/banner-03.jpg" class="d-block" alt="..." style="width: 100%; height: 500px"/>
                </div>
                <div class="carousel-item" data-bs-interval="1500">
                    <img src="${pageContext.request.contextPath}/upload/banner-02.jpg" class="d-block" alt="..." style="width: 100%; height: 500px"/>
                </div>
            </div>
            <button
                    class="carousel-control-prev"
                    type="button"
                    data-bs-target="#carouselExampleIndicators"
                    data-bs-slide="prev"
            >
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button
                    class="carousel-control-next"
                    type="button"
                    data-bs-target="#carouselExampleIndicators"
                    data-bs-slide="next"
            >
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>
    </div>
    <div class="san-pham-ban-chay">
        <h4 class="title-ban-chay">Sản phẩm bán chạy</h4>
        <%--                <div class="row">--%>
        <%--                    <div--%>
        <%--                            class="dataxe col-lg-3"--%>
        <%--                            ng-repeat="xd in danhSachXeDap | limitTo : 8 | orderBy : '-soLuongDaBan'"--%>
        <%--                    >--%>
        <%--                        <div class="card" style="width: 16rem">--%>
        <%--                            <a href="#/san-pham/detail/{{xd.id}}">--%>
        <%--                                <img--%>
        <%--                                        src="../../assets/img-pro/{{xd.anhXe}}"--%>
        <%--                                        class="card-img-top"--%>
        <%--                                        alt="..."--%>
        <%--                                />--%>
        <%--                            </a>--%>
        <%--                            <div class="card-body">--%>
        <%--                                <a href="#/san-pham/detail/{{xd.id}}">--%>
        <%--                                    <h6 class="card-title">{{xd.tenXe}}</h6>--%>
        <%--                                </a>--%>
        <%--                                <p class="card-text card-mota">--%>
        <%--                                    <small>{{xd.moTa}}</small>--%>
        <%--                                </p>--%>

        <%--                                <p>--%>
        <%--                                    <a href="#/gio-hang">--%>
        <%--                                        <button type="button" class="btn btn-outline-success">--%>
        <%--                                            + Giỏ hàng--%>
        <%--                                        </button>--%>
        <%--                                    </a>--%>
        <%--                                    <a href="#/san-pham/mua-ngay">--%>
        <%--                                        <button type="button" class="btn btn-outline-danger">--%>
        <%--                                            + Mua ngay--%>
        <%--                                        </button>--%>
        <%--                                    </a>--%>
        <%--                                </p>--%>
        <%--                            </div>--%>
        <%--                        </div>--%>
        <%--                    </div>--%>
        <%--                </div>--%>
    </div>
    <%--            <div class="san-pham-moi">--%>
    <%--                <h4 class="title-moi-nhat">Sản phẩm mới</h4>--%>
    <%--                <div class="row">--%>
    <%--                    <div--%>
    <%--                            class="dataxe col-lg-3"--%>
    <%--                            ng-repeat="xd in danhSachXeDap | limitTo : -8 | orderBy : '-'"--%>
    <%--                    >--%>
    <%--                        <div class="card" style="width: 16rem">--%>
    <%--                            <a href="#/san-pham/detail/{{xd.id}}">--%>
    <%--                                <img--%>
    <%--                                        src="../../assets/img-pro/{{xd.anhXe}}"--%>
    <%--                                        class="card-img-top"--%>
    <%--                                        alt="..."--%>
    <%--                                />--%>
    <%--                            </a>--%>
    <%--                            <div class="card-body">--%>
    <%--                                <a href="#/san-pham/detail/{{xd.id}}">--%>
    <%--                                    <h6 class="card-title">{{xd.tenXe}}</h6>--%>
    <%--                                </a>--%>
    <%--                                <p class="card-text card-mota">--%>
    <%--                                    <small>{{xd.moTa}}</small>--%>
    <%--                                </p>--%>
    <%--                                <p>--%>
    <%--                                    <a href="#/gio-hang">--%>
    <%--                                        <button type="button" class="btn btn-outline-success">--%>
    <%--                                            + Giỏ hàng--%>
    <%--                                        </button>--%>
    <%--                                    </a>--%>
    <%--                                    <a href="#/san-pham/mua-ngay">--%>
    <%--                                        <button type="button" class="btn btn-outline-danger">--%>
    <%--                                            + Mua ngay--%>
    <%--                                        </button>--%>
    <%--                                    </a>--%>
    <%--                                </p>--%>
    <%--                            </div>--%>
    <%--                        </div>--%>
    <%--                    </div>--%>
    <%--                </div>--%>
    <%--            </div>--%>
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