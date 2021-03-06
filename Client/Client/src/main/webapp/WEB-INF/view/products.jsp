<%-- 
    Document   : products
    Created on : 27 May 2021, 17:48:00
    Author     : longt
--%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>ADMIN BOOK SHOP</title>
        <!--FONT-->
        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;200;300;400;500;700;900&display=swap">
        <!--ICON-->
        <link href="${pageContext.request.contextPath}/Resources/css/fontawesome.min_1.css"  rel="stylesheet">
        <!--BOOTSTRAP-->
        <link href="${pageContext.request.contextPath}/Resources/css/bootstrap.min_1.css"  rel="stylesheet">
        <!--CSS-->
        <link href="${pageContext.request.contextPath}/Resources/css/templatemo-style_1.css"  rel="stylesheet">
        <link href="${pageContext.request.contextPath}/Resources/css/custom.css"  rel="stylesheet">
        <!--JS-->
        <script src="<c:url value='/Resources/js/jquery-3.3.1.min.js' />" ></script>
        <script src="<c:url value='/Resources/js/bootstrap.min.js' />" ></script>
        <script src="<c:url value='/Resources/js/tooplate-scripts.js' />" ></script>
        <script src="<c:url value='/Resources/js/custom.js' />" ></script>
        <!--ING-->
        <c:url var="TruongNhatLong" value="/Resources/img/TruongNhatLong.jpg"/>
        <c:url var="LOGO" value="/Resources/img/LOGO.png"/>
        <link rel="apple-touch-icon" href="${LOGO}">
        <link rel="shortcut icon" type="image/x-icon" href="${LOGO}">
    </head>
    <body>
        <nav class="navbar navbar-expand-xl">
            <div class="container h-100">
                <a class="navbar-brand" href="index.html">
                    <h1 class="tm-site-title mb-0">ADMIN BOOK SHOP</h1>
                </a>
                <button class="navbar-toggler ml-auto mr-0" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <i class="fas fa-bars tm-nav-icon"></i>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav mx-auto h-100">
                        <li class="nav-item">
                            <a class="nav-link" href="/Client/ADMIN/home">
                                <i class="fas fa-tachometer-alt"></i>
                                ??i???u Khi???n
                                <span class="sr-only">(Hi???n H??nh)</span>
                            </a>
                        </li>
                        <li class="nav-item dropdown">

                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown"
                               aria-haspopup="true" aria-expanded="false">
                                <i class="far fa-file-alt"></i>
                                <span>
                                    B??o C??o <i class="fas fa-angle-down"></i>
                                </span>
                            </a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <a class="dropdown-item" href="#">Ng??y Report</a>
                                <a class="dropdown-item" href="#">Tu???n Report</a>
                                <a class="dropdown-item" href="#">N??m Report</a>
                            </div>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active" href="/Client/ADMIN/books">
                                <i class="fas fa-shopping-cart"></i>
                                S???n Ph???m
                            </a>
                        </li>

                        <li class="nav-item">
                            <a class="nav-link " href="/Client/ADMIN/accounts">
                                <i class="far fa-user"></i> 
                                T??i Kho???n
                            </a>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown"
                               aria-haspopup="true" aria-expanded="false">
                                <i class="fas fa-cog"></i>
                                <span>
                                    C??i ?????t <i class="fas fa-angle-down"></i>
                                </span>
                            </a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <a class="dropdown-item" href="#">H??? S??</a>
                                <a class="dropdown-item" href="#">Thanh To??n</a>
                                <a class="dropdown-item" href="#">T??y Ch???nh</a>
                            </div>
                        </li>
                    </ul>
                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <form:form action="/Client/ADMIN/logoutAdmin" method="POST">
                                <button type="submit" class="nav-link d-block" style="background-color: #4a4a4a">
                                    ${userLogin}, <b>????ng Xu???t</b>
                                </button>
                            </form:form>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <!--Container-->
        <div class="container mt-5">
            <div class="row tm-content-row">
                <div class="col-sm-12 col-md-12 col-lg-8 col-xl-8 tm-block-col">
                    <div class="tm-bg-primary-dark tm-block tm-block-products">
                        <div class="tm-product-table-container">
                            <table class="table table-hover tm-table-small tm-product-table">
                                <thead>
                                    <tr>
                                        <th scope="col">&nbsp;</th>
                                        <th scope="col">T??N S??CH</th>
                                        <th scope="col">GI?? B??N</th>
                                        <th scope="col">????NH GI??</th>
                                        <th scope="col">T??C GI???</th>
                                        <th scope="col">&nbsp;</th>
                                    </tr>
                                </thead>
                                <tbody>                                
                                    <c:forEach var="sach" items="${listSach}">
                                        <tr>
                                            <th scope="row">
                                                <input type="checkbox" class="checkBoxSach" value="${sach.maSach}" onclick="getCheckBox()"/>
                                            </th>
                                            <td class="tm-product-name">${sach.tenSach}</td>
                                            <td>${sach.giaSach}VND</td>
                                            <td>${sach.danhGia}</td>
                                            <td>${sach.tacGia}</td>
                                            <td>
                                                <a href="/Client/ADMIN/books/view/${sach.maSach}" class="tm-product-delete-link">
                                                    <i class="far fa-eye tm-product-delete-icon"></i>
                                                </a>
                                            </td>
                                        </tr>
                                    </c:forEach>

                                </tbody>
                            </table>
                            <script>
                                function getCheckBox() {
                                    var checkedValue = [];
                                    $('.checkBoxSach:checked').each(function () {
                                        checkedValue.push($(this).val());
                                    });
                                    $('#listCheck').val(checkedValue);
                                }
                            </script>
                        </div>
                        <!-- table container -->
                        <form action="/Client/ADMIN/books/deletelist" method="POST">
                            <input id="listCheck" name="listCheck" type="hidden"/>
                            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                            <a href="/Client/ADMIN/books/add" class="btn btn-primary btn-block text-uppercase mb-3">Th??m S??ch M???i</a>
                            <input type="submit" class="btn btn-primary btn-block text-uppercase" value="X??a c??c s??ch ???? ch???n"/>  
                        </form>

                    </div>
                </div>
                <div class="col-sm-12 col-md-12 col-lg-4 col-xl-4 tm-block-col">
                    <div class="tm-bg-primary-dark tm-block tm-block-product-categories">
                        <h2 class="tm-block-title">M???c L???c T??c Gi???</h2>
                        <div class="tm-product-table-container">
                            <table class="table tm-table-small tm-product-table">
                                <tbody>
                                    <c:forEach var="tacGia" items="${listTacGia}">
                                        <tr>
                                            <td class="tm-product-name">${tacGia}</td>
                                            <td class="text-center">
                                                <a href="/Client/ADMIN/books/${tacGia}" class="tm-product-delete-link">
                                                    <i class="fas fa-search tm-product-delete-icon"></i>
                                                </a>
                                            </td>
                                        </tr>   
                                    </c:forEach>
                                </tbody>
                            </table>
                        </div>
                        <!-- table container -->
                        <a class="btn btn-primary btn-block text-uppercase mb-3" href="/Client/ADMIN/books">
                            B??? T??m Ki???m theo T??c Gi???
                        </a>
                    </div>
                </div>
            </div>
        </div>
        <!--footer-->
        <footer class="tm-footer row tm-mt-small">
            <div class="col-12 font-weight-light">
                <p class="text-center text-white mb-0 px-4 small">
                    Copyright &copy; 2021 | Thi???t K??? B???i <a rel="sponsored" href="https://www.facebook.com/thao.hoangthien.94" target="_blank" style="color: #fff">Ho??ng Thi??n Th???o  </a>
                </p>
            </div>
        </footer>
    </body>
</html>
