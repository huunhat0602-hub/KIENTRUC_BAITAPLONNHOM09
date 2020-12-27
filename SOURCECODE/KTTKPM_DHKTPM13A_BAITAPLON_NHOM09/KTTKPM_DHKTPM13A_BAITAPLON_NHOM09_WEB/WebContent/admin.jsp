<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>

<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="UTF-8">
<!-- <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.1/css/all.css" integrity="sha384-5sAR7xN1Nv6T6+dT2mhtzEpVJvfS3NScPQTrOxhwjIuvcA67KV2R5Jz6kr4abQsz" crossorigin="anonymous"> -->
<!--<link rel="stylesheet" type="text/css" href="../css/fontawesome-free-5.13.0-web/css/all.css">  -->
<link rel="stylesheet" type="text/css"
	href="./css/fontawesome-free-5.13.0-web/css/all.css">
<link rel="stylesheet" type="text/css" href="./css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="./css/bootstrap.css" />
<script type="text/javascript" src="./js/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="./js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="./css/css.css">
<title>Shop Đồ Nam Nữ</title>
</head>

<body>
	<input type="hidden" value="${tk.tenTaiKhoan }" name="tenTaiKhoan">
	<c:set var="tentk" value="${tk.tenTaiKhoan }" scope="session"></c:set>
	<div class="container-fluid">
		<div class="topheader">
			<div class="row">
				<div class="col-md-4" id="navbar-header">
					<c:if test="${tentk==null}">
						<ul>
							<li><a href="/WEBBANHANGEJB_WEB/dangnhap.jsp"><span>Đăng
										nhập</span></a></li>
							<li><a href="#"><span>Đăng ký</span></a></li>
						</ul>

					</c:if>
					<c:if test="${tentk!=null}">
						<ul>
							<li><a href="/WEBBANHANGEJB_WEB/dangnhap.jsp"><span>Xin
										Chào ${tk.tenTaiKhoan } </span></a></li>
							<li><a href="/WEBBANHANGEJB_WEB/DangNhap?action=dangxuat"><span>Đăng
										Xuất</span></a></li>
						</ul>
					</c:if>
				</div>
			</div>
		</div>
		<div class="header_menu">
			<div class="row">
				<div class="col-xl-3 col-lg-2 col-md-12 col-sm-12 col-xs-12">
					<div class="logo">
						<a href="#"
							style="display: block; line-height: 100px; height: 100px;"> <img
							src="./img/logo.png">
						</a>
					</div>
				</div>

				<div class="col-xl-2 col-lg-2 hidden-md hiden-sm hidden-xs"
					id="giohang">
					<div
						class="cart visible-xl visible-lg hidden-md hidden-sm hidden-xs">
						<a href="#" id="icon-cart"> <img src="./img/icon-cart.png"
							style="padding-top: 12px;">
						</a>
						<div class="text-giohang">
							<a href="/WEBBANHANGEJB_WEB/ChiTietDonHang.jsp"
								style="font-size: 16px; color: #66a182;">Giỏ hàng</a>
							<p style="margin: 0 0 15px 0;">
								(<span style="color: red;">${cart.soLuongItiem() }</span>) Sản
								phẩm
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="header_nav_main section">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 col-md-12 col-sm-12">
					<div class="heade_menunav">
						<div class="wrap_main d-none d-lg-block d-xl-block">
							<div class="bg-header-nav">
								<div class="row">
									<div class="col-lg-9 col-md-9 col-sm-12 col-xs-12">
										<nav class="header-nav">
											<ul class="item_big">
												<li class="nav-item  active "><a class="a-img"
													href="${pageContext.request.contextPath}/ListSanPham" title="Trang chủ">
														<span>Trang chủ</span>
												</a></li>
												<li class="nav-item  active "><a class="a-img"
													href="${pageContext.request.contextPath}/quanLySanPham?action=dsdonhang" title="Trang chủ">
														<span>Quản lý đơn hàng</span>
												</a></li>
												<li class="nav-item  active "><a class="a-img"
													href="${pageContext.request.contextPath}/quanLySanPham?action=listsp" title="Danh sách sản phẩm">
														<span>Quản lý sản phẩm</span>
														<ul class="item_small">
															<li><a href="${pageContext.request.contextPath}/quanLySanPham?action=formthem" title="Thêm sản phẩm">Thêm sản
																	phẩm</a></li>
															<li><a href="${pageContext.request.contextPath}/quanLySanPham?action=listsp" title="Danh sách sản phẩm">Danh sách
																	sản phẩm</a>
														</ul>
												</a></li>
											</ul>
										</nav>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>

</html>