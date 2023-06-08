<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/plugin/bootstrap.min.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/custom/style.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/plugin/product.css"/>
</head>
<body>
<div class="container">
    <%--header--%>
    <div class="container-header">
        <div class="menu-top">
            <nav class="navbar navbar-expand-lg bg-body-tertiary">
                <div class="container-fluid">
                    <a class="navbar-brand" href="#">
                        <img src="${pageContext.request.contextPath}/upload/logo1.png" alt=""/>
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
                                        <a class="dropdown-item" href="#trang-chu">Đăng xuất</a>
                                    </li>

                                    <li>
                                        <a class="dropdown-item" href="#admin">Quản trị viên</a>
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
    <div>
        <div class="bg-white rounded d-flex align-items-center justify-content-between" id="header">
            <button class="btn btn-hide text-uppercase" type="button" data-toggle="collapse" data-target="#filterbar"
                    aria-expanded="false" aria-controls="filterbar" id="filter-btn" onclick="changeBtnTxt()"><span
                    class="fas fa-angle-left" id="filter-angle"></span> <span id="btn-txt">Hide filters</span></button>
            <nav class="navbar navbar-expand-lg navbar-light pl-lg-0 pl-auto">
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#mynav"
                        aria-controls="mynav" aria-expanded="false" aria-label="Toggle navigation"
                        onclick="chnageIcon()" id="icon"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="mynav">
                    <ul class="navbar-nav d-lg-flex align-items-lg-center">
                        <li class="nav-item active"><select name="sort" id="sort">
                            <option value="" hidden selected>Sort by</option>
                            <option value="price">Price</option>
                            <option value="popularity">Popularity</option>
                            <option value="rating">Rating</option>
                        </select></li>
                        <li class="nav-item d-inline-flex align-items-center justify-content-between mb-lg-0 mb-3">
                            <div class="d-inline-flex align-items-center mx-lg-2" id="select2">
                                <div class="pl-2">Products:</div>
                                <select name="pro" id="pro">
                                    <option value="18">18</option>
                                    <option value="19">19</option>
                                    <option value="20">20</option>
                                </select></div>
                            <div class="font-weight-bold mx-2 result">18 from 200</div>
                        </li>
                        <li class="nav-item d-lg-none d-inline-flex"></li>
                    </ul>
                </div>
            </nav>
            <div class="ml-auto mt-3 mr-2">
                <nav aria-label="Page navigation example">
                    <ul class="pagination">
                        <li class="page-item"><a class="page-link" href="#" aria-label="Previous"> <span
                                aria-hidden="true" class="font-weight-bold">&lt;</span> <span
                                class="sr-only">Previous</span> </a></li>
                        <li class="page-item active"><a class="page-link" href="#">1</a></li>
                        <li class="page-item"><a class="page-link" href="#">..</a></li>
                        <li class="page-item"><a class="page-link" href="#">24</a></li>
                        <li class="page-item"><a class="page-link" href="#" aria-label="Next"> <span aria-hidden="true"
                                                                                                     class="font-weight-bold">&gt;</span>
                            <span class="sr-only">Next</span> </a></li>
                    </ul>
                </nav>
            </div>
        </div>
        <div id="content" class="my-5">
            <div id="filterbar" class="collapse">
                <div class="box border-bottom">
                    <div class="form-group text-center">
                        <div class="btn-group" data-toggle="buttons"><label class="btn btn-success form-check-label">
                            <input class="form-check-input" type="radio"> Reset </label> <label
                                class="btn btn-success form-check-label active"> <input class="form-check-input"
                                                                                        type="radio" checked> Apply
                        </label></div>
                    </div>
                    <div><label class="tick">New <input type="checkbox" checked="checked"> <span class="check"></span>
                    </label></div>
                    <div><label class="tick">Sale <input type="checkbox"> <span class="check"></span> </label></div>
                </div>
                <div class="box border-bottom">
                    <div class="box-label text-uppercase d-flex align-items-center">Outerwear
                        <button class="btn ml-auto" type="button" data-toggle="collapse" data-target="#inner-box"
                                aria-expanded="false" aria-controls="inner-box" id="out" onclick="outerFilter()"><span
                                class="fas fa-plus"></span></button>
                    </div>
                    <div id="inner-box" class="collapse mt-2 mr-1">
                        <div class="my-1"><label class="tick">Windbreaker <input type="checkbox" checked="checked">
                            <span class="check"></span> </label></div>
                        <div class="my-1"><label class="tick">Jumpsuit <input type="checkbox"> <span
                                class="check"></span> </label></div>
                        <div class="my-1"><label class="tick">Jacket <input type="checkbox"> <span class="check"></span>
                        </label></div>
                        <div class="my-1"><label class="tick">Coat <input type="checkbox"> <span class="check"></span>
                        </label></div>
                        <div class="my-1"><label class="tick">Raincoat <input type="checkbox"> <span
                                class="check"></span> </label></div>
                        <div class="my-1"><label class="tick">Handbag <input type="checkbox" checked> <span
                                class="check"></span> </label></div>
                        <div class="my-1"><label class="tick">Warm vest <input type="checkbox"> <span
                                class="check"></span> </label></div>
                        <div class="my-1"><label class="tick">Wallets <input type="checkbox" checked> <span
                                class="check"></span> </label></div>
                    </div>
                </div>
                <div class="box border-bottom">
                    <div class="box-label text-uppercase d-flex align-items-center">season
                        <button class="btn ml-auto" type="button" data-toggle="collapse" data-target="#inner-box2"
                                aria-expanded="false" aria-controls="inner-box2"><span class="fas fa-plus"></span>
                        </button>
                    </div>
                    <div id="inner-box2" class="collapse mt-2 mr-1">
                        <div class="my-1"><label class="tick">Spring <input type="checkbox" checked="checked"> <span
                                class="check"></span> </label></div>
                        <div class="my-1"><label class="tick">Summer <input type="checkbox"> <span class="check"></span>
                        </label></div>
                        <div class="my-1"><label class="tick">Autumn <input type="checkbox" checked> <span
                                class="check"></span> </label></div>
                        <div class="my-1"><label class="tick">Winter <input type="checkbox"> <span class="check"></span>
                        </label></div>
                        <div class="my-1"><label class="tick">Rainy <input type="checkbox"> <span class="check"></span>
                        </label></div>
                    </div>
                </div>
                <div class="box border-bottom">
                    <div class="box-label text-uppercase d-flex align-items-center">price
                        <button class="btn ml-auto" type="button" data-toggle="collapse" data-target="#price"
                                aria-expanded="false" aria-controls="price"><span class="fas fa-plus"></span></button>
                    </div>
                    <div class="collapse" id="price">
                        <div class="middle">
                            <div class="multi-range-slider"><input type="range" id="input-left" min="0" max="100"
                                                                   value="10"> <input type="range" id="input-right"
                                                                                      min="0" max="100" value="50">
                                <div class="slider">
                                    <div class="track"></div>
                                    <div class="range"></div>
                                    <div class="thumb left"></div>
                                    <div class="thumb right"></div>
                                </div>
                            </div>
                        </div>
                        <div class="d-flex align-items-center justify-content-between mt-2">
                            <div><span id="amount-left" class="font-weight-bold"></span> uah</div>
                            <div><span id="amount-right" class="font-weight-bold"></span> uah</div>
                        </div>
                    </div>
                </div>
                <div class="box">
                    <div class="box-label text-uppercase d-flex align-items-center">size
                        <button class="btn ml-auto" type="button" data-toggle="collapse" data-target="#size"
                                aria-expanded="false" aria-controls="size"><span class="fas fa-plus"></span></button>
                    </div>
                    <div id="size" class="collapse">
                        <div class="btn-group d-flex align-items-center flex-wrap" data-toggle="buttons"><label
                                class="btn btn-success form-check-label"> <input class="form-check-input"
                                                                                 type="checkbox"> 80 </label> <label
                                class="btn btn-success form-check-label"> <input class="form-check-input"
                                                                                 type="checkbox" checked> 92 </label>
                            <label class="btn btn-success form-check-label"> <input class="form-check-input"
                                                                                    type="checkbox" checked> 102
                            </label> <label class="btn btn-success form-check-label"> <input class="form-check-input"
                                                                                             type="checkbox" checked>
                                104 </label> <label class="btn btn-success form-check-label"> <input
                                    class="form-check-input" type="checkbox" checked> 106 </label> <label
                                    class="btn btn-success form-check-label"> <input class="form-check-input"
                                                                                     type="checkbox" checked> 108
                            </label></div>
                    </div>
                </div>
            </div>
            <div id="products">
                <div class="row mx-0">
                    <div class="col-lg-4 col-md-6">
                        <div class="card d-flex flex-column align-items-center">
                            <div class="product-name">Torn Jeans for Men</div>
                            <div class="card-img"><img
                                    src="https://www.freepnglogos.com/uploads/jeans-png/jeans-mens-pants-cliparts-download-clip-art-37.png"
                                    alt=""></div>
                            <div class="card-body pt-5">
                                <div class="text-muted text-center mt-auto">Available Colors</div>
                                <div class="d-flex align-items-center justify-content-center colors my-2">
                                    <div class="btn-group" data-toggle="buttons" data-tooltip="tooltip"
                                         data-placement="right" title="choose color"><label
                                            class="btn btn-red form-check-label"> <input class="form-check-input"
                                                                                         type="radio"
                                                                                         autocomplete="off"> </label>
                                        <label class="btn btn-blue form-check-label active"> <input
                                                class="form-check-input" type="radio" autocomplete="off"> </label>
                                        <label class="btn btn-green form-check-label"> <input class="form-check-input"
                                                                                              type="radio"
                                                                                              autocomplete="off">
                                        </label> <label class="btn btn-orange form-check-label"> <input
                                                class="form-check-input" type="radio" autocomplete="off"> </label>
                                        <label class="btn btn-pink form-check-label"> <input class="form-check-input"
                                                                                             type="radio"
                                                                                             autocomplete="off">
                                        </label></div>
                                </div>
                                <div class="d-flex align-items-center price">
                                    <div class="del mr-2"><span class="text-dark">5500 uah</span></div>
                                    <div class="font-weight-bold">4500 uah</div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 pt-md-0 pt-3">
                        <div class="card d-flex flex-column align-items-center">
                            <div class="product-name">Nike Tshirts for Men</div>
                            <div class="card-img"><img
                                    src="https://www.freepnglogos.com/uploads/t-shirt-png/t-shirt-png-printed-shirts-south-africa-20.png"
                                    alt="" height="100" id="shirt"></div>
                            <div class="text-muted text-center mt-auto">Available Sizes</div>
                            <div id="avail-size">
                                <div class="btn-group d-flex align-items-center flex-wrap" data-toggle="buttons"><label
                                        class="btn btn-success form-check-label"> <input class="form-check-input"
                                                                                         type="checkbox"> 80 </label>
                                    <label class="btn btn-success form-check-label"> <input class="form-check-input"
                                                                                            type="checkbox" checked> 92
                                    </label> <label class="btn btn-success form-check-label"> <input
                                            class="form-check-input" type="checkbox" checked> 102 </label> <label
                                            class="btn btn-success form-check-label"> <input class="form-check-input"
                                                                                             type="checkbox" checked>
                                        104 </label> <label class="btn btn-success form-check-label"> <input
                                            class="form-check-input" type="checkbox" checked> 106 </label> <label
                                            class="btn btn-success form-check-label"> <input class="form-check-input"
                                                                                             type="checkbox" checked>
                                        108 </label></div>
                            </div>
                            <div class="card-body pt-0">
                                <div class="text-muted text-center mt-auto">Available Colors</div>
                                <div class="d-flex align-items-center justify-content-center colors my-2">
                                    <div class="btn-group" data-toggle="buttons" data-tooltip="tooltip"
                                         data-placement="right" title="choose color"><label
                                            class="btn btn-light border form-check-label"> <input
                                            class="form-check-input" type="radio" autocomplete="off"> </label> <label
                                            class="btn btn-blue form-check-label active"> <input
                                            class="form-check-input" type="radio" autocomplete="off"> </label> <label
                                            class="btn btn-green form-check-label"> <input class="form-check-input"
                                                                                           type="radio"
                                                                                           autocomplete="off"> </label>
                                        <label class="btn btn-orange form-check-label"> <input class="form-check-input"
                                                                                               type="radio"
                                                                                               autocomplete="off">
                                        </label> <label class="btn btn-pink form-check-label"> <input
                                                class="form-check-input" type="radio" autocomplete="off"> </label></div>
                                </div>
                                <div class="d-flex align-items-center price">
                                    <div class="del mr-2"><span class="text-dark">5500 uah</span></div>
                                    <div class="font-weight-bold">4500 uah</div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 pt-lg-0 pt-md-4 pt-3">
                        <div class="card d-flex flex-column align-items-center">
                            <div class="product-name text-center">Casual Dress Belts For Men</div>
                            <div class="card-img"><img
                                    src="https://www.freepnglogos.com/uploads/belts-png/casual-dress-belts-for-men-28.png"
                                    alt=""></div>
                            <div class="card-body pt-5">
                                <div class="text-muted text-center mt-auto">Available Colors</div>
                                <div class="d-flex align-items-center justify-content-center colors my-2">
                                    <div class="btn-group" data-toggle="buttons" data-tooltip="tooltip"
                                         data-placement="right" title="choose color"><label
                                            class="btn btn-dark border form-check-label"> <input
                                            class="form-check-input" type="radio" autocomplete="off"> </label> <label
                                            class="btn btn-brown form-check-label active"> <input
                                            class="form-check-input" type="radio" autocomplete="off"> </label></div>
                                </div>
                                <div class="d-flex align-items-center justify-content-center price">
                                    <div class="font-weight-bold">500 uah</div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 pt-md-4 pt-3">
                        <div class="card d-flex flex-column align-items-center">
                            <div class="product-name text-center">Footwear For Women</div>
                            <div class="card-img"><img
                                    src="https://www.freepnglogos.com/uploads/women-shoes-png/download-women-shoes-png-image-png-image-pngimg-2.png"
                                    alt=""></div>
                            <div class="card-body pt-5">
                                <div class="text-muted text-center mt-auto">Available Colors</div>
                                <div class="d-flex align-items-center justify-content-center colors my-2">
                                    <div class="btn-group" data-toggle="buttons" data-tooltip="tooltip"
                                         data-placement="right" title="choose color"><label
                                            class="btn btn-dark border form-check-label"> <input
                                            class="form-check-input" type="radio" autocomplete="off"> </label> <label
                                            class="btn btn-brown form-check-label active"> <input
                                            class="form-check-input" type="radio" autocomplete="off"> </label> <label
                                            class="btn btn-pink form-check-label"> <input class="form-check-input"
                                                                                          type="radio"
                                                                                          autocomplete="off"> </label>
                                        <label class="btn btn-red form-check-label"> <input class="form-check-input"
                                                                                            type="radio"
                                                                                            autocomplete="off"> </label>
                                    </div>
                                </div>
                                <div class="d-flex align-items-center justify-content-center price">
                                    <div class="font-weight-bold">1500 uah</div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 pt-md-4 pt-3">
                        <div class="card d-flex flex-column align-items-center">
                            <div class="product-name text-center">Nike Jogging shoes For Men</div>
                            <div class="card-img"><img
                                    src="https://www.freepnglogos.com/uploads/shoes-png/find-your-perfect-running-shoes-26.png"
                                    alt=""></div>
                            <div class="card-body pt-5">
                                <div class="text-muted text-center mt-auto">Available Colors</div>
                                <div class="d-flex align-items-center justify-content-center colors my-2">
                                    <div class="btn-group" data-toggle="buttons" data-tooltip="tooltip"
                                         data-placement="right" title="choose color"><label
                                            class="btn btn-dark border form-check-label"> <input
                                            class="form-check-input" type="radio" autocomplete="off"> </label> <label
                                            class="btn btn-pink form-check-label active"> <input
                                            class="form-check-input" type="radio" autocomplete="off"> </label> <label
                                            class="btn btn-blue form-check-label"> <input class="form-check-input"
                                                                                          type="radio"
                                                                                          autocomplete="off"> </label>
                                        <label class="btn btn-orange form-check-label"> <input class="form-check-input"
                                                                                               type="radio"
                                                                                               autocomplete="off">
                                        </label></div>
                                </div>
                                <div class="d-flex align-items-center justify-content-center price">
                                    <div class="font-weight-bold">1200 uah</div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 pt-md-4 pt-3">
                        <div class="card d-flex flex-column align-items-center">
                            <div class="product-name text-center">Leather Wallets For Men</div>
                            <div class="card-img"><img
                                    src="https://www.freepnglogos.com/uploads/money-png/money-wallet-dollar-image-money-pictures-download-27.png"
                                    alt=""></div>
                            <div class="card-body pt-5">
                                <div class="text-muted text-center mt-auto">Available Colors</div>
                                <div class="d-flex align-items-center justify-content-center colors my-2">
                                    <div class="btn-group" data-toggle="buttons" data-tooltip="tooltip"
                                         data-placement="right" title="choose color"><label
                                            class="btn btn-dark border form-check-label"> <input
                                            class="form-check-input" type="radio" autocomplete="off"> </label> <label
                                            class="btn btn-brown form-check-label active"> <input
                                            class="form-check-input" type="radio" autocomplete="off"> </label></div>
                                </div>
                                <div class="d-flex align-items-center justify-content-center price">
                                    <div class="font-weight-bold">900 uah</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class=" py-4 py-md-5 px-4 px-md-3 text-body-secondary footer">
        <div class="row">
            <div class="col-lg-3 mb-3">
                <a
                        class="d-inline-flex align-items-center mb-2 text-body-secondary text-decoration-none"
                        href="/"
                        aria-label="Bootstrap"
                >
                    <img src="../../assets/logo1.png" alt=""/>
                    <br/>
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
</div>
<%--end body--%>
<%--footer--%>
<%--end footer--%>
<script src="${pageContext.request.contextPath}/js/plugin/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/js/plugin/product.js"></script>
<script src="${pageContext.request.contextPath}/js/plugin/bootstrap.bundle.min.js"></script>
</body>
</html>