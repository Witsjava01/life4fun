<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>life4fun | 分頁</title>

  
<script>
	var webApplicationPath = "${webApplicationPath}";
</script>

  <meta charset="utf-8">
  <!--[if IE]><meta http-equiv='X-UA-Compatible' content='IE=edge,chrome=1'><![endif]-->
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">

  <!-- Google Fonts -->
  <link href='${webApplicationPath}/static/css/css.css' rel='stylesheet'>

  <!-- Css -->
  <link rel="stylesheet" href="${webApplicationPath}/static/css/bootstrap.min.css">
  <link rel="stylesheet" href="${webApplicationPath}/static/css/font-icons.css">
  <link rel="stylesheet" href="${webApplicationPath}/static/css/style.css">
  <link rel="stylesheet" href="${webApplicationPath}/static/css/color.css">

  
  
	<script >
	function getQueryVariable(variable)
	{
	    var query = window.location.search.substring(1);
	    var vars = query.split("&");
	    for (var i=0;i<vars.length;i++) {
	        var pair = vars[i].split("=");
	        if(pair[0] == variable){return pair[1];}
	    }
	    return(false);
	}
	
	var catalog = getQueryVariable("catalog");
	switch(catalog){
	case "A":
		 var script = document.createElement('script');
		  script.src = '${webApplicationPath}/js/product/catalog.js';
		  document.write(script.outerHTML);
		  console.log(script.outerHTML+""+catalog);
		  break;
	case "H":
		 var script = document.createElement('script');
		  script.src = '${webApplicationPath}/js/product/catalogH.js';
		  document.write(script.outerHTML);
		  console.log(script.outerHTML+""+catalog);
		  break;
	
	}
	</script>
  	
 
  
  
<script type="text/javascript"
	src="${webApplicationPath}/static/js/jquery.min.js"></script>
<script type="text/javascript"
	src="${webApplicationPath}/static/js/bootstrap.min.js"></script>
<script type="text/javascript"
	src="${webApplicationPath}/static/js/easing.min.js"></script>
<script type="text/javascript"
	src="${webApplicationPath}/static/js/jquery.magnific-popup.min.js"></script>
<script type="text/javascript"
	src="${webApplicationPath}/static/js/owl-carousel.min.js"></script>
<script type="text/javascript"
	src="${webApplicationPath}/static/js/flickity.pkgd.min.js"></script>
<script type="text/javascript"
	src="${webApplicationPath}/static/js/modernizr.min.js"></script>
<script type="text/javascript"
	src="${webApplicationPath}/static/js/scripts.js"></script>
  

</head>

<body>

  <!-- Preloader -->
<div class="loader-mask">
	<div class="loader">
		<div></div>
	</div>
</div>

<!-- Mobile Sidenav -->
<header class="sidenav" id="sidenav">
	<!-- Search -->
	<div class="sidenav__search-mobile">
		<form method="get" class="sidenav__search-mobile-form">
			<input type="search" class="sidenav__search-mobile-input"
				placeholder="Search...">
			<button type="submit" class="sidenav__search-mobile-submit">
				<i class="ui-search"></i>
			</button>
		</form>
	</div>

	<nav>
		<ul class="sidenav__menu">
			<li><a href="#" class="sidenav__menu-link">Men</a>
				<button class="sidenav__menu-toggle">
					<i class="ui-arrow-down"></i>
				</button>
				<ul class="sidenav__menu-dropdown">
					<li><a href="#" class="sidenav__menu-link">T-shirt</a></li>
					<li><a href="#" class="sidenav__menu-link">Hoodie &amp;
							Jackets</a></li>
					<li><a href="#" class="sidenav__menu-link">Suits</a></li>
					<li><a href="#" class="sidenav__menu-link">Shorts</a></li>
				</ul></li>

			<li><a href="#" class="sidenav__menu-link">Women</a>
				<button class="sidenav__menu-toggle">
					<i class="ui-arrow-down"></i>
				</button>
				<ul class="sidenav__menu-dropdown">
					<li><a href="#" class="sidenav__menu-link">Underwear</a></li>
					<li><a href="#" class="sidenav__menu-link">Hipster</a></li>
					<li><a href="#" class="sidenav__menu-link">Dress</a></li>
					<li><a href="#" class="sidenav__menu-link">Hoodie &amp;
							Jackets</a></li>
					<li><a href="#" class="sidenav__menu-link">Tees</a></li>
				</ul></li>

			<li><a href="#" class="sidenav__menu-link">Accessories</a>
				<button class="sidenav__menu-toggle">
					<i class="ui-arrow-down"></i>
				</button>
				<ul class="sidenav__menu-dropdown">
					<li><a href="#" class="sidenav__menu-link">All accessories</a>
						<button class="sidenav__menu-toggle">
							<i class="ui-arrow-down"></i>
						</button>
						<ul class="sidenav__menu-dropdown">
							<li><a href="#" class="sidenav__menu-link">Wallets</a></li>
							<li><a href="#" class="sidenav__menu-link">Scarfs</a></li>
							<li><a href="#" class="sidenav__menu-link">Shirt</a></li>
							<li><a href="#" class="sidenav__menu-link">Shoes</a></li>
						</ul></li>

					<li><a href="#" class="sidenav__menu-link">for her</a>
						<button class="sidenav__menu-toggle">
							<i class="ui-arrow-down"></i>
						</button>
						<ul class="sidenav__menu-dropdown">
							<li><a href="#" class="sidenav__menu-link">Underwear</a></li>
							<li><a href="#" class="sidenav__menu-link">Hipster</a></li>
							<li><a href="#" class="sidenav__menu-link">Dress</a></li>
							<li><a href="#" class="sidenav__menu-link">Hoodie &amp;
									Jackets</a></li>
							<li><a href="#" class="sidenav__menu-link">Tees</a></li>
						</ul></li>

					<li><a href="#" class="sidenav__menu-link">for him</a>
						<button class="sidenav__menu-toggle">
							<i class="ui-arrow-down"></i>
						</button>
						<ul class="sidenav__menu-dropdown">
							<li><a href="#" class="sidenav__menu-link">T-shirt</a></li>
							<li><a href="#" class="sidenav__menu-link">Hoodie &amp;
									Jackets</a></li>
							<li><a href="#" class="sidenav__menu-link">Dress</a></li>
							<li><a href="#" class="sidenav__menu-link">Suits</a></li>
							<li><a href="#" class="sidenav__menu-link">Shorts</a></li>
						</ul></li>

					<li><a href="#" class="sidenav__menu-link">Watches</a>
						<button class="sidenav__menu-toggle">
							<i class="ui-arrow-down"></i>
						</button>
						<ul class="sidenav__menu-dropdown">
							<li><a href="#" class="sidenav__menu-link">Smart Watches</a>
							</li>
							<li><a href="#" class="sidenav__menu-link">Diving
									Watches</a></li>
							<li><a href="#" class="sidenav__menu-link">Sport Watches</a>
							</li>
							<li><a href="#" class="sidenav__menu-link">Classic
									Watches</a></li>
						</ul></li>

				</ul></li>

			<li><a href="#" class="sidenav__menu-link">News</a>
				<button class="sidenav__menu-toggle">
					<i class="ui-arrow-down"></i>
				</button>
				<ul class="sidenav__menu-dropdown">
					<li><a href="blog-standard.html" class="sidenav__menu-link">Blog
							Standard</a></li>
					<li><a href="blog-single.html" class="sidenav__menu-link">Single
							Post</a></li>
				</ul></li>

			<li><a href="#" class="sidenav__menu-link">Pages</a>
				<button class="sidenav__menu-toggle">
					<i class="ui-arrow-down"></i>
				</button>
				<ul class="sidenav__menu-dropdown">
					<li><a href="catalog.html" class="sidenav__menu-link">Catalog</a></li>
					<li><a href="single-product.html" class="sidenav__menu-link">Single
							Product</a></li>
					<li><a href="" class="sidenav__menu-link">Cart</a></li>
					<li><a href="checkout.html" class="sidenav__menu-link">Checkout</a></li>
					<li><a href="about.html" class="sidenav__menu-link">About</a></li>
					<li><a href="contact.html" class="sidenav__menu-link">Contact</a></li>
					<li><a href="login.html" class="sidenav__menu-link">Login</a></li>
					<li><a href="faq.html" class="sidenav__menu-link">FAQ</a></li>
					<li><a href="404.html" class="sidenav__menu-link">404</a></li>
				</ul></li>

			<li><a href="#" class="sidenav__menu-link">Sign In</a></li>
		</ul>
	</nav>
</header>
<!-- end mobile sidenav -->

<main class="main oh" id="main">

	<!-- Navigation -->
	<header class="nav">
		<div class="nav__holder nav--sticky">
			<div class="container relative">

				<!-- Top Bar -->
				<div class="top-bar d-none d-lg-flex">




					<!-- Sign in / Wishlist / Cart -->
					<div class="top-bar__right">

						<!-- Sign In -->
						<a href="login.html" class="top-bar__item top-bar__sign-in"
							id="top-bar__sign-in"> <i class="ui-user"></i><a
							href="${webApplicationPath}/MemberServlet?method=login"
							id="SignIn_A">Sign In</a></a>

						<!-- Wishlist -->
						<a href="#" class="top-bar__item"><i class="ui-heart"></i></a>

						<div class="top-bar__item nav-cart">
							<a href="cart.html"> <i class="ui-bag"></i>(2)
							</a>
							<div class="nav-cart__dropdown">
								<div class="nav-cart__items">

									<div class="nav-cart__item clearfix">
										<div class="nav-cart__img">
											<a href="#"> <img
												src="${webApplicationPath}/static/picture/cart_small_1.jpg"
												alt="">
											</a>
										</div>
										<div class="nav-cart__title">
											<a href="#"> Classic White Tailored Shirt </a>
											<div class="nav-cart__price">
												<span>1 x</span> <span>19.99</span>
											</div>
										</div>
										<div class="nav-cart__remove">
											<a href="#"><i class="ui-close"></i></a>
										</div>
									</div>

									<div class="nav-cart__item clearfix">
										<div class="nav-cart__img">
											<a href="#"> <img
												src="${webApplicationPath}/static/picture/cart_small_2.jpg"
												alt="">
											</a>
										</div>
										<div class="nav-cart__title">
											<a href="#"> Sport Hi Adidas </a>
											<div class="nav-cart__price">
												<span>1 x</span> <span>29.00</span>
											</div>
										</div>
										<div class="nav-cart__remove">
											<a href="#"><i class="ui-close"></i></a>
										</div>
									</div>

								</div>
								<!-- end cart items -->

								<div class="nav-cart__summary">
									<span>Cart Subtotal</span> <span class="nav-cart__total-price">$1799.00</span>
								</div>

								<div class="nav-cart__actions mt-20">
									<a href="javascript:;" class="btn btn-md btn-light"><span>View
											Cart</span></a> <a href="javascript:;"
										class="btn btn-md btn-color mt-10"><span>Proceed to
											Checkout</span></a>
								</div>
							</div>
						</div>
					</div>

				</div>
				<!-- end top bar -->

				<div class="flex-parent">

					<!-- Mobile Menu Button -->
					<button class="nav-icon-toggle" id="nav-icon-toggle"
						aria-label="Open mobile menu">
						<span class="nav-icon-toggle__box"> <span
							class="nav-icon-toggle__inner"></span>
						</span>
					</button>
					<!-- end mobile menu button -->

					<!-- Logo -->
					<a href="${webApplicationPath}/jsp/product/index.jsp" class="logo">
						<img class="logo__img"
						src="${webApplicationPath}/static/picture/logo_life4fun.png"
						alt="logo" width="100" height="300">

					</a>


					<!-- Nav-wrap -->
					<nav class="flex-child nav__wrap d-none d-lg-block">
						<ul class="nav__menu">

							<li class="nav__dropdown active"><a
								href="${webApplicationPath}/jsp/product/catalog.jsp?catalog=A">飾品</a>

							</li>

							<li class="nav__dropdown"><a
								href="${webApplicationPath}/jsp/product/catalog.jsp?catalog=H">居家小物</a>

							</li>

							<li class="nav__dropdown"><a href="catalog.html">美妝保養</a></li>

							<li class="nav__dropdown"><a href="#">男士保養</a></li>

							<li class="nav__dropdown"><a href="contact.html">其他</a></li>

						</ul>
						<!-- end menu -->

					</nav>
					<!-- end nav-wrap -->


					<!-- Search -->
					<div class="flex-child nav__search d-none d-lg-block">
						<form method="get" class="nav__search-form">
							<input type="search" class="nav__search-input"
								placeholder="Search">
							<button type="submit" class="nav__search-submit">
								<i class="ui-search"></i>
							</button>
						</form>
					</div>


					<!-- Mobile Wishlist -->
					<a href="#" class="nav__mobile-wishlist d-lg-none"
						aria-label="Mobile wishlist"> <i class="ui-heart"></i>
					</a>

					<!-- Mobile Cart -->
					<a href="${webApplicationPath}/CartServlet?method=showCart"
						class="nav__mobile-cart d-lg-none"> <i class="ui-bag"></i> <span
						class="nav__mobile-cart-amount">(2)</span>
					</a>
				</div>
				<!-- end flex-parent -->
			</div>
			<!-- end container -->

		</div>

	</header>
	<!-- end navigation -->

    <!-- Catalog -->
    <section class="section-wrap pt-60 pb-30 catalog">
      <div class="container">

        <!-- Breadcrumbs -->
        <ol class="breadcrumbs">
          <li>
            <a href="index.html">life4fun</a>
          </li>
          <li>
            <a href="index.html">分頁</a>
          </li>
          
        </ol>

        <div class="row">
          <div class="col-lg-9 order-lg-2 mb-40">

            <!-- Filter -->          
            <div class="shop-filter">
              <p class="woocommerce-result-count">
              
              </p>
              <span class="woocommerce-ordering-label">排序</span>
             
              
              <form class="woocommerce-ordering">
                <select onchange="report(this.value)">
                  <option value="default-sorting">全品項</option>
                  <option value="price-low-to-high" >價格: 低 到 高</option>
                  <option value="price-high-to-low">價格: 高 到 低</option>
                  <option value="date">最新上架</option>
                  <option value="stock">庫存: 多 到 少</option>
                </select>
              </form>
              
               
            </div>

            <div class="row row-8" id="catalogProduct">
 
            </div> <!-- end row -->
            
     

          </div> <!-- end col -->


          <!-- Sidebar -->
          <aside class="col-lg-3 sidebar left-sidebar">

            <!-- Categories -->
            <div class="widget widget_categories widget--bottom-line">
              <h4 class="widget-title">分類</h4>
              <ul>
                <li>
                  <a href="#">飾品</a>
                </li>
                <li class="active">
                  <a href="#">居家小物</a>
                </li>
                <li>
                  <a href="#">美妝保養</a>
                </li>
                <li>
                  <a href="#">男士保養</a>
                </li>
                <li>
                  <a href="#">其他</a>
                </li>
             
              </ul>
            </div>

            <!-- Size -->
          <!-- <div class="widget widget__filter-by-size widget--bottom-line">
              <h4 class="widget-title">Size</h4>
              <ul class="size-select">
                <li>
                  <input type="checkbox" class="checkbox" id="small-size" name="small-size">
                  <label for="small-size" class="checkbox-label">X-Small</label>
                </li>                
                <li>
                  <input type="checkbox" class="checkbox" id="medium-size" name="medium-size">
                  <label for="medium-size" class="checkbox-label">Small</label>
                </li>
                <li>
                  <input type="checkbox" class="checkbox" id="large-size" name="large-size">
                  <label for="large-size" class="checkbox-label">Meduim</label>
                </li>
                <li>
                  <input type="checkbox" class="checkbox" id="xlarge-size" name="xlarge-size">
                  <label for="xlarge-size" class="checkbox-label">Large</label>
                </li>
                <li>
                  <input type="checkbox" class="checkbox" id="xxlarge-size" name="xxlarge-size">
                  <label for="xxlarge-size" class="checkbox-label">X-Large</label>
                </li>
              </ul>
            </div>
            
            <div class="widget widget__filter-by-color widget--bottom-line">
              <h4 class="widget-title">Color</h4>
              <ul class="color-select">
                <li>
                  <input type="checkbox" class="checkbox" id="green-color" name="green-color">
                  <label for="green-color" class="checkbox-label">Green</label>
                </li>
                <li>
                  <input type="checkbox" class="checkbox" id="red-color" name="red-color">
                  <label for="red-color" class="checkbox-label">Red</label>
                </li>
                <li>
                  <input type="checkbox" class="checkbox" id="blue-color" name="blue-color">
                  <label for="blue-color" class="checkbox-label">Blue</label>
                </li>
                <li>
                  <input type="checkbox" class="checkbox" id="white-color" name="white-color">
                  <label for="white-color" class="checkbox-label">White</label>
                </li>
                <li>
                  <input type="checkbox" class="checkbox" id="black-color" name="black-color">
                  <label for="black-color" class="checkbox-label">Black</label>
                </li>
              </ul>
            </div>

            
            <div class="widget widget__filter-by-price widget--bottom-line">
              <h4 class="widget-title">Filter by Price</h4>
               
              <div id="slider-range"></div>
              <p>
                <label for="amount">Price:</label>
                <input type="text" id="amount">
                <a href="#" class="btn btn-sm btn-dark"><span>Filter</span></a>
              </p>
            </div>
            --> 
           

          </aside> <!-- end sidebar -->

        </div> <!-- end row -->
      </div> <!-- end container -->
    </section> <!-- end catalog -->

    <!-- Footer -->
    <footer class="footer">
      <div class="container">
        <div class="footer__widgets">
          <div class="row">

            <div class="col-lg-4 col-md-6">
              <div class="widget widget__about">
                <h4 class="widget-title white">about us</h4>
                <p class="widget__about-text">Namira is a very slick and clean e-commerce template with endless possibilities.</p>
              </div>
            </div>

            <div class="col-lg-4 col-md-6">
              <div class="widget widget__newsletter">
                <h4 class="widget-title white">get exclusive offers &amp; updates</h4>

                <form class="mc4wp-form">
                  <div class="mc4wp-form-fields">
                    <p><input type="email" placeholder="Please enter your email address"></p>
                    <p><input type="submit" value="Subscribe"></p>
                  </div>
                </form>

                <div class="socials socials--white mt-20">
                  <a href="#" class="facebook"><i class="ui-facebook"></i></a>
                  <a href="#" class="twitter"><i class="ui-twitter"></i></a>
                  <a href="#" class="snapchat"><i class="ui-snapchat"></i></a>
                  <a href="#" class="instagram"><i class="ui-instagram"></i></a>
                  <a href="#" class="pinterest"><i class="ui-pinterest"></i></a>
                </div>
              </div>
            </div>

            <div class="col-lg-2 col-md-6">
              <div class="widget widget_nav_menu">
                <h4 class="widget-title white">help</h4>
                <ul>
                  <li><a href="#">Contact Us</a></li>
                  <li><a href="#">Tract Order</a></li>
                  <li><a href="#">Returns &amp; Refunds</a></li>
                  <li><a href="#">Private Policy</a></li>
                  <li><a href="#">Shipping Info</a></li>
                  <li><a href="#">FAQ</a></li>
                </ul>
              </div>
            </div>

            <div class="col-lg-2 col-md-6">
              <div class="widget widget_nav_menu">
                <h4 class="widget-title white">information</h4>
                <ul>
                  <li><a href="#">Our Stores</a></li>
                  <li><a href="#">Careers</a></li>
                  <li><a href="#">Delivery Info</a></li>
                  <li><a href="#">Terms &amp; Conditions</a></li>
                  <li><a href="#">Site Map</a></li>
                  <li><a href="#">Namira Reviews</a></li>
                </ul>
              </div>
            </div>

          </div>
        </div>    
      </div> <!-- end container -->

      <div class="footer__bottom">
        <div class="container">
          <div class="row">
            <div class="col-md-6 text-sm-center">
              <span class="copyright">
                Copyright &copy; 2022.Company name All rights reserved.<a target="_blank" href="https://sc.chinaz.com/moban/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a>
              </span>
            </div>

            <div class="col-md-6 footer__payment-systems text-right text-sm-center mt-sml-10">
              <i class="ui-paypal"></i>
              <i class="ui-visa"></i>
              <i class="ui-mastercard"></i>
              <i class="ui-discover"></i>
              <i class="ui-amex"></i>
            </div>
          </div>
        </div>
      </div> <!-- end bottom footer -->
    </footer> <!-- end footer -->

    <div id="back-to-top">
      <a href="#top"><i class="ui-arrow-up"></i></a>
    </div>

  </main> <!-- end main-wrapper -->




</body>

<script>



</script>

</html>