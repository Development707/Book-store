<%-- 
    Document   : shop
    Created on : 21 May 2021, 18:43:41
    Author     : longt
--%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>BOOK SHOP</title>
        <!--LINL CSS-->
        <link href="${pageContext.request.contextPath}/Resources/css/bootstrap.min.css"  rel="stylesheet" type="text/css">
        <link href="${pageContext.request.contextPath}/Resources/css/templatemo.css"  rel="stylesheet" type="text/css">
        <link href="${pageContext.request.contextPath}/Resources/css/custom.css"  rel="stylesheet" type="text/css">
        <!--FONT-->
        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;200;300;400;500;700;900&display=swap">
        <!--ICON-->
        <link href="${pageContext.request.contextPath}/Resources/css/fontawesome.css"  rel="stylesheet">
        <!--LINK JS-->
        <script src="<c:url value='/Resources/js/jquery-1.11.0.min.js' />" ></script>
        <script src="<c:url value='/Resources/js/jquery-migrate-1.2.1.min.js' />" ></script>
        <script src="<c:url value='/Resources/js/bootstrap.bundle.min.js' />" ></script>
        <script src="<c:url value='/Resources/js/templatemo.js' />" ></script>
        <script src="<c:url value='/Resources/js/custom.js' />" ></script>
        <!--LINK IMG-->
        <c:url var="LOGO" value="/Resources/img/LOGO.png"/>
        <c:url var="sachDEMO" value="/Resources/img/songThucTeGiuaDoiThucDung.jpg"/>
        <c:url value="/Resources/img/cambridge.jpg" var="NhaCungCap1"/>
        <c:url value="/Resources/img/cengage.jpg" var="NhaCungCap2"/>
        <c:url value="/Resources/img/hachette.jpg" var="NhaCungCap3"/>
        <c:url value="/Resources/img/Harper-Collins.jpg" var="NhaCungCap4"/>
        <c:url value="/Resources/img/macgrawhill.jpg" var="NhaCungCap5"/>
        <c:url value="/Resources/img/macmillan.jpg" var="NhaCungCap6"/>
        <c:url value="/Resources/img/oxford.jpg" var="NhaCungCap7"/>
        <c:url value="/Resources/img/sterling.jpg" var="NhaCungCap8"/>
        <c:url value="/Resources/img/paragon.jpg" var="NhaCungCap9"/>
        <c:url value="/Resources/img/PearsonLogo_Avatar.png" var="NhaCungCap10"/>
        <c:url value="/Resources/img/penguin.jpg" var="NhaCungCap11"/>
        <c:url value="/Resources/img/Scholastic-bar-logo.png" var="NhaCungCap12"/>

        <!--ICON LOGO-->
        <link rel="apple-touch-icon" href="${LOGO}">
        <link rel="shortcut icon" type="image/x-icon" href="${LOGO}">
    </head>
    <body>
        <!-- Start Top Nav -->
        <nav class="navbar navbar-expand-lg bg-dark navbar-light d-none d-lg-block" id="templatemo_nav_top">
            <div class="container text-light">
                <div class="w-100 d-flex justify-content-between">
                    <div>
                        <i class="fa fa-envelope mx-2"></i>
                        <a class="navbar-sm-brand text-light text-decoration-none" href="mailto:tnhatlong2000@gmail.com">tnhatlong2000@gmail.com</a>
                        <i class="fa fa-phone mx-2"></i>
                        <a class="navbar-sm-brand text-light text-decoration-none" href="tel:034-432-5820">034-432-5820</a>
                    </div>
                    <div>
                        <a class="text-light" href="https://fb.com/NhatLong707" target="_blank" rel="sponsored"><i class="fab fa-facebook-f fa-sm fa-fw me-2"></i></a>
                        <a class="text-light" href="https://www.instagram.com/_dino.2000_" target="_blank"><i class="fab fa-instagram fa-sm fa-fw me-2"></i></a>
                        <a class="text-light" href="https://twitter.com/" target="_blank"><i class="fab fa-twitter fa-sm fa-fw me-2"></i></a>
                        <a class="text-light" href="https://www.linkedin.com/" target="_blank"><i class="fab fa-linkedin fa-sm fa-fw"></i></a>
                    </div>
                </div>
            </div>
        </nav>
        <!-- Close Top Nav -->
        <!-- Header -->
        <nav class="navbar navbar-expand-lg navbar-light shadow">
            <div class="container d-flex justify-content-between align-items-center">

                <a class="navbar-brand text-success logo h1 align-self-center" href="http://localhost:8080/Client/home">
                    Book Shop
                </a>

                <button class="navbar-toggler border-0" type="button" data-bs-toggle="collapse" data-bs-target="#templatemo_main_nav" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="align-self-center collapse navbar-collapse flex-fill  d-lg-flex justify-content-lg-between" id="templatemo_main_nav">
                    <div class="flex-fill">
                        <ul class="nav navbar-nav d-flex justify-content-between mx-lg-auto">
                            <li class="nav-item">
                                <a class="nav-link" href="http://localhost:8080/Client/home">Trang Ch???</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="http://localhost:8080/Client/about">D???ch V???</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="http://localhost:8080/Client/sach/shop">C???a H??ng</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="http://localhost:8080/Client/contact">Li??n H???</a>
                            </li>
                        </ul>
                    </div>
                    <div class="navbar align-self-center d-flex">
                        <div class="d-lg-none flex-sm-fill mt-3 mb-4 col-7 col-sm-auto pr-3">
                            <div class="input-group">
                                <input type="text" class="form-control" id="inputMobileSearch" placeholder="Search ...">
                                <div class="input-group-text">
                                    <i class="fa fa-fw fa-search"></i>
                                </div>
                            </div>
                        </div>
                        <a class="nav-icon d-none d-lg-inline" href="#" data-bs-toggle="modal" data-bs-target="#templatemo_search">
                            <i class="fa fa-fw fa-search text-dark mr-2"></i>
                        </a>
                        <a class="nav-icon position-relative text-decoration-none" href="http://localhost:8080/Client/cart/show">
                            <i class="fa fa-fw fa-cart-arrow-down text-dark mr-1"></i>
                            <span class="position-absolute top-0 left-100 translate-middle badge rounded-pill bg-light text-dark">1</span>
                        </a>
                        <a class="nav-icon position-relative text-decoration-none" href="http://localhost:8080/Client/profile/show">
                            <i class="fa fa-fw fa-user text-dark mr-3"></i>
                            <span class="position-absolute top-0 left-100 translate-middle badge rounded-pill bg-light text-dark">+99</span>
                        </a>
                    </div>
                </div>

            </div>
        </nav>
        <!-- Close Header -->
        <!-- Modal Search -->
        <div class="modal fade bg-white" id="templatemo_search" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg" role="document">
                <div class="w-100 pt-1 mb-5 text-right">
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <form action="/Client/sach/search" method="get" class="modal-content modal-body border-0 p-0">
                    <div class="input-group mb-2">
                        <input type="text" class="form-control" id="inputModalSearch" name="q" placeholder="T??m Ki???m...">
                        <button type="submit" class="input-group-text bg-success text-light">
                            <i class="fa fa-fw fa-search text-white"></i>
                        </button>
                    </div>
                </form>
            </div>
        </div>
        <!-- Close Modal Search -->
        <!-- Start Content -->
        <div class="container py-5">
            <div class="row">

                <div class="col-lg-3">
                    <h1 class="h2 pb-4">Danh M???c</h1>
                    <ul class="list-unstyled templatemo-accordion">
                        <li class="pb-3">
                            <a class="collapsed d-flex justify-content-between h3 text-decoration-none" href="/Client/sach/search?q=gioi+tinh">
                                Gi???i T??nh
                                <i class="fa fa-fw fa-chevron-circle-down mt-1"></i>
                            </a>
                            <ul class="collapse show list-unstyled pl-3">
                                <li><a class="text-decoration-none" href="/Client/sach/search?q=con+trai">Con Trai</a></li>
                                <li><a class="text-decoration-none" href="/Client/sach/search?q=con+gai">Con G??i</a></li>
                            </ul>
                        </li>
                        <li class="pb-3">
                            <a class="collapsed d-flex justify-content-between h3 text-decoration-none" href="/Client/sach/search?q=do+tuoi">
                                ????? Tu???i
                                <i class="pull-right fa fa-fw fa-chevron-circle-down mt-1"></i>
                            </a>
                            <ul id="collapseTwo" class="collapse list-unstyled pl-3">
                                <li><a class="text-decoration-none" href="/Client/sach/search?q=3+">3+</a></li>
                                <li><a class="text-decoration-none" href="/Client/sach/search?q=16+">16+</a></li>
                                <li><a class="text-decoration-none" href="/Client/sach/search?q=18+">18+</a></li>
                            </ul>
                        </li>
                        <li class="pb-3">
                            <a class="collapsed d-flex justify-content-between h3 text-decoration-none" href="/Client/sach/search?q=the+loai">
                                Th??? Lo???i
                                <i class="pull-right fa fa-fw fa-chevron-circle-down mt-1"></i>
                            </a>
                            <ul id="collapseThree" class="collapse list-unstyled pl-3">
                                <li><a class="text-decoration-none" href="/Client/sach/search?q=thieu+nhi">Thi???u Nhi</a></li>
                                <li><a class="text-decoration-none" href="/Client/sach/search?q=giao+khoa+-+tham+khao">Gi??o Khoa - Tham Kh???o</a></li>
                                <li><a class="text-decoration-none" href="/Client/sach/search?q=van+hoc">V??n H???c</a></li>
                                <li><a class="text-decoration-none" href="/Client/sach/search?q=tam+ly+-+ky+nang+song">T??m L?? - K??? N??ng S???ng</a></li>
                                <li><a class="text-decoration-none" href="/Client/sach/search?q=manga+-+comic">Manga - Comic</a></li>
                                <li><a class="text-decoration-none" href="/Client/sach/search?q=sach+hoc+ngoai+ngu">S??ch H???c Ngo???i Ng???</a></li>
                                <li><a class="text-decoration-none" href="/Client/sach/search?q=kinh+te">Kinh T???</a></li>
                                <li><a class="text-decoration-none" href="/Client/sach/search?q=khoa+hoc+ky+thuat">Khoa H???c K??? Thu???t</a></li>
                                <li><a class="text-decoration-none" href="/Client/sach/search?q=lich+su+-+dia+ly">L???ch S??? - ?????a L?? - T??n Gi??o</a></li>
                                <li><a class="text-decoration-none" href="/Client/sach/search?q=nuoi+day+con">Nu??i D???y Con</a></li>
                                <li><a class="text-decoration-none" href="/Client/sach/search?q=chinh+tri+-+phap+ly+-+triet+hoc">Ch??nh Tr??? - Ph??p L?? - Tri???t H???c</a></li>
                                <li><a class="text-decoration-none" href="/Client/sach/search?q=nu+cong+gia+chanh">N??? C??ng Gia Ch??nh</a></li>
                                <li><a class="text-decoration-none" href="/Client/sach/search?q=tieu+su+hoi+ky">Ti???u S??? H???i K??</a></li>
                                <li><a class="text-decoration-none" href="/Client/sach/search?q=phong+thuy+-+kinh+dich">Phong Th???y - Kinh D???ch</a></li>
                                <li><a class="text-decoration-none" href="/Client/sach/search?q=van+hoa+nghe+thuat+du+lich">V??n H??a - Ngh??? Thu???t - Du L???ch</a></li>
                                <li><a class="text-decoration-none" href="/Client/sach/search?q=tu+dien">T??? ??i???n</a></li>
                                <li><a class="text-decoration-none" href="/Client/sach/search?q=am+nhac+-+my+thuat+-+thoi+trang">??m Nh???c - M??? Thu???t - Th???i Trang</a></li>
                                <li><a class="text-decoration-none" href="/Client/sach/search?q=the+duc+-+the+thao+-+gia+tri">Th??? D???c Th??? Thao - Gi???i Tr??</a></li>
                                <li><a class="text-decoration-none" href="/Client/sach/search?q=bao+-+tap+chi">B??o - T???p Ch??</a></li>
                                <li><a class="text-decoration-none" href="/Client/sach/search?q=giao+trinh">Gi??o Tr??nh</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>

                <div class="col-lg-9">
                    <div class="row">
                        <div class="col-md-6">
                            <ul class="list-inline shop-top-menu pb-3 pt-1">
                                <li class="list-inline-item">
                                    <a class="h3 text-dark text-decoration-none mr-3" href="/Client/sach/shop">T???t C???</a>
                                </li>
                                <li class="list-inline-item">
                                    <a class="h3 text-dark text-decoration-none mr-3" href="/Client/sach/search?q=english">English</a>
                                </li>
                                <li class="list-inline-item">
                                    <a class="h3 text-dark text-decoration-none" href="/Client/sach/search?q=tieng+viet">Ti???ng Vi???t</a>
                                </li>
                                <li class="list-inline-item">
                                    <a class="h3 text-dark text-decoration-none" href="/Client/sach/search?q=trung">?????????</a>
                                </li>
                            </ul>
                        </div>
                        <div class="col-md-6 pb-4">
                            <div class="d-flex">
                                <select class="form-control">
                                    <option>S???n Ph???m M???i</option>
                                    <option>A ?????n Z</option>
                                    <option>Z ?????n A</option>
                                    <option>Gi?? T??ng D???n</option>
                                    <option>Gi?? Gi???m D???n</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <c:forEach var="item" items="${listItemHomePage}">                              
                            <div class="col-md-4">
                                <div class="card mb-4 product-wap rounded-0">
                                    <div class="card rounded-0">
                                        <img class="card-img rounded-0 img-fluid" src="/Client${item.image.getPhotosImagePath()}">
                                        <div class="card-img-overlay rounded-0 product-overlay d-flex align-items-center justify-content-center">
                                            <ul class="list-unstyled">                                                
                                                <li><a class="btn btn-success text-white" href="book?id=${item.sach.maSach}"><i class="far fa-heart"></i></a></li>
                                                <li><a class="btn btn-success text-white mt-2" href="book?id=${item.sach.maSach}"><i class="far fa-eye"></i></a></li>
                                                <li><a class="btn btn-success text-white mt-2" href="book?id=${item.sach.maSach}"><i class="fas fa-cart-plus"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="card-body">
                                        <a href="book?id=${item.sach.maSach}" class="h3 text-decoration-none">${item.sach.tenSach}</a>
                                        <ul class="w-100 list-unstyled d-flex justify-content-between mb-0">
                                            <li>${sach.tacGia}</li>
                                            <li class="pt-2">
                                                <span class="product-color-dot color-dot-red float-left rounded-circle ml-1"></span>
                                                <span class="product-color-dot color-dot-blue float-left rounded-circle ml-1"></span>
                                                <span class="product-color-dot color-dot-black float-left rounded-circle ml-1"></span>
                                                <span class="product-color-dot color-dot-light float-left rounded-circle ml-1"></span>
                                                <span class="product-color-dot color-dot-green float-left rounded-circle ml-1"></span>
                                            </li>
                                        </ul>
                                        <ul class="list-unstyled d-flex justify-content-center mb-1">
                                            <li>
                                                <fmt:parseNumber var="n" type="number" value="${item.sach.danhGia/10}"/>                                                
                                                <c:forEach var="i" begin = "1" end = "5">
                                                    <c:if test="${i <= n}">
                                                        <i class="text-warning fa fa-star"></i>
                                                    </c:if>
                                                    <c:if test="${i > n}">
                                                        <i class="text-muted fa fa-star"></i>
                                                    </c:if>  
                                                </c:forEach>
                                            </li>
                                        </ul>
                                        <p class="text-center mb-0">${item.sach.giaSach}???</p>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                    <div div="row">
                        <ul class="pagination pagination-lg justify-content-end">
                            <li class="page-item">
                                <a class="page-link rounded-0 mr-3 shadow-sm border-top-0 border-left-0 text-dark" href="#">
                                    <i class="fas fa-chevron-left"></i>
                                </a>
                            </li>
                            <li class="page-item disabled">
                                <a class="page-link rounded-0 mr-3 shadow-sm border-top-0 border-left-0 text-dark" href="#">${numPage}</a>
                            </li>
                            <li class="page-item">
                                <a class="page-link rounded-0 mr-3 shadow-sm border-top-0 border-left-0 text-dark" href="#">
                                    <i class="fas fa-chevron-right"></i>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>

            </div>
        </div>
        <!-- End Content -->
        <!-- Start Brands -->
        <section class="bg-light py-5">
            <div class="container my-4">
                <div class="row text-center py-3">
                    <div class="col-lg-6 m-auto">
                        <h1 class="h1">Nh?? Cung C???p</h1>
                        <p>
                            Trong chu???i cung ???ng, nh?? cung c???p ho???c ng?????i b??n l?? doanh nghi???p ????ng g??p h??ng h??a ho???c d???ch v???.
                        </p>
                    </div>
                    <div class="col-lg-9 m-auto tempaltemo-carousel">
                        <div class="row d-flex flex-row">
                            <!--Controls-->
                            <div class="col-1 align-self-center">
                                <a class="h1" href="#multi-item-example" role="button" data-bs-slide="prev">
                                    <i class="text-light fas fa-chevron-left"></i>
                                </a>
                            </div>
                            <!--End Controls-->

                            <!--Carousel Wrapper-->
                            <div class="col">
                                <div class="carousel slide carousel-multi-item pt-2 pt-md-0" id="multi-item-example" data-bs-ride="carousel">
                                    <!--Slides-->
                                    <div class="carousel-inner product-links-wap" role="listbox">

                                        <!--First slide-->

                                        <div class="carousel-item active">
                                            <div class="row">
                                                <div class="col-3 p-md-5">
                                                    <a href="#"><img class="img-fluid brand-img" src="${NhaCungCap1}" alt="Brand Logo"></a>
                                                </div>
                                                <div class="col-3 p-md-5">
                                                    <a href="#"><img class="img-fluid brand-img" src="${NhaCungCap2}" alt="Brand Logo"></a>
                                                </div>
                                                <div class="col-3 p-md-5">
                                                    <a href="#"><img class="img-fluid brand-img" src="${NhaCungCap3}" alt="Brand Logo"></a>
                                                </div>
                                                <div class="col-3 p-md-5">
                                                    <a href="#"><img class="img-fluid brand-img" src="${NhaCungCap4}" alt="Brand Logo"></a>
                                                </div>
                                            </div>
                                        </div>
                                        <!--End First slide-->

                                        <!--Second slide-->
                                        <div class="carousel-item">
                                            <div class="row">
                                                <div class="col-3 p-md-5">
                                                    <a href="#"><img class="img-fluid brand-img" src="${NhaCungCap5}" alt="Brand Logo"></a>
                                                </div>
                                                <div class="col-3 p-md-5">
                                                    <a href="#"><img class="img-fluid brand-img" src="${NhaCungCap6}" alt="Brand Logo"></a>
                                                </div>
                                                <div class="col-3 p-md-5">
                                                    <a href="#"><img class="img-fluid brand-img" src="${NhaCungCap7}" alt="Brand Logo"></a>
                                                </div>
                                                <div class="col-3 p-md-5">
                                                    <a href="#"><img class="img-fluid brand-img" src="${NhaCungCap8}" alt="Brand Logo"></a>
                                                </div>
                                            </div>
                                        </div>
                                        <!--End Second slide-->

                                        <!--Third slide-->
                                        <div class="carousel-item">
                                            <div class="row">
                                                <div class="col-3 p-md-5">
                                                    <a href="#"><img class="img-fluid brand-img" src="${NhaCungCap9}" alt="Brand Logo"></a>
                                                </div>
                                                <div class="col-3 p-md-5">
                                                    <a href="#"><img class="img-fluid brand-img" src="${NhaCungCap10}" alt="Brand Logo"></a>
                                                </div>
                                                <div class="col-3 p-md-5">
                                                    <a href="#"><img class="img-fluid brand-img" src="${NhaCungCap11}" alt="Brand Logo"></a>
                                                </div>
                                                <div class="col-3 p-md-5">
                                                    <a href="#"><img class="img-fluid brand-img" src="${NhaCungCap12}" alt="Brand Logo"></a>
                                                </div>
                                            </div>
                                        </div>
                                        <!--End Third slide-->

                                    </div>
                                    <!--End Slides-->
                                </div>
                            </div>
                            <!--End Carousel Wrapper-->

                            <!--Controls-->
                            <div class="col-1 align-self-center">
                                <a class="h1" href="#multi-item-example" role="button" data-bs-slide="next">
                                    <i class="text-light fas fa-chevron-right"></i>
                                </a>
                            </div>
                            <!--End Controls-->
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--End Brands-->
        <!-- Start Footer -->
        <footer class="bg-dark" id="tempaltemo_footer">
            <div class="container">
                <div class="row">

                    <div class="col-md-4 pt-5">
                        <h2 class="h2 text-success border-bottom pb-3 border-light logo">Book Shop</h2>
                        <ul class="list-unstyled text-light footer-link-list">
                            <li>
                                <i class="fas fa-map-marker-alt fa-fw"></i> H??? Ch?? M??nh, Vi???t Nam
                            </li>
                            <li>
                                <i class="fa fa-phone fa-fw"></i>
                                <a class="text-decoration-none" href="tel:034-432-5820">034-432-5820</a>
                            </li>
                            <li>
                                <i class="fa fa-envelope fa-fw"></i>
                                <a class="text-decoration-none" href="mailto:tnhatlong2000@gmail.com">tnhatlong2000@gmail.com</a>
                            </li>
                        </ul>
                    </div>

                    <div class="col-md-4 pt-5">
                        <h2 class="h2 text-light border-bottom pb-3 border-light">C??c Lo???i S??ch</h2>
                        <ul class="list-unstyled text-light footer-link-list">
                            <li><a class="text-decoration-none" href="/Client/sach/search?q=chinh+tri+phap+luat">S??ch Ch??nh tr??? ??? ph??p lu???t</a></li>
                            <li><a class="text-decoration-none" href="/Client/sach/search?q=khoa+hoc+cong+nghe+kinh+te">S??ch Khoa h???c c??ng ngh??? ??? Kinh t???</a></li>
                            <li><a class="text-decoration-none" href="/Client/sach/search?q=van+hoc+nghe+thuat">S??ch V??n h???c ngh??? thu???t</a></li>
                            <li><a class="text-decoration-none" href="/Client/sach/search?q=van+hoa+xa+hoi+lich+su">S??ch V??n h??a x?? h???i ??? L???ch s???</a></li>
                            <li><a class="text-decoration-none" href="/Client/sach/search?q=giao+trinh">S??ch Gi??o tr??nh</a></li>
                            <li><a class="text-decoration-none" href="/Client/sach/search?q=truyen+tieu+thuyet">S??ch Truy???n, ti???u thuy???t</a></li>
                            <li><a class="text-decoration-none" href="/Client/sach/search?q=sach+thieu+nhi">S??ch thi???u nhi</a></li>
                        </ul>
                    </div>

                    <div class="col-md-4 pt-5">
                        <h2 class="h2 text-light border-bottom pb-3 border-light">Th??ng Tin Th??m</h2>
                        <ul class="list-unstyled text-light footer-link-list">
                            <li><a class="text-decoration-none" href="http://localhost:8080/Client/home">Trang Ch???</a></li>
                            <li><a class="text-decoration-none" href="http://localhost:8080/Client/contact">Li??n H???</a></li>
                            <li><a class="text-decoration-none" href="http://localhost:8080/Client/contact">V??? Tr??</a></li>
                            <li><a class="text-decoration-none" href="http://localhost:8080/Client/contact">?????c C??u H???i</a></li>
                            <li><a class="text-decoration-none" href="http://localhost:8080/Client/contact">Li??n L???c</a></li>
                        </ul>
                    </div>

                </div>

                <div class="row text-light mb-4">
                    <div class="col-12 mb-3">
                        <div class="w-100 my-3 border-top border-light"></div>
                    </div>
                    <div class="col-auto me-auto">
                        <ul class="list-inline text-left footer-icons">
                            <li class="list-inline-item border border-light rounded-circle text-center">
                                <a class="text-light text-decoration-none" target="_blank" href="http://facebook.com/"><i class="fab fa-facebook-f fa-lg fa-fw"></i></a>
                            </li>
                            <li class="list-inline-item border border-light rounded-circle text-center">
                                <a class="text-light text-decoration-none" target="_blank" href="https://www.instagram.com/"><i class="fab fa-instagram fa-lg fa-fw"></i></a>
                            </li>
                            <li class="list-inline-item border border-light rounded-circle text-center">
                                <a class="text-light text-decoration-none" target="_blank" href="https://twitter.com/"><i class="fab fa-twitter fa-lg fa-fw"></i></a>
                            </li>
                            <li class="list-inline-item border border-light rounded-circle text-center">
                                <a class="text-light text-decoration-none" target="_blank" href="https://www.linkedin.com/"><i class="fab fa-linkedin fa-lg fa-fw"></i></a>
                            </li>
                        </ul>
                    </div>
                    <div class="col-auto">
                        <label class="sr-only" for="subscribeEmail">????ng K??</label>
                        <div class="input-group mb-2">
                            <input type="text" class="form-control bg-dark border-light" id="subscribeEmail" placeholder="Nh???p Mail ??? ????y">
                            <div class="input-group-text btn-success text-light">????ng K??</div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="w-100 bg-black py-3">
                <div class="container">
                    <div class="row pt-2">
                        <div class="col-12">
                            <p class="text-left text-light">
                                Copyright &copy; 2021 | Thi???t K??? B???i <a rel="sponsored" href="https://www.facebook.com/thao.hoangthien.94" target="_blank">Ho??ng Thi??n Th???o  </a>
                            </p>
                        </div>
                    </div>
                </div>
            </div>

        </footer>
        <!-- End Footer -->
    </body>
</html>
