<%-- 
    Document   : index
    Created on : 21 May 2021, 13:30:18
    Author     : longt
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        <c:url var="TruongNhatLong" value="/Resources/img/TruongNhatLong.jpg"/>
        <c:url var="HoangThienThao" value="/Resources/img/HoangThienThao.jpg"/>
        <c:url var="LOGO" value="/Resources/img/LOGO.png"/>
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
                        <a class="nav-icon d-none d-lg-inline" href="/Client/sach/shop" data-bs-toggle="modal" data-bs-target="#templatemo_search">
                            <i class="fa fa-fw fa-search text-dark mr-2"></i>
                        </a>
                        <a class="nav-icon position-relative text-decoration-none" href="http://localhost:8080/Client/cart/show">
                            <i class="fa fa-fw fa-cart-arrow-down text-dark mr-1"></i>
                            <!--<span class="position-absolute top-0 left-100 translate-middle badge rounded-pill bg-light text-dark">1</span>-->
                        </a>
                        <a class="nav-icon position-relative text-decoration-none" href="http://localhost:8080/Client/profile/show">
                            <i class="fa fa-fw fa-user text-dark mr-3"></i>
                            <!--<span class="position-absolute top-0 left-100 translate-middle badge rounded-pill bg-light text-dark">+99</span>-->
                        </a>
                    </div>
                </div>

            </div>
        </nav>
        <!-- Modal Search -->
        <div class="modal fade bg-white" id="templatemo_search" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg" role="document">
                <div class="w-100 pt-1 mb-5 text-right">
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <form action="/Client/sach/search" method="GET" class="modal-content modal-body border-0 p-0">
                    <div class="input-group mb-2">
                        <input type="text" class="form-control" id="inputModalSearch" name="q" placeholder="T??m Ki???m...">
                        <button type="submit" class="input-group-text bg-success text-light">
                            <i class="fa fa-fw fa-search text-white"></i>
                        </button>
                    </div>
                </form>
            </div>
        </div>
        <!-- Start Banner Hero -->
        <div id="template-mo-zay-hero-carousel" class="carousel slide" data-bs-ride="carousel">
            <ol class="carousel-indicators">
                <li data-bs-target="#template-mo-zay-hero-carousel" data-bs-slide-to="0" class="active"></li>
                <li data-bs-target="#template-mo-zay-hero-carousel" data-bs-slide-to="1"></li>
                <li data-bs-target="#template-mo-zay-hero-carousel" data-bs-slide-to="2"></li>
            </ol>
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <div class="container">
                        <div class="row p-5">
                            <div class="mx-auto col-md-8 col-lg-6 order-lg-last">
                                <img class="img-fluid AnhSinhVien" src="${LOGO}" alt="">
                            </div>
                            <div class="col-lg-6 mb-0 d-flex align-items-center">
                                <div class="text-align-left align-self-center">
                                    <h1 class="h1 text-success"><b>Book Shop</b> Nh??m 7</h1>
                                    <h3 class="h2">????? t??i thi???t k??? web b??n s??ch</h3>
                                    <p>
                                        ????? t??i x??y d???ng Website b??n s??ch b???ng Spring Rest ????n gi???n. Thu???c b??? m??n 
                                        <a rel="sponsored" class="text-success" href="http://iuh.edu.vn/" target="_blank">WWW(Java). </a>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="carousel-item">
                    <div class="container">
                        <div class="row p-5">
                            <div class="mx-auto col-md-8 col-lg-6 order-lg-last">
                                <img class="img-fluid AnhSinhVien rounded-circle" src="${TruongNhatLong}" alt="">
                            </div>
                            <div class="col-lg-6 mb-0 d-flex align-items-center">
                                <div class="text-align-left">
                                    <h1 class="h1 text-success"><b>Tr????ng Nh???t Long</b></h1>
                                    <h3 class="h2">MSSV: 18036331</h3>
                                    <p>
                                        Th???c hi???n code <b>Back-End</b>: t???i API code Server x??? l?? s??? ki???n, thi???t k??? DataBase, t???o d??? li???u...
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="carousel-item">
                    <div class="container">
                        <div class="row p-5">
                            <div class="mx-auto col-md-8 col-lg-6 order-lg-last">
                                <img class="img-fluid AnhSinhVien rounded-circle" src="${HoangThienThao}" alt="">
                            </div>
                            <div class="col-lg-6 mb-0 d-flex align-items-center">
                                <div class="text-align-left">
                                    <h1 class="h1 text-success"><b>Ho??ng Thi??n Th???o</b></h1>
                                    <h3 class="h2">MSSV: 18018331</h3>
                                    <p>
                                        Th???c hi???n code <b>Font-End</b>: thi???t k??? t???o web, t???o d??? li???u cho DataBase, ki???m tra l???i....
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <a class="carousel-control-prev text-decoration-none w-auto ps-3" href="#template-mo-zay-hero-carousel" role="button" data-bs-slide="prev">
                <i class="fas fa-chevron-left"></i>
            </a>
            <a class="carousel-control-next text-decoration-none w-auto pe-3" href="#template-mo-zay-hero-carousel" role="button" data-bs-slide="next">
                <i class="fas fa-chevron-right"></i>
            </a>
        </div>
        <!-- End Banner Hero -->
        <!-- Start Categories of The Month -->
        <section class="container py-5">
            <div class="row text-center pt-3">
                <div class="col-lg-6 m-auto">
                    <h1 class="h1">C??c S??ch B??n Ch???y C???a Th??ng</h1>
                    <p>
                        S??ch kh??ng ch??? l?? ngu???n tri th???c v?? t???n ?????i v???i m???i ng?????i m?? ng??y c??ng c?? nhi???u minh ch???ng khoa h???c cho th???y nh???ng t??c ?????ng r???t t???t c???a vi???c ?????c s??ch ?????i v???i s??? ph??t tri???n c??? v??? th??? ch???t l???n tr?? tu??? v?? t??m h???n.
                    </p>
                </div>
            </div>
            <div class="row">
                <div class="col-12 col-md-4 p-5 mt-3">
                    <c:url value="/Resources/img/dacNhanTam.png" var="sachMounth1"/>
                    <c:url value="/Resources/img/dungLuaChonAnNhan.png" var="sachMounth2"/>
                    <c:url value="/Resources/img/songThucTeGiuaDoiThucDung.jpg" var="sachMounth3"/>
                    <a href="/Client/sach/shop"><img src="${sachMounth1}" class="AnhSachThang img-fluid border"></a>
                    <h5 class="text-center mt-3 mb-3">?????ng Nh??n T??m</h5>
                    <p class="text-center"><a href="/Client/sach/shop" class="btn btn-success">Go Shop</a></p>
                </div>
                <div class="col-12 col-md-4 p-5 mt-3">
                    <a href="/Client/sach/shop"><img src="${sachMounth2}" class="AnhSachThang img-fluid border"></a>
                    <h2 class="h5 text-center mt-3 mb-3">?????ng L???a Chon An Nh??n Khi C??n Tr???</h2>
                    <p class="text-center"><a href="/Client/sach/shop" class="btn btn-success">Go Shop</a></p>
                </div>
                <div class="col-12 col-md-4 p-5 mt-3">
                    <a href="/Client/sach/shop"><img src="${sachMounth3}" class="AnhSachThang img-fluid border"></a>
                    <h2 class="h5 text-center mt-3 mb-3">S???ng Th???c T??? Gi???a ?????i Th???c D???ng</h2>
                    <p class="text-center"><a href="/Client/sach/shop" class="btn btn-success">Go Shop</a></p>
                </div>
            </div>
        </section>
        <!-- End Categories of The Month -->
        <!-- Start Featured Product -->
        <section class="bg-light">
            <div class="container py-5">
                <div class="row text-center py-3">
                    <div class="col-lg-6 m-auto">
                        <h1 class="h1">S??ch N???i B???c</h1>
                        <p>
                            Nh???ng cu???n s??ch hay n??n ?????c khi c??n tr??? ???????c ?????nh ngh??a l?? l?? nh???ng cu???n s??ch kinh ??i???n nh???t m???i th???i ?????i.
                        </p>
                    </div>
                </div>
                <div class="row">
                    <c:url var="sachNoiBac1" value="/Resources/img/BanDatGiaBaoNhieu.jpg"/>
                    <c:url var="sachNoiBac2" value="/Resources/img/canBangCamXucLucGiongBao.jpg"/>
                    <c:url var="sachNoiBac3" value="/Resources/img/conChimXanhBietBayVe.jpg"/>
                    <div class="col-12 col-md-4 mb-4">
                        <div class="card h-100">
                            <a href="/Client/sach/shop" class="AnhSachNoiBac">
                                <img src="${sachNoiBac1}" class="card-img-top " alt="...">
                            </a>
                            <div class="card-body">
                                <ul class="list-unstyled d-flex justify-content-between">
                                    <li>
                                        <i class="text-warning fa fa-star"></i>
                                        <i class="text-warning fa fa-star"></i>
                                        <i class="text-warning fa fa-star"></i>
                                        <i class="text-warning fa fa-star"></i>
                                        <i class="text-muted fa fa-star"></i>
                                    </li>
                                    <li class="text-muted text-right">212.00???</li>
                                </ul>
                                <a href="/Client/sach/shop" class="h2 text-decoration-none text-dark">B???n ?????t gi?? bao nhi??u?</a>
                                <p class="card-text">
                                    l?? m???t t??c ph???m v??n h???c Trung Qu???c c???a nh?? v??n V??n T??nh. C??u chuy???n t???n m???n xoay quanh c??c ch??? ????? t??nh y??u, h??n nh??n, gia ????nh, s??? nghi???p???
                                </p>
                                <p class="text-muted">Reviews (96)</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-12 col-md-4 mb-4">
                        <div class="card h-100">
                            <a href="/Client/sach/shop" class="AnhSachNoiBac">
                                <img src="${sachNoiBac2}" class="card-img-top" alt="...">
                            </a>
                            <div class="card-body">
                                <ul class="list-unstyled d-flex justify-content-between">
                                    <li>
                                        <i class="text-warning fa fa-star"></i>
                                        <i class="text-warning fa fa-star"></i>
                                        <i class="text-warning fa fa-star"></i>
                                        <i class="text-muted fa fa-star"></i>
                                        <i class="text-muted fa fa-star"></i>
                                    </li>
                                    <li class="text-muted text-right">212.00???</li>
                                </ul>
                                <a href="/Client/sach/shop" class="h2 text-decoration-none text-dark">C??n b???ng c???m x??c, c??? l??c b??o gi??ng</a>
                                <p class="card-text">
                                    m???t cu???n s??ch th???c t??? m?? kh??ng k??m ph???n khoa h???c ??? c?? th??? s??? ph???n n??o gi??p b???n t??m ra ???????c ?????nh ngh??a h???nh ph??c cho ri??ng m??nh.
                                </p>
                                <p class="text-muted">Reviews (78)</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-12 col-md-4 mb-4">
                        <div class="card h-100">
                            <a href="/Client/sach/shop" class="AnhSachNoiBac">
                                <img src="${sachNoiBac3}" class="card-img-top " alt="...">
                            </a>
                            <div class="card-body">
                                <ul class="list-unstyled d-flex justify-content-between">
                                    <li>
                                        <i class="text-warning fa fa-star"></i>
                                        <i class="text-warning fa fa-star"></i>
                                        <i class="text-warning fa fa-star"></i>
                                        <i class="text-warning fa fa-star"></i>
                                        <i class="text-warning fa fa-star"></i>
                                    </li>
                                    <li class="text-muted text-right">212.00???</li>
                                </ul>
                                <a href="/Client/sach/shop" class="h2 text-decoration-none text-dark">Con chim xanh bi???c bay v???</a>
                                <p class="card-text">
                                    C?? th??? g??i g???n m???i t??nh trong Con chim xanh bi???c bay v??? trong b???n ch??? t??? - bi - h??? - x??? v???i m???i t??nh tay t?? trong m???t b???i c???nh S??i G??n ng??y nay;
                                </p>
                                <p class="text-muted">Reviews (34)</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- End Featured Product -->
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
