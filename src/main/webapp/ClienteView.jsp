<%@ page language="java" contentType="text/html; charset=utf-8"
   pageEncoding="utf-8" %>
<!DOCTYPE html>
<!--[if lt IE 7 ]> 
<html class="ie ie6 no-js" lang="en">
   <![endif]-->
   <!--[if IE 7 ]>    
   <html class="ie ie7 no-js" lang="en">
      <![endif]-->
      <!--[if IE 8 ]>    
      <html class="ie ie8 no-js" lang="en">
         <![endif]-->
         <!--[if IE 9 ]>    
         <html class="ie ie9 no-js" lang="en">
            <![endif]-->
            <!--[if gt IE 9]><!-->
            <html class="no-js" lang="en">
               <!--<![endif]-->
               <head>
                  <meta charset="UTF-8">
                  <title>Master Chef</title>
                  <meta name="description" content="Onepage Multipurpose Bootstrap HTML Template">
                  <meta name="author" content="">
                  <meta name="viewport" content="width=device-width, initial-scale=1.0">
                  <link rel="stylesheet" type="text/css" media="screen" href="css/bootstrap.css">
                  <link rel="stylesheet" href="css/font-awesome.css">
                  <link rel="stylesheet" href="css/animate.css">
                  <link rel="stylesheet" href="css/theme.css">
                  <link href="css/bootstrap.css" rel="stylesheet" />
                  <link href="css/modal.css" rel="stylesheet" />
                  <link rel="stylesheet" href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
                  <script src="js/bootstrap.js" type="text/javascript"></script>
                  <script src="js/modal.js" type="text/javascript"></script>
                  <link href='https://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
                  <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
                  <link href='https://fonts.googleapis.com/css?family=Playball' rel='stylesheet' type='text/css'>
                  <link rel="stylesheet" href="css/theme.css" type="text/css"/>
				</head>
<body>
<!--wrapper start-->
                  <div class="wrapper" id="wrapper">
                     <!--header-->
                     <header>
                        <div class="banner row" id="banner">
                           <div class="parallax text-center" style="background-image: url(https://www.wowthemes.net/demo/leroy/img/dummy1.jpg);">
                              <div class="parallax-pattern-overlay">
                                 <div class="container text-center" style="height:600px;padding-top:170px;">
                                    <a href="#"><img id="site-title" class=" wow fadeInDown" wow-data-delay="0.0s" wow-data-duration="1.8s" src="img/logo2.png" alt="logo"/></a>
                                    <h2 class="intro wow zoomIn" wow-data-delay="0.4s" wow-data-duration="0.9s">Master Chef</h2>
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
                                                   <li class="menuItem"><a href="#aboutus">Sobre a casa</a></li>
                                                   <li class="menuItem"><a href="#specialties">Especialidades</a></li>
                                                   <!-- li class="menuItem"><a data-toggle="modal" href="javascript:void(0)" onclick="openLoginModal();">Login</a></li-->
                                                   <li class="menuItem"><a href="#contact">Contato</a></li>
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
                     <div class="modal fade login" id="loginModal">
                        <div class="modal-dialog login animated">
                           <div class="modal-content">
                              <div class="modal-header">
                                 <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                 <h4 class="modal-title">Entre!</h4>
                              </div>
                              <div class="modal-body">
                                 <div class="box">
                                    <div class="content">
                                       <div class="error"></div>
                                       <div class="form loginBox">
              							 <form method="post">
                                             <div class="input-with-icon success-control">  
                                                <input type="text" class="form-control" name="usuario" placeholder="Login"><br/>
                                             </div>
                                             <div class="input-with-icon success-control">  
                                                <input type="password" class="form-control" name="senha" placeholder="Senha"><br/>
                                             </div>
                                           <button name="operacao" value="entrar" class="btn btn-danger"><i class="fa fa-user"></i>Login</button>
                                             <!-- input type="hidden" name="command" value="login"/-->
                                          </form>
                                          <script type="text/javascript">
                                             function form_submit() {
                                               document.getElementById("entra").submit();
                                              }    
                                          </script>
                                       </div>
                                    </div>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
</body>
</html>