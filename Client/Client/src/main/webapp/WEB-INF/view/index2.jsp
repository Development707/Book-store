<%-- 
    Document   : index2
    Created on : 27 May 2021, 16:10:32
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
        <script src="<c:url value='/Resources/js/moment.min.js' />" ></script>
        <script src="<c:url value='/Resources/js/Chart.min.js' />" ></script>
        <script src="<c:url value='/Resources/js/bootstrap.min.js' />" ></script>
        <!--<script src="<c:url value='/Resources/js/tooplate-scripts.js' />" ></script>-->
        <!--ING-->
        <c:url var="UserImage" value="/Resources/img/user-image.png"/>
        <c:url var="LOGO" value="/Resources/img/LOGO.png"/>
        <link rel="apple-touch-icon" href="${LOGO}">
        <link rel="shortcut icon" type="image/x-icon" href="${LOGO}">
    </head>
    <body id="reportsPage">
        <div class="" id="home">
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
                                <a class="nav-link active" href="/Client/ADMIN/home">
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
                                <a class="nav-link" href="/Client/ADMIN/books">
                                    <i class="fas fa-shopping-cart"></i>
                                    S???n Ph???m
                                </a>
                            </li>

                            <li class="nav-item">
                                <a class="nav-link" href="/Client/ADMIN/accounts">
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
                            <form:form action="/Client/ADMIN/logoutAdmin" method="POST">
                                <button type="submit" class="nav-link d-block" style="background-color: #4a4a4a">
                                    ${userLogin}, <b>????ng Xu???t</b>
                                </button>
                            </form:form>
                        </ul>
                    </div>
                </div>

            </nav>
            <div class="container">
                <div class="row">
                    <div class="col">
                        <p class="text-white mt-5 mb-5">Ch??o m???ng tr??? l???i, <b>Admin</b></p>
                    </div>
                </div>
                <!-- row -->
                <script>
                    const width_threshold = 480;
                    function randomArray(length, max) {
                        return Array.apply(null, Array(length)).map(function () {
                            return Math.round(Math.random() * max);
                        });
                    }
                </script>
                <div class="row tm-content-row">
                    <div class="col-sm-12 col-md-12 col-lg-6 col-xl-6 tm-block-col">
                        <div class="tm-bg-primary-dark tm-block">
                            <h2 class="tm-block-title">S??? s??ch b??n</h2>
                            <canvas id="lineChart"></canvas>
                        </div>
                    </div>
                    <script>
                        function drawLineChart() {
                            if ($("#lineChart").length) {
                                ctxLine = document.getElementById("lineChart").getContext("2d");
                                optionsLine = {
                                    scales: {
                                        yAxes: [
                                            {
                                                scaleLabel: {
                                                    display: true,
                                                    labelString: "S??? l?????ng s??ch"
                                                }
                                            }
                                        ]
                                    }
                                };

                                // Set aspect ratio based on window width
                                optionsLine.maintainAspectRatio =
                                        $(window).width() < width_threshold ? false : true;
                                configLine = {
                                    type: "line",
                                    data: {
                                        labels: [
                                            "Th??ng 1",
                                            "Th??ng 2",
                                            "Th??ng 3",
                                            "Th??ng 4",
                                            "Th??ng 5",
                                            "Th??ng 6"
                                        ],
                                        datasets: [
                                            {
                                                label: "S??ch",
                                                data: randomArray(6, 200),
                                                fill: false,
                                                backgroundColor: "rgb(203, 35, 245)",
                                                borderColor: "rgb(203, 35, 245)",
                                                cubicInterpolationMode: "monotone",
                                                pointRadius: 0
                                            }
                                        ]
                                    },
                                    options: optionsLine
                                };

                                lineChart = new Chart(ctxLine, configLine);
                            }
                        }
                    </script>
                    <div class="col-sm-12 col-md-12 col-lg-6 col-xl-6 tm-block-col">
                        <div class="tm-bg-primary-dark tm-block">
                            <h2 class="tm-block-title">L?????t Xem</h2>
                            <canvas id="barChart"></canvas>
                        </div>
                    </div>
                    <script>
                        function drawBarChart() {
                            if ($("#barChart").length) {
                                ctxBar = document.getElementById("barChart").getContext("2d");

                                optionsBar = {
                                    responsive: true,
                                    scales: {
                                        yAxes: [
                                            {
                                                barPercentage: 0.2,
                                                ticks: {
                                                    beginAtZero: true
                                                },
                                                scaleLabel: {
                                                    display: true,
                                                    labelString: "Ch??? ?????"
                                                }
                                            }
                                        ]
                                    }
                                };

                                optionsBar.maintainAspectRatio =
                                        $(window).width() < width_threshold ? false : true;

                                /**
                                 * COLOR CODES
                                 * Red: #F7604D
                                 * Aqua: #4ED6B8
                                 * Green: #A8D582
                                 * Yellow: #D7D768
                                 * Purple: #9D66CC
                                 * Orange: #DB9C3F
                                 * Blue: #3889FC
                                 */

                                configBar = {
                                    type: "horizontalBar",
                                    data: {
                                        labels: ["Thi???u Nhi", "Manga", "Kinh T???", "Phong Th???y", "Th???i Trang", "Gi???i Tr??", "Gi??o Tr??nh"],
                                        datasets: [
                                            {
                                                label: "S??? l?????t xem",
                                                data: randomArray(7, 50),
                                                backgroundColor: [
                                                    "#cb23f5",
                                                    "#4ED6B8",
                                                    "#9c9c9c",
                                                    "#cb23f5",
                                                    "#4ED6B8",
                                                    "#9c9c9c",
                                                    "#cb23f5"
                                                ],
                                                borderWidth: 0
                                            }
                                        ]
                                    },
                                    options: optionsBar
                                };

                                barChart = new Chart(ctxBar, configBar);
                            }
                        }
                    </script>
                    <div class="col-sm-12 col-md-12 col-lg-6 col-xl-6 tm-block-col">
                        <div class="tm-bg-primary-dark tm-block tm-block-taller">
                            <h2 class="tm-block-title">Th??ng tin l??u tr???</h2>
                            <div id="pieChartContainer">
                                <canvas id="pieChart" class="chartjs-render-monitor" width="200" height="200"></canvas>
                            </div>                        
                        </div>
                    </div>
                    <script>
                        dataStrong = randomArray(3, 1000);
                        function drawPieChart() {
                            if ($("#pieChart").length) {
                                var chartHeight = 300;

                                $("#pieChartContainer").css("height", chartHeight + "px");

                                ctxPie = document.getElementById("pieChart").getContext("2d");

                                optionsPie = {
                                    responsive: true,
                                    maintainAspectRatio: false,
                                    layout: {
                                        padding: {
                                            left: 10,
                                            right: 10,
                                            top: 10,
                                            bottom: 10
                                        }
                                    },
                                    legend: {
                                        position: "top"
                                    }
                                };

                                configPie = {
                                    type: "pie",
                                    data: {
                                        datasets: [
                                            {
                                                data: dataStrong,
                                                backgroundColor: ["#cb23f5", "#4ED6B8", "#9c9c9c"],
                                                label: "Storage"
                                            }
                                        ],
                                        labels: [
                                            "S??ch (" + dataStrong[0] + "GB)",
                                            "Ng?????i d??ng (" + dataStrong[1] + "GB)",
                                            "C??n tr???ng (" + dataStrong[2] + "GB)"
                                        ]
                                    },
                                    options: optionsPie
                                };

                                pieChart = new Chart(ctxPie, configPie);
                            }
                        }
                        function updateLineChart() {
                            if (lineChart) {
                                lineChart.options = optionsLine;
                                lineChart.update();
                            }
                        }

                        function updateBarChart() {
                            if (barChart) {
                                barChart.options = optionsBar;
                                barChart.update();
                            }
                        }
                    </script>



                    <!--ROW-->
                    <div class="col-sm-12 col-md-12 col-lg-6 col-xl-6 tm-block-col">
                        <div class="tm-bg-primary-dark tm-block tm-block-taller tm-block-overflow">
                            <h2 class="tm-block-title">Danh s??ch th??ng b??o</h2>
                            <div class="tm-notification-items">
                                <c:forEach var="binhLuan" items="${listBinhLuan}">
                                    <div class="media tm-notification-item">
                                        <div class="tm-gray-circle">
                                            <img src="${UserImage}" alt="Avatar Image" class="rounded-circle avatarAdmin">
                                        </div>
                                        <div class="media-body">
                                            <p class="mb-2"><b>${binhLuan.tenNguoi}</b> g???i b???n 
                                                <a href="#" class="tm-notification-link">${binhLuan.noiDung}</a></p>
                                            <span class="tm-small tm-text-color-secondary">ID: ${binhLuan.maBinhLuan}</span>
                                        </div>
                                    </div>
                                </c:forEach>                                
                            </div>
                        </div>
                    </div>
                    <div class="col-12 tm-block-col">
                        <div class="tm-bg-primary-dark tm-block tm-block-taller tm-block-scroll">
                            <h2 class="tm-block-title">Danh s??ch ????n h??ng</h2>
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th scope="col">STT</th>
                                        <th scope="col">KH??CH H??NG</th>
                                        <th scope="col">S??CH</th>
                                        <th scope="col">????NH GI??</th>
                                        <th scope="col">T??C GI???</th>
                                        <th scope="col">S??? L?????NG</th>
                                        <th scope="col">GHI CH??</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach var="gioHang" items="${ListOrder}" varStatus="i">
                                        <tr>
                                            <th scope="row"><b>${i.count}</b></th>
                                            <td><b>${gioHang.maKhachHang.lastName} ${gioHang.maKhachHang.firstName}</b></td>
                                            <td><b>${gioHang.maSach.tenSach}</b></td>
                                            <td>
                                                <c:url value="${gioHang.maSach.danhGia}" var="danhGiaSach"/>
                                                <c:if test="${danhGiaSach <= 1.0}">
                                                    <div class="tm-status-circle cancelled"></div>Th???p
                                                </c:if>                                                    
                                                <c:if test="${danhGiaSach > 1.0 && danhGiaSach <=3.0}">
                                                    <div class="tm-status-circle pending"></div>Trung B??nh
                                                </c:if>
                                                <c:if test="${danhGiaSach > 3.0}">
                                                    <div class="tm-status-circle moving"></div>Cao
                                                </c:if>
                                            </td>
                                            <td>${gioHang.maSach.tacGia}</td>
                                            <td><b>${gioHang.soLuong}</b></td>
                                            <td>${gioHang.ghiChu}</td>
                                        </tr>
                                    </c:forEach>                                    
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
            <footer class="tm-footer row tm-mt-small">
                <div class="col-12 font-weight-light">
                    <p class="text-center text-white mb-0 px-4 small">
                        Copyright &copy; 2021 | Thi???t K??? B???i <a rel="sponsored" href="https://www.facebook.com/thao.hoangthien.94" target="_blank" style="color: #fff">Ho??ng Thi??n Th???o  </a>
                    </p>
                </div>
            </footer>
        </div>
    </body>
    <script>
        Chart.defaults.global.defaultFontColor = 'white';
        let ctxLine,
                ctxBar,
                ctxPie,
                optionsLine,
                optionsBar,
                optionsPie,
                configLine,
                configBar,
                configPie,
                lineChart;
        barChart, pieChart;
        // DOM is ready
        $(function () {
            drawLineChart(); // Line Chart
            drawBarChart(); // Bar Chart
            drawPieChart(); // Pie Chart

            $(window).resize(function () {
                updateLineChart();
                updateBarChart();
            });
        })
    </script>
</html>
