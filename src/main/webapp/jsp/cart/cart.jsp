<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@page isELIgnored="false"%>
<%@page import="life4fun.entity.CartItem"%>
<%@page import="java.util.List"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Live4Fun | 購物車</title>

  <meta charset="utf-8">
  <!--[if IE]><meta http-equiv='X-UA-Compatible' content='IE=edge,chrome=1'><![endif]-->
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">

  <!-- Google Fonts -->
  <link href='../../static/css/css.css' rel='stylesheet'>

  <!-- Css -->
  <link rel="stylesheet" href="../../static/css/bootstrap.min.css">
  <link rel="stylesheet" href="../../static/css/font-icons.css">
  <link rel="stylesheet" href="../../static/css/style.css">
  <link rel="stylesheet" href="../../static/css/color.css">

  <!-- Favicons -->
  <script src="${webApplicationPath}/js/cart/cart.js"></script>
  <script src="https://code.jquery.com/jquery-3.6.1.js"></script>
  <script>
  $(document).ready(function(){ 
	  //alert("btnUpdateCart");
	  $("#btnUpdateCart").on("click", function() {
		$("cartForm").prop("action", "CartServlet?method=updateCart");
	  });		
	  $("#btnBack").on("click", function() {
			$("cartForm").prop("action", "");
	  		location.href="../../product/index.jsp"
	  }); 
  });
  </script>
  

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
        <input type="search" class="sidenav__search-mobile-input" placeholder="Search...">
        <button type="submit" class="sidenav__search-mobile-submit">
          <i class="ui-search"></i>
        </button>
      </form>
    </div>

    <nav>
      <ul class="sidenav__menu">
        <li>
          <a href="#" class="sidenav__menu-link">Men</a>
          <button class="sidenav__menu-toggle"><i class="ui-arrow-down"></i></button>
          <ul class="sidenav__menu-dropdown">
            <li><a href="#" class="sidenav__menu-link">T-shirt</a></li>
            <li><a href="#" class="sidenav__menu-link">Hoodie &amp; Jackets</a></li>
            <li><a href="#" class="sidenav__menu-link">Suits</a></li>
            <li><a href="#" class="sidenav__menu-link">Shorts</a></li>
          </ul>
        </li>
      
        <li>
          <a href="#" class="sidenav__menu-link">Women</a>
          <button class="sidenav__menu-toggle"><i class="ui-arrow-down"></i></button>
          <ul class="sidenav__menu-dropdown">
            <li><a href="#" class="sidenav__menu-link">Underwear</a></li>
            <li><a href="#" class="sidenav__menu-link">Hipster</a></li>
            <li><a href="#" class="sidenav__menu-link">Dress</a></li>
            <li><a href="#" class="sidenav__menu-link">Hoodie &amp; Jackets</a></li>
            <li><a href="#" class="sidenav__menu-link">Tees</a></li>
          </ul>
        </li>
        
        <li>
          <a href="#" class="sidenav__menu-link">Accessories</a>
          <button class="sidenav__menu-toggle"><i class="ui-arrow-down"></i></button>
          <ul class="sidenav__menu-dropdown">
            <li>
              <a href="#" class="sidenav__menu-link">All accessories</a>
              <button class="sidenav__menu-toggle"><i class="ui-arrow-down"></i></button>
              <ul class="sidenav__menu-dropdown">
                <li>
                  <a href="#" class="sidenav__menu-link">Wallets</a>
                </li>
                <li>
                  <a href="#" class="sidenav__menu-link">Scarfs</a>
                </li>
                <li>
                  <a href="#" class="sidenav__menu-link">Shirt</a>
                </li>
                <li>
                  <a href="#" class="sidenav__menu-link">Shoes</a>
                </li>
              </ul>
            </li>
            
            <li>
              <a href="#" class="sidenav__menu-link">for her</a>
              <button class="sidenav__menu-toggle"><i class="ui-arrow-down"></i></button>
              <ul class="sidenav__menu-dropdown">
                <li>
                  <a href="#" class="sidenav__menu-link">Underwear</a>
                </li>
                <li>
                  <a href="#" class="sidenav__menu-link">Hipster</a>
                </li>
                <li>
                  <a href="#" class="sidenav__menu-link">Dress</a>
                </li>
                <li>
                  <a href="#" class="sidenav__menu-link">Hoodie &amp; Jackets</a>
                </li>
                <li>
                  <a href="#" class="sidenav__menu-link">Tees</a>
                </li>
              </ul>
            </li>

            <li>
              <a href="#" class="sidenav__menu-link">for him</a>
              <button class="sidenav__menu-toggle"><i class="ui-arrow-down"></i></button>
              <ul class="sidenav__menu-dropdown">
                <li>
                  <a href="#" class="sidenav__menu-link">T-shirt</a>
                </li>
                <li>
                  <a href="#" class="sidenav__menu-link">Hoodie &amp; Jackets</a>
                </li>
                <li>
                  <a href="#" class="sidenav__menu-link">Dress</a>
                </li>
                <li>
                  <a href="#" class="sidenav__menu-link">Suits</a>
                </li>
                <li>
                  <a href="#" class="sidenav__menu-link">Shorts</a>
                </li>
              </ul>
            </li>

            <li>
              <a href="#" class="sidenav__menu-link">Watches</a>
              <button class="sidenav__menu-toggle"><i class="ui-arrow-down"></i></button>
              <ul class="sidenav__menu-dropdown">
                <li>
                  <a href="#" class="sidenav__menu-link">Smart Watches</a>
                </li>
                <li>
                  <a href="#" class="sidenav__menu-link">Diving Watches</a>
                </li>
                <li>
                  <a href="#" class="sidenav__menu-link">Sport Watches</a>
                </li>
                <li>
                  <a href="#" class="sidenav__menu-link">Classic Watches</a>
                </li>
              </ul>
            </li>
            
          </ul>
        </li>
        
        <li>
          <a href="#" class="sidenav__menu-link">News</a>
          <button class="sidenav__menu-toggle"><i class="ui-arrow-down"></i></button>
          <ul class="sidenav__menu-dropdown">
            <li><a href="blog-standard.html" class="sidenav__menu-link">Blog Standard</a></li>
            <li><a href="blog-single.html" class="sidenav__menu-link">Single Post</a></li>
          </ul>
        </li>

        <li>
          <a href="#" class="sidenav__menu-link">Pages</a>
          <button class="sidenav__menu-toggle"><i class="ui-arrow-down"></i></button>
          <ul class="sidenav__menu-dropdown">
            <li><a href="catalog.html" class="sidenav__menu-link">Catalog</a></li>
            <li><a href="single-product.html" class="sidenav__menu-link">Single Product</a></li>
            <li><a href="" class="sidenav__menu-link">Cart</a></li>
            <li><a href="checkout.html" class="sidenav__menu-link">Checkout</a></li>
            <li><a href="about.html" class="sidenav__menu-link">About</a></li>
            <li><a href="contact.html" class="sidenav__menu-link">Contact</a></li>
            <li><a href="login.html" class="sidenav__menu-link">Login</a></li>
            <li><a href="faq.html" class="sidenav__menu-link">FAQ</a></li>
            <li><a href="404.html" class="sidenav__menu-link">404</a></li>
          </ul>
        </li>

        <li>
          <a href="#" class="sidenav__menu-link">Sign In</a>
        </li>
      </ul>
    </nav>
  </header> <!-- end mobile sidenav -->

  <main class="main oh" id="main">

    <!-- Navigation -->
    <header class="nav">

      <div class="nav__holder nav--sticky">
        <div class="container relative">

          <!-- Top Bar -->
          <div class="top-bar d-none d-lg-flex">

            <!-- Currency / Language -->
            <ul class="top-bar__currency-language">
              <li class="top-bar__language">
                <a href="#">English</a>
                <div class="top-bar__language-dropdown">
                  <ul>
                    <li><a href="#">English</a></li>
                    <li><a href="#">Spanish</a></li>
                    <li><a href="#">German</a></li>
                    <li><a href="#">Chinese</a></li>
                  </ul>
                </div>
              </li>
              <li class="top-bar__currency">
                <a href="#">USD</a>
                <div class="top-bar__currency-dropdown">
                  <ul>
                    <li><a href="#">USD</a></li>
                    <li><a href="#">EUR</a></li>
                  </ul>
                </div>
              </li>              
            </ul>

            <!-- Promo -->
            <p class="top-bar__promo text-center">Free shipping on orders over $50</p>

            <!-- Sign in / Wishlist / Cart -->
            <div class="top-bar__right">

              <!-- Sign In -->
              <a href="login.html" class="top-bar__item top-bar__sign-in" id="top-bar__sign-in"><i class="ui-user"></i>Sign In</a>

              <!-- Wishlist -->
              <a href="#" class="top-bar__item"><i class="ui-heart"></i></a>

              <div class="top-bar__item nav-cart">                
                <a href="">
                  <i class="ui-bag"></i>(2)
                </a>
                <div class="nav-cart__dropdown">
                  <div class="nav-cart__items">

                    <div class="nav-cart__item clearfix">
                      <div class="nav-cart__img">
                        <a href="#">
                          <img src="static/picture/cart_small_1.jpg" alt="">
                        </a>
                      </div>
                      <div class="nav-cart__title">
                        <a href="#">
                          Classic White Tailored Shirt
                        </a>
                        <div class="nav-cart__price">
                          <span>1 x</span>
                          <span>19.99</span>
                        </div>
                      </div>
                      <div class="nav-cart__remove">
                        <a href="#"><i class="ui-close"></i></a>
                      </div>
                    </div>

                    <div class="nav-cart__item clearfix">
                      <div class="nav-cart__img">
                        <a href="#">
                          <img src="static/picture/cart_small_2.jpg" alt="">
                        </a>
                      </div>
                      <div class="nav-cart__title">
                        <a href="#">
                          Sport Hi Adidas
                        </a>
                        <div class="nav-cart__price">
                          <span>1 x</span>
                          <span>29.00</span>
                        </div>
                      </div>
                      <div class="nav-cart__remove">
                        <a href="#"><i class="ui-close"></i></a>
                      </div>
                    </div>

                  </div> <!-- end cart items -->

                  <div class="nav-cart__summary">
                    <span>Cart Subtotal</span>
                    <span class="nav-cart__total-price">$1799.00</span>
                  </div>

                  <div class="nav-cart__actions mt-20">
                    <a href="javascript:;" class="btn btn-md btn-light"><span>View Cart</span></a>
                    <a href="javascript:;" class="btn btn-md btn-color mt-10"><span>Proceed to Checkout</span></a>
                  </div>
                </div>
              </div>
            </div>

          </div> <!-- end top bar -->

          <div class="flex-parent">

            <!-- Mobile Menu Button -->
            <button class="nav-icon-toggle" id="nav-icon-toggle">
              <span class="nav-icon-toggle__box">
                <span class="nav-icon-toggle__inner"></span>
              </span>
            </button> <!-- end mobile menu button -->

            <!-- Logo -->
            <a href="index.html" class="logo">
              <img class="logo__img" src="static/picture/logo_light.png" alt="logo">
            </a>

            <!-- Nav-wrap -->
            <nav class="flex-child nav__wrap d-none d-lg-block">              
              <ul class="nav__menu">

                <li class="nav__dropdown active">
                  <a href="catalog.html">Men</a>
                  <ul class="nav__dropdown-menu">
                    <li><a href="#">T-shirt</a></li>
                    <li><a href="#">Hoodie &amp; Jackets</a></li>
                    <li><a href="#">Suits</a></li>
                    <li><a href="#">Shorts</a></li>
                  </ul>
                </li>

                <li class="nav__dropdown">
                  <a href="catalog.html">Women</a>
                  <ul class="nav__dropdown-menu">
                    <li><a href="#">Underwear</a></li>
                    <li><a href="#">Hipster</a></li>
                    <li><a href="#">Dress</a></li>
                    <li><a href="#">Hoodie &amp; Jackets</a></li>
                    <li><a href="#">Tees</a></li>
                  </ul>
                </li>

                <li class="nav__dropdown">
                  <a href="catalog.html">Accessories</a>
                  <ul class="nav__dropdown-menu nav__megamenu">
                    <li>
                      <div class="nav__megamenu-wrap">
                        <div class="row">

                          <div class="col nav__megamenu-item">
                            <a href="#" class="nav__megamenu-title">All accessories</a>
                            <ul class="nav__megamenu-list">
                              <li><a href="#">Wallets</a></li>
                              <li><a href="#">Scarfs</a></li>
                              <li><a href="#">Belts</a></li>
                              <li><a href="#">Shoes</a></li>
                            </ul>
                          </div>

                          <div class="col nav__megamenu-item">
                            <a href="#" class="nav__megamenu-title">for her</a>
                            <ul class="nav__megamenu-list">
                              <li><a href="#">Underwear</a></li>
                              <li><a href="#">Hipster</a></li>
                              <li><a href="#">Dress</a></li>
                              <li><a href="#">Hoodie &amp; Jackets</a></li>
                              <li><a href="#">Tees</a></li>
                            </ul>
                          </div>

                          <div class="col nav__megamenu-item">
                            <a href="#" class="nav__megamenu-title">for him</a>
                            <ul class="nav__megamenu-list">
                              <li><a href="#">T-shirt</a></li>
                              <li><a href="#">Hoodie &amp; Jackets</a></li>
                              <li><a href="#">Suits</a></li>
                              <li><a href="#">Shorts</a></li>
                            </ul>
                          </div>

                          <div class="col nav__megamenu-item">
                            <a href="#" class="nav__megamenu-title">watches</a>
                            <ul class="nav__megamenu-list">
                              <li><a href="#">Smart Watches</a></li>
                              <li><a href="#">Diving Watches</a></li>
                              <li><a href="#">Sport Watches</a></li>
                              <li><a href="#">Classic Watches</a></li>
                            </ul>
                          </div>

                          <div class="col nav__megamenu-item">
                            <a href="#"><img src="static/picture/megamenu_banner.png" alt=""></a>
                          </div>

                        </div>
                      </div>
                    </li>
                  </ul>
                </li>

                <li class="nav__dropdown">
                  <a href="#">News</a>
                  <ul class="nav__dropdown-menu">
                    <li><a href="blog-standard.html">Blog Standard</a></li>
                    <li><a href="blog-single.html">Single Post</a></li>
                  </ul>
                </li>
                
                <li class="nav__dropdown">
                  <a href="contact.html">Pages</a>
                  <ul class="nav__dropdown-menu">
                    <li><a href="catalog.html">Catalog</a></li>
                    <li><a href="single-product.html">Single Product</a></li>
                    <li><a href="">Cart</a></li>
                    <li><a href="checkout.html">Checkout</a></li>
                    <li><a href="about.html">About</a></li>
                    <li><a href="contact.html">Contact</a></li>
                    <li><a href="faq.html">FAQ</a></li>
                    <li><a href="404.html">404</a></li>
                  </ul>
                </li>

              </ul> <!-- end menu -->

            </nav> <!-- end nav-wrap -->


            <!-- Search -->
            <div class="flex-child nav__search d-none d-lg-block">
              <form method="get" class="nav__search-form">
                <input type="search" class="nav__search-input" placeholder="Search">
                <button type="submit" class="nav__search-submit">
                  <i class="ui-search"></i>
                </button>
              </form>
            </div>


            <!-- Mobile Wishlist -->
            <a href="#" class="nav__mobile-wishlist d-lg-none">
              <i class="ui-heart"></i>
            </a>

            <!-- Mobile Cart -->
            <a href="" class="nav__mobile-cart d-lg-none">
              <i class="ui-bag"></i>
              <span class="nav__mobile-cart-amount">(2)</span>
            </a>

            
         
        
          </div> <!-- end flex-parent -->
        </div> <!-- end container -->

      </div>
    </header> <!-- end navigation -->

    <!-- Page Title ------------------------------------------------------------ -->
    <section class="page-title text-center">
      <div class="container">
        <h1 class=" heading page-title__title">購物車</h1>
      </div>
    </section> <!-- end page title -->


    <!-- Cart -->
    <section class="section-wrap cart pt-50 pb-40">
      <div class="container relative">

        <form method='POST' action='CheckOutServlet?method=checkout' id='cartForm'>
        <div class="table-wrap">
          <table class="shop_table cart table">
            <thead>
              <tr>
                <th class="product-name" colspan="2">品項</th>
                <th class="product-price">定價</th>
                <th class="product-quantity">數量</th>
                <th class="product-subtotal" colspan="2">小計</th>
              </tr>
            </thead>
            <tbody id="cart_item_table">
            <% 
           		 List<CartItem> cartItemList = (List<CartItem>)session.getAttribute("cart");
            	    double sum = 0;
              		if(cartItemList == null || cartItemList.isEmpty()){ 
            %>	
        				<h3>購物車是空的!</h3>		
            <%  }else{ 
                    for(CartItem item:cartItemList){ 
                    	sum += item.getItemAmount(item);
            %>
              
              <tr class="cart_item">
                <td class="product-thumbnail">
                  <a href="#">
                    <img src="../../img/life4fun/<%= item.getPhotoUrl1()%>" alt="">
                  </a>
                </td>
                <td class="product-name">
                  <a href="#"><%= item.getProductName()%></a>
                  <ul>
                    <li>尺寸: <%= item.getProductSize()%></li>
                    <li>顏色: <%= item.getProductColor()%></li>
                  </ul>
                </td>
                <td class="product-price">
                  <span class="amount"><%= item.getPrice()%></span>
                </td>
                <td class="product-quantity">
                  <div class="quantity buttons_added">
                    <input type="button" value="-" class="minus">
                    <input type="number" step="1" min="0" value="1" title="Qty" class="input-text qty text">
                    <input type="button" value="+" class="plus">
                  </div>
                </td>
                <td class="product-subtotal">
                  <span class="amount"><%=item.getItemAmount(item)%></span>
                </td>
                <td class="product-remove">
                  <a href="#" class="remove" title="Remove this item">
                    <i class="ui-close"></i>
                  </a>
                </td>
              </tr>
			<% } 
			}%>
              
            </tbody>
          </table>
        </div>

        <div class="row mb-30">
          <div class="col-lg-5">
            
          </div>

          <div class="col-lg-7">
            <div class="actions">
              <button type="submit" id="btnBack" value="回商品列表" class="btn btn-md btn-dark btn-button" onclick='location.href="../../product/index.jsp"'>回商品列表</button>
              <button type="submit" id="btnUpdateCart" value="修改購物車" class="btn btn-md btn-dark btn-button">修改購物車</button>
              <div class="wc-proceed-to-checkout">
                <button type="submit" id="btnCheckout" value="去結帳" class="btn btn-md btn-color btn-button">去結帳</button>
              </div>
            </div>
          </div>
        </div>
        <div class="row justify-content-between">
		</form>


          <div class="col-lg-4">
            <div class="cart_totals">
              <h2 class="uppercase mb-20">購物車總計</h2>

              <table class="table shop_table">
                <tbody>
                
                  <tr class="cart-subtotal">
                    <th>購物車小計</th>
                    <td>
                      <span class="amount"><%= sum%></span>
                    </td>
                  </tr>
                  <tr class="shipping">
                    <th>運費</th>
                    <td>
                      <span>免運</span>
                    </td>
                  </tr>
                  <tr class="order-total">
                    <th>訂單總金額</th>
                    <td>
                      <strong><span class="amount"><%= sum%></span></strong>
                    </td>
                  </tr>
                </tbody>
              </table>

            </div>
          </div> <!-- end col cart totals -->

        </div> <!-- end row -->     

        
      </div> <!-- end container -->
    </section> <!-- end cart -->


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

  <!-- jQuery Scripts -->
  <script type="text/javascript" src="../../static/js/jquery.min.js"></script>
  <script type="text/javascript" src="../../static/js/bootstrap.min.js"></script>
  <script type="text/javascript" src="../../static/js/easing.min.js"></script>
  <script type="text/javascript" src="../../static/js/jquery.magnific-popup.min.js"></script>
  <script type="text/javascript" src="../../static/js/owl-carousel.min.js"></script>  
  <script type="text/javascript" src="../../static/js/flickity.pkgd.min.js"></script>
  <script type="text/javascript" src="../../static/js/modernizr.min.js"></script>
  <script type="text/javascript" src="../../static/js/scripts.js"></script>
    
    
</body>
</html>