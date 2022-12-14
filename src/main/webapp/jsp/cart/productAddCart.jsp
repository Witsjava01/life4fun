<!DOCTYPE html>
<html lang="en">
<head>
  <title>Namira | Single Product</title>

  <meta charset="utf-8">
  <!--[if IE]><meta http-equiv='X-UA-Compatible' content='IE=edge,chrome=1'><![endif]-->
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">

  <!-- Google Fonts -->
  <link href='static/css/css.css' rel='stylesheet'>

  <!-- Css -->
  <link rel="stylesheet" href="static/css/bootstrap.min.css">
  <link rel="stylesheet" href="static/css/font-icons.css">
  <link rel="stylesheet" href="static/css/style.css">
  <link rel="stylesheet" href="static/css/color.css">

  <!-- Favicons -->
  
 <script>
 
	//新增進購物車使用ajax
	function addCart(){
		//console.log('action:' + $("#addCartForm").attr("action"));			
		//console.log('method:' + $("#addCartForm").attr("method"));
		//console.log('Form Data:' + $("#addCartForm").serialize());
		
		//改成非同步請求
		$.ajax({
			url: $("#addCartForm").attr("action")+"?ajax=",
			method: $("#addCartForm").attr("method"),
			data: $("#addCartForm").serialize()
		}).done(addCartDoneHandler);
		return false; //取消同步的submit請求
	}
	
	function addCartDoneHandler(result){
		console.log(result);
		alert("加入購物車成功，共" +result.totalQty+"件");
		$(".totalQtySpan").html(result.totalQty)
		//$("html").html(result);
	}
	
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
            <li><a href="" class="sidenav__menu-link">Single Product</a></li>
            <li><a href="cart.html" class="sidenav__menu-link">Cart</a></li>
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
                <a href="cart.html">
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
                    <li><a href="">Single Product</a></li>
                    <li><a href="cart.html">Cart</a></li>
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
            <a href="cart.html" class="nav__mobile-cart d-lg-none">
              <i class="ui-bag"></i>
              <span class="nav__mobile-cart-amount">(2)</span>
            </a>

            
         
        
          </div> <!-- end flex-parent -->
        </div> <!-- end container -->

      </div>
    </header> <!-- end navigation -->

    <!-- Single Product -->
    <section class="section-wrap pb-20 product-single">
      <div class="container">

        <!-- Breadcrumbs -->
        <ol class="breadcrumbs">
          <li>
            <a href="index.html">Home</a>
          </li>
          <li>
            <a href="index.html">Women</a>
          </li>
          <li class="active">
            Casual Jacket
          </li>
        </ol>

        <div class="row">

          <div class="col-md-6 product-slider mb-50">

            <div class="flickity flickity-slider-wrap mfp-hover" id="gallery-main">

              <div class="gallery-cell">
                <a href="static/picture/item_lg_1.jpg" class="lightbox-img">
                  <img src="static/picture/item_lg_1.jpg" alt="">
                </a>
              </div>
              <div class="gallery-cell">
                <a href="static/picture/item_lg_2.jpg" class="lightbox-img">
                  <img src="static/picture/item_lg_2.jpg" alt="">
                </a>
              </div>
              <div class="gallery-cell">
                <a href="static/picture/item_lg_3.jpg" class="lightbox-img">
                  <img src="static/picture/item_lg_3.jpg" alt="">
                </a>
              </div>
              <div class="gallery-cell">
                <a href="static/picture/item_lg_4.jpg" class="lightbox-img">
                  <img src="static/picture/item_lg_4.jpg" alt="">
                </a>
              </div>
              <div class="gallery-cell">
                <a href="static/picture/item_lg_5.jpg" class="lightbox-img">
                  <img src="static/picture/item_lg_5.jpg" alt="">
                </a>
              </div>
            </div> <!-- end gallery main -->

            <div class="gallery-thumbs" id="gallery-thumbs">
              <div class="gallery-cell">
                <img src="static/picture/item_thumb_1.jpg" alt="">
              </div>
              <div class="gallery-cell">
                <img src="static/picture/item_thumb_2.jpg" alt="">
              </div>
              <div class="gallery-cell">
                <img src="static/picture/item_thumb_3.jpg" alt="">
              </div>
              <div class="gallery-cell">
                <img src="static/picture/item_thumb_4.jpg" alt="">
              </div>
              <div class="gallery-cell">
                <img src="static/picture/item_thumb_5.jpg" alt="">
              </div>
            </div> <!-- end gallery thumbs -->

          </div> <!-- end col img slider -->

          <div class="col-md-6 product-single">
            <h1 class="product-single__title uppercase">Casual jacket</h1>

            <div class="rating">
              <a href="#">3 Reviews</a>
            </div>

            <span class="product-single__price">
              <ins>
                <span class="amount">$17.99</span>
              </ins>
              <del>
                <span>$30.00</span>
              </del>
            </span>            

            <div class="colors clearfix">
              <span class="colors__label">Color: <span class="colors__label-selected">Fadaed Blue</span></span>
              <a href="#" class="colors__item colors__item--selected blue"></a>
              <a href="#" class="colors__item black"></a>
              <a href="#" class="colors__item pink"></a>
            </div>

            <div class="size-quantity clearfix">
              <div class="size">
                <label>Size</label>
                <select name="size" id="size__select" class="size__select">
                  <option value="xs">XS</option>
                  <option value="s">S</option>
                  <option value="m">M</option>
                  <option value="l">L</option>
                  <option value="xl">XL</option>
                </select>
              </div>
              
              <div class="quantity">
                <label>Quantity</label>                 
                <select name="quantity" id="quantity__select" class="quantity__select">
                  <option value="1">1</option>
                  <option value="2">2</option>
                  <option value="3">3</option>
                  <option value="4">4</option>
                  <option value="5">5</option>
                </select>
              </div>
            </div>            

            <div class="row row-10 product-single__actions clearfix">
              <div class="col">
                <a href="#" class="btn btn-lg btn-color product-single__add-to-cart">
                  <i class="ui-bag"></i>
                  <span>Add to Cart</span>
                </a>
              </div>
              <div class="col">
                <a href="#" class="btn btn-lg btn-dark product-single__add-to-wishlist">
                  <i class="ui-heart"></i>
                  <span>Wishlist</span>
                </a>
              </div>
            </div>            

            <div class="product_meta">
              <ul>
                <li>
                  <span class="product-code">Product Code: <span>111763</span></span>
                </li>
                <li>
                  <span class="product-material">Material: <span>Cotton 100%</span></span>
                </li>
                <li>
                  <span class="product-country">Country: <span>Made in Canada</span></span>
                </li>
              </ul>                              
            </div>

            <!-- Accordion -->
            <div class="accordion mb-50" id="accordion">
              <div class="accordion__panel">
                <div class="accordion__heading" id="headingOne">
                  <a data-toggle="collapse" href="#collapseOne" class="accordion__link accordion--is-open" aria-expanded="true" aria-controls="collapseOne">Description<span class="accordion__toggle">&nbsp;</span>
                  </a>
                </div>
                <div id="collapseOne" class="collapse show" data-parent="#accordion" role="tabpanel" aria-labelledby="headingOne">
                  <div class="accordion__body">
                    Namira is a very slick and clean e-commerce template with endless possibilities. Creating an awesome clothes store with this Theme is easy than you can imagine.
                  </div>
                </div>
              </div>

              <div class="accordion__panel">
                <div class="accordion__heading" id="headingTwo">
                  <a data-toggle="collapse" href="#collapseTwo" class="accordion__link accordion--is-closed" aria-expanded="false" aria-controls="collapseTwo">Information<span class="accordion__toggle">&nbsp;</span>
                  </a>
                </div>
                <div id="collapseTwo" class="collapse" data-parent="#accordion" role="tabpanel" aria-labelledby="headingTwo">
                  <div class="accordion__body">
                    <table class="table shop_attributes">
                      <tbody>
                        <tr>
                          <th>Size:</th>
                          <td>EU 41 (US 8), EU 42 (US 9), EU 43 (US 10), EU 45 (US 12)</td>
                        </tr>
                        <tr>
                          <th>Colors:</th>
                          <td>Violet, Black, Blue</td>
                        </tr>
                        <tr>
                          <th>Fabric:</th>
                          <td>Cotton (100%)</td>
                        </tr>                                     
                      </tbody>
                    </table>
                  </div>
                </div>
              </div>

              <div class="accordion__panel">
                <div class="accordion__heading" id="headingThree">
                  <a data-toggle="collapse" href="#collapseThree" class="accordion__link accordion--is-closed" aria-expanded="false" aria-controls="collapseThree">Reviews<span class="accordion__toggle">&nbsp;</span>
                  </a>
                </div>
                <div id="collapseThree" class="collapse" data-parent="#accordion" role="tabpanel" aria-labelledby="headingThree">
                  <div class="accordion__body">
                    <div class="reviews">
                      <ul class="reviews__list">
                        <li class="reviews__list-item">
                          <div class="reviews__body">
                            <div class="reviews__content">
                              <p class="reviews__author"><strong>Alexander Samokhin</strong> - May 6, 2017 at 12:48 pm</p>
                              <div class="rating">
                                <a href="#"></a>
                              </div>
                              <p>This template is so awesome. I didnât expect so many features inside. E-commerce pages are very useful, you can launch your online store in few seconds. I will rate 5 stars.</p>
                            </div>
                          </div>
                        </li>

                        <li class="reviews__list-item">
                          <div class="reviews__body">
                            <div class="reviews__content">
                              <p class="reviews__author"><strong>Christopher Robins</strong> - May 7, 2014 at 12:48 pm</p>
                              <div class="rating">
                                <a href="#"></a>
                              </div>
                              <p>This template is so awesome. I didnât expect so many features inside. E-commerce pages are very useful, you can launch your online store in few seconds. I will rate 5 stars.</p>
                            </div>
                          </div>
                        </li>

                      </ul>         
                    </div> <!--  end reviews -->
                  </div>
                </div>
              </div>
            </div> <!-- end accordion -->

          </div> <!-- end col product description -->
        </div> <!-- end row -->
       
      </div> <!-- end container -->
    </section> <!-- end single product -->


    <!-- Related Products -->
    <section class="section-wrap pt-0 pb-40">
      <div class="container">

        <div class="heading-row">
          <div class="text-center">
            <h2 class="heading bottom-line">
              Shop the look
            </h2>
          </div>
        </div>

        <div class="row row-8">

          <div class="col-lg-2 col-sm-4 product">
            <div class="product__img-holder">
              <a href="" class="product__link">
                <img src="static/picture/product_1.jpg" alt="" class="product__img">
                <img src="static/picture/product_back_1.jpg" alt="" class="product__img-back">
              </a>
              <div class="product__actions">
                <a href="quickview.html" class="product__quickview">
                  <i class="ui-eye"></i>
                  <span>Quick View</span>
                </a>
                <a href="#" class="product__add-to-wishlist">
                  <i class="ui-heart"></i>
                  <span>Wishlist</span>
                </a>
              </div>
            </div>

            <div class="product__details">
              <h3 class="product__title">
                <a href="">Joeby Tailored Trouser</a>
              </h3>
            </div>

            <span class="product__price">
              <ins>
                <span class="amount">$17.99</span>
              </ins>
            </span>
          </div> <!-- end product -->

          <div class="col-lg-2 col-sm-4 product">
            <div class="product__img-holder">
              <a href="" class="product__link">
                <img src="static/picture/product_9.jpg" alt="" class="product__img">
                <img src="static/picture/product_back_9.jpg" alt="" class="product__img-back">
              </a>
              <div class="product__actions">
                <a href="quickview.html" class="product__quickview">
                  <i class="ui-eye"></i>
                  <span>Quick View</span>
                </a>
                <a href="#" class="product__add-to-wishlist">
                  <i class="ui-heart"></i>
                  <span>Wishlist</span>
                </a>
              </div>
            </div>

            <div class="product__details">
              <h3 class="product__title">
                <a href="">Menâs Belt</a>
              </h3>
            </div>

            <span class="product__price">
              <ins>
                <span class="amount">$9.90</span>
              </ins>
            </span>
          </div> <!-- end product -->

          <div class="col-lg-2 col-sm-4 product">
            <div class="product__img-holder">
              <a href="" class="product__link">
                <img src="static/picture/product_10.jpg" alt="" class="product__img">
                <img src="static/picture/product_back_10.jpg" alt="" class="product__img-back">
              </a>
              <div class="product__actions">
                <a href="quickview.html" class="product__quickview">
                  <i class="ui-eye"></i>
                  <span>Quick View</span>
                </a>
                <a href="#" class="product__add-to-wishlist">
                  <i class="ui-heart"></i>
                  <span>Wishlist</span>
                </a>
              </div>
            </div>

            <div class="product__details">
              <h3 class="product__title">
                <a href="">Sport Hi Adidas</a>
              </h3>
            </div>

            <span class="product__price">
              <ins>
                <span class="amount">$29.00</span>
              </ins>
            </span>
          </div> <!-- end product -->

          <div class="col-lg-2 col-sm-4 product">
            <div class="product__img-holder">
              <a href="" class="product__link">
                <img src="static/picture/product_2.jpg" alt="" class="product__img">
                <img src="static/picture/product_back_2.jpg" alt="" class="product__img-back">
              </a>
              <div class="product__actions">
                <a href="quickview.html" class="product__quickview">
                  <i class="ui-eye"></i>
                  <span>Quick View</span>
                </a>
                <a href="#" class="product__add-to-wishlist">
                  <i class="ui-heart"></i>
                  <span>Wishlist</span>
                </a>
              </div>
            </div>

            <div class="product__details">
              <h3 class="product__title">
                <a href="">Denim Hooded</a>
              </h3>
            </div>

            <span class="product__price">
              <ins>
                <span class="amount">$30.00</span>
              </ins>
            </span>
          </div> <!-- end product -->

          <div class="col-lg-2 col-sm-4 product">
            <div class="product__img-holder">
              <a href="" class="product__link">
                <img src="static/picture/product_3.jpg" alt="" class="product__img">
                <img src="static/picture/product_back_3.jpg" alt="" class="product__img-back">
              </a>
              <div class="product__actions">
                <a href="quickview.html" class="product__quickview">
                  <i class="ui-eye"></i>
                  <span>Quick View</span>
                </a>
                <a href="#" class="product__add-to-wishlist">
                  <i class="ui-heart"></i>
                  <span>Wishlist</span>
                </a>
              </div>
            </div>

            <div class="product__details">
              <h3 class="product__title">
                <a href="">Mint Maxi Dress</a>
              </h3>
            </div>

            <span class="product__price">
              <ins>
                <span class="amount">$17.99</span>
              </ins>
              <del>
                <span>$30.00</span>
              </del>
            </span>
          </div> <!-- end product -->

          <div class="col-lg-2 col-sm-4 product">
            <div class="product__img-holder">
              <a href="" class="product__link">
                <img src="static/picture/product_4.jpg" alt="" class="product__img">
                <img src="static/picture/product_back_4.jpg" alt="" class="product__img-back">
              </a>
              <div class="product__actions">
                <a href="quickview.html" class="product__quickview">
                  <i class="ui-eye"></i>
                  <span>Quick View</span>
                </a>
                <a href="#" class="product__add-to-wishlist">
                  <i class="ui-heart"></i>
                  <span>Wishlist</span>
                </a>
              </div>
            </div>

            <div class="product__details">
              <h3 class="product__title">
                <a href="">White Flounce Dress</a>
              </h3>
            </div>

            <span class="product__price">
              <ins>
                <span class="amount">$15.99</span>
              </ins>
              <del>
                <span>$27.00</span>
              </del>
            </span>
          </div> <!-- end product -->
    
        </div> <!-- end row -->
      </div> <!-- end container -->
    </section> <!-- end related products -->

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
  <script type="text/javascript" src="static/js/jquery.min.js"></script>
  <script type="text/javascript" src="static/js/bootstrap.min.js"></script>
  <script type="text/javascript" src="static/js/easing.min.js"></script>
  <script type="text/javascript" src="static/js/jquery.magnific-popup.min.js"></script>
  <script type="text/javascript" src="static/js/owl-carousel.min.js"></script>  
  <script type="text/javascript" src="static/js/flickity.pkgd.min.js"></script>
  <script type="text/javascript" src="static/js/modernizr.min.js"></script>
  <script type="text/javascript" src="static/js/scripts.js"></script>

<script>

function addCart(){
	//console.log('action:' + $("#addCartForm").attr("action"));			
	//console.log('method:' + $("#addCartForm").attr("method"));
	//console.log('Form Data:' + $("#addCartForm").serialize());
	
	//改成非同步請求
	$.ajax({
		url: $("#addCartForm").attr("action")+"?ajax=",
		method: $("#addCartForm").attr("method"),
		data: $("#addCartForm").serialize()
	}).done(addCartDoneHandler);
	return false; //取消同步的submit請求
}

function addCartDoneHandler(result){
	console.log(result);
	alert("加入購物車成功，共" +result.totalQty+"件");
	$(".totalQtySpan").html(result.totalQty)
	//$("html").html(result);
}
</script>


</body>
</html>