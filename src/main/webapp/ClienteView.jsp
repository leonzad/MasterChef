<!DOCTYPE html>
<%@page import="database.Cliente"%>
<%@page import="java.util.List"%>
<!--[if lt IE 7 ]> <html class="ie ie6 no-js" lang="en"> <![endif]-->
<!--[if IE 7 ]>    <html class="ie ie7 no-js" lang="en"> <![endif]-->
<!--[if IE 8 ]>    <html class="ie ie8 no-js" lang="en"> <![endif]-->
<!--[if IE 9 ]>    <html class="ie ie9 no-js" lang="en"> <![endif]-->
<!--[if gt IE 9]><!-->
<html class="no-js" lang="en">
<!--<![endif]-->
<head>

<meta charset="UTF-8" />

<title>Master Chef</title>

<meta name="description"
	content="Onepage Multipurpose Bootstrap HTML Template">

<meta name="author" content="">

<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel="stylesheet" type="text/css" media="screen"
	href="css/bootstrap.css">
<link rel="stylesheet" href="css/font-awesome.css">
<link rel="stylesheet" href="css/animate.css">
<link rel="stylesheet" href="css/theme.css">
<link href="css/bootstrap.css" rel="stylesheet" />
<link href="css/modal.css" rel="stylesheet" />
<link rel="stylesheet"
	href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
<script src="js/bootstrap.js" type="text/javascript"></script>
<script src="js/modal.js" type="text/javascript"></script>
<link href='https://fonts.googleapis.com/css?family=Montserrat:400,700'
	rel='stylesheet' type='text/css'>
<link
	href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic'
	rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Playball'
	rel='stylesheet' type='text/css'>


<style>
.btn {
	padding: 14px 24px;
	border: 0 none;
	font-weight: 700;
	letter-spacing: 1px;
	text-transform: uppercase;
}

.btn:focus, .btn:active:focus, .btn.active:focus {
	outline: 0 none;
}

.btn-primary {
	color: #ffffff;
	background-color: #755C11;
	border-color: #594713;
}

.btn-primary:hover, .btn-primary:focus, .btn-primary:active,
	.btn-primary.active, .open>.dropdown-toggle.btn-primary {
	color: #ffffff;
	background-color: #594713;
	border-color: #594713;
}

.btn-primary:active, .btn-primary.active {
	background: #007299;
	box-shadow: none;
}

.btn.sharp {
	border-radius: 0;
}
</style>


</head>
<body>
	<!--wrapper start-->
	<div class="wrapper" id="wrapper">

		<!--header-->
		<header>
			<div class="banner row" id="banner">
				<div class="parallax text-center"
					style="background-image: url(http://wowthemes.net/demo/leroy/img/dummy1.jpg);">
					<div class="parallax-pattern-overlay">
						<div class="container text-center"
							style="height: 600px; padding-top: 170px;">
							<a href="#"><img id="site-title" class=" wow fadeInDown"
								wow-data-delay="0.0s" wow-data-duration="0.9s"
								src="img/logo2.png" alt="logo" /></a>
							<h2 class="intro wow zoomIn" wow-data-delay="0.4s"
								wow-data-duration="0.9s">Master Chef</h2>
						</div>
					</div>
				</div>
			</div>
			<div class="menu">
				<div class="navbar-wrapper">
					<div class="container">
						<div class="navwrapper">
							<div class="navbar navbar-inverse navbar-static-top">
								<div class="container">
									<div class="navArea">
										<div class="navbar-collapse collapse">
											<ul class="nav navbar-nav">
												<li class="menuItem active"><a href="#wrapper">Home</a></li>
												<li class="menuItem"><a href="#gallery">Nossas Delícias</a></li>
												<li class="menuItem"><a href="logout">Logout</a></li>
											</ul>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</header>
		<div class="modal fade login" id="sairModal">
			<div class="modal-dialog login animated">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">&times;</button>
						<h4 class="modal-title">Você realmente quer sair? :/</h4>
					</div>
					<div class="modal-body">
						<div class="box">
							<div class="content">
								<div class="error"></div>
								<div class="form loginBox">
									<form name='sair' id="sair" method="post">
										<button value='Log out in'
											class="btn btn-danger">Sair</button>
										<input type="hidden" name="command" value="logout" />
										<button class="btn btn-success " data-dismiss="modal">Ficar
											:)</button>
									</form>
									<!--  script type="text/javascript">
                                             function form_submit() {
                                               document.getElementById("sair").submit();
                                              }    
                                          </script-->
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--gallery-->
		<form method="get">
			<section class="gallery" id="gallery">
				<div class="container">
					<div class="heading text-center">
						<img class="dividerline" src="img/sep.png" alt="">
						<h2>Menu</h2>
						<img class="dividerline" src="img/sep.png" alt="">
					</div>
					<div id="grid-gallery" class="grid-gallery">
						<section class="grid-wrap">
							<ul class="grid">
								<li class="grid-sizer"></li>
								<!-- for Masonry column width -->
								<li>
									<figure>
										<img src="http://wowthemes.net/demo/leroy/img/dummies/10.jpg"
											alt="" />
										<figcaption>
											<h3>Pão recheado com vinho tinto</h3>
											<p>Uma leve entrada com um pão caseiro levemente
												adocicado, acompanhado de uma taça de vinho tinto.</p>
										</figcaption>
									</figure>
								</li>
								<li>
									<figure>
										<img src="http://wowthemes.net/demo/leroy/img/dummies/11.jpg"
											alt="" />
										<figcaption>
											<h3>Bushwick selvage synth</h3>
											<p>Bicycle rights flannel Shoreditch, art party laboris
												Bushwick sriracha.</p>
										</figcaption>
									</figure>
								</li>
								<li>
									<figure>
										<img src="http://wowthemes.net/demo/leroy/img/dummies/12.jpg"
											alt="" />
										<figcaption>
											<h3>Bottle wayfarers locavore</h3>
											<p>Once there was a little asparagus, he was green and
												lonely.</p>
										</figcaption>
									</figure>
								</li>
								<li>
									<figure>
										<img src="http://wowthemes.net/demo/leroy/img/dummies/13.jpg"
											alt="" />
										<figcaption>
											<h3>Letterpress asymmetrical</h3>
											<p>Chillwave hoodie ea gentrify aute sriracha consequat.</p>
										</figcaption>
									</figure>
								</li>
								<li>
									<figure>
										<img src="http://wowthemes.net/demo/leroy/img/dummies/14.jpg"
											alt="" />
										<figcaption>
											<h3>Vice velit chia</h3>
											<p>Laborum tattooed iPhone, Schlitz irure nulla Tonx
												retro 90's chia cardigan quis before they sold out.</p>
										</figcaption>
									</figure>
								</li>
								<li>
									<figure>
										<img src="http://wowthemes.net/demo/leroy/img/dummies/15.jpg"
											alt="" />
										<figcaption>
											<h3>Brunch semiotics</h3>
											<p>Ex disrupt cray yr, butcher pour-over magna umami
												kitsch before they sold out commodo.</p>
										</figcaption>
									</figure>
								</li>
								<li>
									<figure>
										<img src="http://wowthemes.net/demo/leroy/img/dummies/16.jpg"
											alt="" />
										<figcaption>
											<h3>Brunch semiotics</h3>
											<p>Ex disrupt cray yr, butcher pour-over magna umami
												kitsch before they sold out commodo.</p>
										</figcaption>
									</figure>
								</li>
								<li>
									<figure>
										<img src="http://wowthemes.net/demo/leroy/img/dummies/17.jpg"
											alt="" />
										<figcaption>
											<h3>Brunch semiotics</h3>
											<p>Ex disrupt cray yr, butcher pour-over magna umami
												kitsch before they sold out commodo.</p>
										</figcaption>
									</figure>
								</li>
								<li>
									<figure>
										<img src="http://wowthemes.net/demo/leroy/img/dummies/17.jpg"
											alt="" />
										<figcaption>
											<h3>Brunch semiotics</h3>
											<p>Ex disrupt cray yr, butcher pour-over magna umami
												kitsch before they sold out commodo.</p>
										</figcaption>
									</figure>
								</li>
							</ul>
						</section>
						<!-- // end small images -->
						<section class="slideshow">
							<ul>
								<li>
									<figure>
										<img src="http://wowthemes.net/demo/leroy/img/dummies/10.jpg"
											alt="" />
										<figcaption>
											<h3>Thundercats next level</h3>
											<p>Portland nulla butcher ea XOXO, consequat Bushwick
												Pinterest elit twee pickled direct trade vero.</p>
											<div class="checkbox">
												<label style="font-size: 2.5em"> <input name="operacao"
													type="checkbox" value="pedido" id="1" unchecked> <span
													class="cr"><i class="cr-icon fa fa-check"></i></span> Quero
													esse!
												</label>
											</div>
										</figcaption>
									</figure>
								</li>
								<li>
									<figure>
										<img src="http://wowthemes.net/demo/leroy/img/dummies/11.jpg"
											alt="" />
										<figcaption>
											<h3>Bushwick selvage synth</h3>
											<p>Bicycle rights flannel Shoreditch, art party.</p>
											<div class="checkbox">
												<label style="font-size: 2.5em"> <input name="2"
													type="checkbox" value="on" unchecked> <span
													class="cr"><i class="cr-icon fa fa-check"></i></span> Quero
													esse!
												</label>
											</div>
										</figcaption>
									</figure>
								</li>
								<li>
									<figure>
										<img src="http://wowthemes.net/demo/leroy/img/dummies/12.jpg"
											alt="" />
										<figcaption>
											<h3>Bottle wayfarers locavore</h3>
											<p>Once there was a little asparagus, he was green and
												lonely.</p>
											<div class="checkbox">
												<label style="font-size: 2.5em"> <input name="3"
													type="checkbox" value="on" unchecked> <span
													class="cr"><i class="cr-icon fa fa-check"></i></span> Quero
													esse!
												</label>
											</div>
										</figcaption>
									</figure>
								</li>
								<li>
									<figure>
										<img src="http://wowthemes.net/demo/leroy/img/dummies/13.jpg"
											alt="" />
										<figcaption>
											<h3>Teste Walison</h3>
											<p>Chillwave hoodie ea gentrify aute sriracha consequat.</p>
											<div class="checkbox">
												<label style="font-size: 2.5em"> <input name="4"
													type="checkbox" value="on" unchecked> <span
													class="cr"><i class="cr-icon fa fa-check"></i></span> Quero
													esse!
												</label>
											</div>
										</figcaption>
									</figure>
								</li>
								<li>
									<figure>
										<img src="http://wowthemes.net/demo/leroy/img/dummies/14.jpg"
											alt="" />
										<figcaption>
											<h3>Vice velit chia</h3>
											<p>Laborum tattooed iPhone, Schlitz irure nulla Tonx
												retro 90's chia cardigan quis asymmetrical paleo.</p>
											<div class="checkbox">
												<label style="font-size: 2.5em"> <input name="5"
													type="checkbox" value="on" unchecked> <span
													class="cr"><i class="cr-icon fa fa-check"></i></span> Quero
													esse!
												</label>
											</div>
										</figcaption>
									</figure>
								</li>
								<li>
									<figure>
										<img src="http://wowthemes.net/demo/leroy/img/dummies/15.jpg"
											alt="" />
										<figcaption>
											<h3>Brunch Gatótico</h3>
											<p>Ex disrupt cray yr, butcher pour-over magna umami
												kitsch before they sold out commodo.</p>
											<div class="checkbox">
												<label style="font-size: 2.5em"> <input name="6"
													type="checkbox" value="on" unchecked> <span
													class="cr"><i class="cr-icon fa fa-check"></i></span> Quero
													esse!
												</label>
											</div>
										</figcaption>
									</figure>
								</li>
								<li>
									<figure>
										<img src="http://wowthemes.net/demo/leroy/img/dummies/16.jpg"
											alt="" />
										<figcaption>
											<h3>Brunch Catético</h3>
											<p>Ex disrupt cray yr, butcher pour-over magna umami
												kitsch before they sold out commodo.</p>
											<div class="checkbox">
												<label style="font-size: 2.5em"> <input name="7"
													type="checkbox" value="on" unchecked> <span
													class="cr"><i class="cr-icon fa fa-check"></i></span> Quero
													esse!
												</label>
											</div>
										</figcaption>
									</figure>
								</li>
								<li>
									<figure>
										<img src="http://wowthemes.net/demo/leroy/img/dummies/17.jpg"
											alt="" />
										<figcaption>
											<h3>Brunch Infamous</h3>
											<p>Ex disrupt cray yr, butcher pour-over magna umami
												kitsch before they sold out commodo.</p>
											<div class="checkbox">
												<label style="font-size: 2.5em"> <input name="8"
													type="checkbox" value="on" unchecked> <span
													class="cr"><i class="cr-icon fa fa-check"></i></span> Quero
													esse!
												</label>
											</div>
										</figcaption>
									</figure>
								</li>
							</ul>
							<nav>
								<span class="icon nav-prev"></span> <span class="icon nav-next"></span>
								<span class="icon nav-close"></span>
							</nav>
							<div class="info-keys icon">Navigate with arrow keys</div>
						</section>
						<!-- // end slideshow -->
					</div>
					<!-- // grid-gallery -->
				</div>
				<!--  form class="form-horizontal">
					<fieldset></fieldset>
				</form-->
				<div class="span7 text-center">				
					<button "name="operacao" value="pedido"
						class="btn btn-danger ">
						<i class="fa fa-user"></i>Enviar pedido
					</button>				
					<!-- input type="hidden" name="command" value="create" /> <input
						type="hidden" name="table" value="2" / -->
				</div>
				<!--script type="text/javascript">
                        function form_submit() {
                          document.getElementById("envia").submit();
                         }    
                     </script-->
			</section>
		</form>
		<div class="modal fade login" id="sairModal">
			<div class="modal-dialog login animated">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">&times;</button>
						<h4 class="modal-title">Você realmente quer sair? :/</h4>
					</div>
					<div class="modal-body">
						<div class="box">
							<div class="content">
								<div class="error"></div>
								<div class="form loginBox">
									<form method="get">
										<div class="btn-group">
											<button class="btn btn-danger">Sair</button>
											<input type="hidden" name="command" value="logout" />
											<button class="btn btn-success " data-dismiss="modal">Ficar
												:)</button>
									</form>
									<script type="text/javascript">
                                             function form_submit() {
                                               document.getElementById("sair").submit();
                                              }    
                                          </script>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--footer-->
	<section class="footer" id="footer">
		<p class="text-center">
			<a href="#wrapper" class="gototop"><i
				class="fa fa-angle-double-up fa-2x"></i></a>
		</p>
		<div class="container">
			<ul>
				<li><a href="http://twitter.com/caionaweb"><i
						class="fa fa-twitter"></i></a></li>
				<li><a href="http://fb.com/caionaweb"><i
						class="fa fa-facebook"></i></a></li>
			</ul>
		</div>
	</section>
	</div>
	<!--wrapper end-->
	<!--Javascripts-->
	<script src="js/jquery.js"></script>
	<script src="js/modernizr.js"></script>
	<script src="js/bootstrap.js"></script>
	<script src="js/menustick.js"></script>
	<script src="js/parallax.js"></script>
	<script src="js/easing.js"></script>
	<script src="js/wow.js"></script>
	<script src="js/smoothscroll.js"></script>
	<script src="js/masonry.js"></script>
	<script src="js/imgloaded.js"></script>
	<script src="js/classie.js"></script>
	<script src="js/colorfinder.js"></script>
	<script src="js/gridscroll.js"></script>
	<script src="js/contact.js"></script>
	<script src="js/common.js"></script>
	<script src="js/bootstrap.js" type="text/javascript"></script>
	<script src="js/modal.js" type="text/javascript"></script>
	<script type="text/javascript">
                     jQuery(function($) {
                     $(document).ready( function() {
                       //enabling stickUp on the '.navbar-wrapper' class
                     	$('.navbar-wrapper').stickUp({
                     		parts: {
                     		  0: 'banner',
                     		  1: 'gallery',
                     		  2: 'sair'
                     		},
                     		itemClass: 'menuItem',
                     		itemHover: 'active',
                     		topMargin: 'auto'
                     		});
                     	});
                     });
                  </script>
</body>
</html>
