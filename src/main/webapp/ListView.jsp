<%@ page language="java" contentType="text/html; charset=utf-8"
   pageEncoding="utf-8" %>
    <%@page import="database.Cliente"%>
<%@page import="java.util.List"%>
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
                                 <div class="container text-center" style="height:400px;padding-top:100px;">
                                    <a href="#"><img id="site-title" class=" wow fadeInDown" wow-data-delay="0.0s" wow-data-duration="1.8s" src="img/logo2.png" alt="logo"/></a>
                                    <h2 class="intro wow zoomIn" wow-data-delay="0.4s" wow-data-duration="0.9s">Master Chef</h2>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </header>
  
  <div class="container">
  <h2>Listagem de usuários</h2>
</div> 
  <form>
  <div class="container">
  <table class="table table-striped">
    <thead>
      <tr>
        <th>Nome</th>
        <td>Email</td>
        <td>Usuário</td>
        <td>Senha</td>      
      </tr>
    </thead>
    <tbody>
	  <%
      //Obtém a lista de alunos criada pelo controlador.
  	List<Cliente> clientes =
      (List<Cliente>) request.getAttribute("clientes");

    if (clientes != null && !clientes.isEmpty()) {
      for (Cliente c : clientes) {
    %>
    <tr>
      <td><%=c.getNome()%></td>
      <td><%=c.getEmail()%></td>
      <td><%=c.getUsuario()%></td>
      <td><%=c.getSenha()%></td>
    </tr>
    <%
      }
    }
    %>
   
 
    </tbody>
  </table>
</div>
</form>   
</body>

</html>