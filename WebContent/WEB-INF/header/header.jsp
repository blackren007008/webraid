<!DOCTYPE html>  
<%@ page language="java" import="java.util.*" contentType="text/html;charset=UTF-8"%>
 <!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->

<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->

<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->

<!-- BEGIN HEAD -->

<head>

	<meta charset="utf-8" />

	<title>Metronic | Layouts - Horzontal Menu 1</title>

	<meta content="width=device-width, initial-scale=1.0" name="viewport" />

	<meta content="" name="description" />

	<meta content="" name="author" />

	<!-- BEGIN GLOBAL MANDATORY STYLES -->

	<link href="media/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>

	<link href="media/css/bootstrap-responsive.min.css" rel="stylesheet" type="text/css"/>

	<link href="media/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>

	<link href="media/css/style-metro.css" rel="stylesheet" type="text/css"/>

	<link href="media/css/style.css" rel="stylesheet" type="text/css"/>

	<link href="media/css/style-responsive.css" rel="stylesheet" type="text/css"/>

	<link href="media/css/default.css" rel="stylesheet" type="text/css" id="style_color"/>

	<link href="media/css/uniform.default.css" rel="stylesheet" type="text/css"/>

	<!-- END GLOBAL MANDATORY STYLES -->

	<link rel="shortcut icon" href="media/image/favicon.ico" />

</head>

<!-- END HEAD -->

<!-- BEGIN BODY -->

<body class="page-header-fixed page-full-width">

	<!-- BEGIN HEADER -->

	<div class="header navbar navbar-inverse navbar-fixed-top">

		<!-- BEGIN TOP NAVIGATION BAR -->

		<div class="navbar-inner">

			<div class="container-fluid">

				<!-- BEGIN LOGO -->

				<a class="brand" href="index.html">

				<img src="media/image/logo.png" alt="logo" />

				</a>

				<!-- END LOGO -->

				<!-- BEGIN HORIZANTAL MENU -->

				<div class="navbar hor-menu hidden-phone hidden-tablet">

					<div class="navbar-inner">

						<ul class="nav">
							<li>

								<a href="index.html">

								系统监控

								</a>

							</li>

							<li  class="active">

								<a data-toggle="dropdown" class="dropdown-toggle" href="javascript:;">

								<span class="selected"></span>

								系统管理

								<span class="arrow"></span>     

								</a>

								<ul class="dropdown-menu">

									<li >

										<a href="layout_horizontal_sidebar_menu.html">

										系统信息                     </a>

									</li>

									<li class="active">

										<a href="layout_horizontal_menu1.html">

										邮件配置                    </a>

									</li>

									<li >

										<a href="layout_horizontal_menu2.html">

										用户管理                   </a>

									</li>
								</ul>

								<b class="caret-out"></b>                        

							</li>

							<li>

								<a href="">存储管理</a>

							</li>

							<li>

								<a data-toggle="dropdown" class="dropdown-toggle" href="">告警信息

								<span class="arrow"></span>

								</a>

								<!--ul class="dropdown-menu">

									<li><a href="index.html">About Us</a></li>

									<li><a href="index.html">Services</a></li>

									<li><a href="index.html">Pricing</a></li>

									<li><a href="index.html">FAQs</a></li>

									<li><a href="index.html">Gallery</a></li>

									<li><a href="index.html">Registration</a></li>

									<li><a href="index.html">2 Columns (Left)</a></li>

									<li><a href="index.html">2 Columns (Right)</a></li>

								</ul-->

								<b class="caret-out"></b>                        

							</li>
						</ul>

					</div>

				</div>

				<!-- END HORIZANTAL MENU -->

				<!-- BEGIN RESPONSIVE MENU TOGGLER -->

				<a href="javascript:;" class="btn-navbar collapsed" data-toggle="collapse" data-target=".nav-collapse">

				<img src="media/image/menu-toggler.png" alt="" />

				</a>          

				<!-- END RESPONSIVE MENU TOGGLER -->            

				<!-- BEGIN TOP NAVIGATION MENU -->              

				<ul class="nav pull-right">

					<!-- BEGIN NOTIFICATION DROPDOWN -->   

					<!-- END NOTIFICATION DROPDOWN -->

					<!-- BEGIN INBOX DROPDOWN -->

					<!-- END INBOX DROPDOWN -->

					<!-- BEGIN TODO DROPDOWN -->
					
					<!-- END TODO DROPDOWN -->

					<!-- BEGIN USER LOGIN DROPDOWN -->

					<li class="dropdown user">

						<a href="#" class="dropdown-toggle" data-toggle="dropdown">

						<img alt="" src="media/image/avatar1_small.jpg" />

						<span class="username">Bob Nilson</span>

						<i class="icon-angle-down"></i>

						</a>

						<ul class="dropdown-menu">

							<li><a href="login.html"><i class="icon-key"></i> Log Out</a></li>

						</ul>

					</li>

					<!-- END USER LOGIN DROPDOWN -->

				</ul>

				<!-- END TOP NAVIGATION MENU --> 

			</div>

		</div>

		<!-- END TOP NAVIGATION BAR -->

	</div>

	<!-- END HEADER -->

	<!-- BEGIN CONTAINER -->   

	<div class="page-container row-fluid" >

		<!-- BEGIN EMPTY PAGE SIDEBAR -->

		<div class="page-sidebar nav-collapse collapse visible-phone visible-tablet">

			<ul class="page-sidebar-menu">

				<li class="visible-phone visible-tablet">

					<!-- BEGIN RESPONSIVE QUICK SEARCH FORM -->

					<form class="sidebar-search">

						<div class="input-box">

							<a href="javascript:;" class="remove"></a>

							<input type="text" placeholder="Search..." />            

							<input type="button" class="submit" value=" " />

						</div>

					</form>

					<!-- END RESPONSIVE QUICK SEARCH FORM -->

				</li>

				<li>

					<a class="active" href="index.html">

					Dashboard                        

					</a>

				</li>

				<li  class="active">

					<a href="javascript:;">

					Layouts

					<span class="arrow open"></span>   

					<span class="selected"></span>   

					</a>

					<ul class="sub-menu">

						<li >

							<a href="layout_horizontal_sidebar_menu.html">

							Horzontal & Sidebar Menu                     </a>

						</li>

						<li class="active">

							<a href="layout_horizontal_menu1.html">

							Horzontal Menu 1                    </a>

						</li>

						<li >

							<a href="layout_horizontal_menu2.html">

							Horzontal Menu 2                    </a>

						</li>

						<li >

							<a href="layout_promo.html">

							Promo Page                    </a>

						</li>

						<li >

							<a href="layout_email.html">

							Email Templates                     </a>

						</li>

						<li >

							<a href="layout_ajax.html">

							Content Loading via Ajax</a>

						</li>

						<li >

							<a href="layout_sidebar_closed.html">

							Sidebar Closed Page                    </a>

						</li>

						<li >

							<a href="layout_blank_page.html">

							Blank Page                    </a>

						</li>

						<li >

							<a href="layout_boxed_page.html">Boxed Page</a>

						</li>

						<li >

							<a href="layout_boxed_not_responsive.html">

							Non-Responsive Boxed Layout                     </a>

						</li>

						<li>

							<a href="javascript:;">

							More options

							<span class="arrow"></span>

							</a>

							<ul class="sub-menu">

								<li><a href="#">Second level link</a></li>

								<li>

									<a href="javascript:;">More options<span class="arrow"></span></a>

									<ul class="sub-menu">

										<li><a href="index.html">Third level link</a></li>

										<li><a href="index.html">Third level link</a></li>

										<li><a href="index.html">Third level link</a></li>

										<li><a href="index.html">Third level link</a></li>

										<li><a href="index.html">Third level link</a></li>

									</ul>

								</li>

								<li><a href="index.html">Second level link</a></li>

								<li><a href="index.html">Second level link</a></li>

								<li><a href="index.html">Second level link</a></li>

							</ul>

						</li>

					</ul>

				</li>

				<li>

					<a href="">Tables</a>

				</li>

				<li>

					<a href="">Extra

					<span class="arrow"></span>

					</a>

					<ul class="sub-menu">

						<li><a href="index.html">About Us</a></li>

						<li><a href="index.html">Services</a></li>

						<li><a href="index.html">Pricing</a></li>

						<li><a href="index.html">FAQs</a></li>

						<li><a href="index.html">Gallery</a></li>

						<li><a href="index.html">Registration</a></li>

						<li><a href="index.html">2 Columns (Left)</a></li>

						<li><a href="index.html">2 Columns (Right)</a></li>

					</ul>

				</li>

			</ul>

		</div>

		<!-- END EMPTY PAGE SIDEBAR -->

		<!-- BEGIN PAGE -->

		<div class="page-content">

			<!-- BEGIN SAMPLE PORTLET CONFIGURATION MODAL FORM-->

			<div id="portlet-config" class="modal hide">

				<div class="modal-header">

					<button data-dismiss="modal" class="close" type="button"></button>

					<h3>portlet Settings</h3>

				</div>

				<div class="modal-body">

					<p>Here will be a configuration form</p>

				</div>

			</div>

			<!-- END SAMPLE PORTLET CONFIGURATION MODAL FORM-->

			<!-- BEGIN PAGE CONTAINER-->

			<div class="container-fluid">

				<!-- BEGIN PAGE HEADER-->

				<!-- END PAGE HEADER-->

				<!-- BEGIN PAGE CONTENT-->


				<!-- END PAGE CONTENT-->

			</div>

			<!-- END PAGE CONTAINER--> 

		</div>

		<!-- END PAGE -->    

	</div>

	<!-- END CONTAINER -->

	<!-- BEGIN FOOTER -->

	<div class="footer">
		<div class="footer-tools">

			<span class="go-top">

			<i class="icon-angle-up"></i>

			</span>

		</div>

	</div>

	<!-- END FOOTER -->

	<!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->

	<!-- BEGIN CORE PLUGINS -->

	<script src="media/js/jquery-1.10.1.min.js" type="text/javascript"></script>

	<script src="media/js/jquery-migrate-1.2.1.min.js" type="text/javascript"></script>

	<!-- IMPORTANT! Load jquery-ui-1.10.1.custom.min.js before bootstrap.min.js to fix bootstrap tooltip conflict with jquery ui tooltip -->

	<script src="media/js/jquery-ui-1.10.1.custom.min.js" type="text/javascript"></script>      

	<script src="media/js/bootstrap.min.js" type="text/javascript"></script>

	<!--[if lt IE 9]>

	<script src="media/js/excanvas.min.js"></script>

	<script src="media/js/respond.min.js"></script>  

	<![endif]-->   

	<script src="media/js/jquery.slimscroll.min.js" type="text/javascript"></script>

	<script src="media/js/jquery.blockui.min.js" type="text/javascript"></script>  

	<script src="media/js/jquery.cookie.min.js" type="text/javascript"></script>

	<script src="media/js/jquery.uniform.min.js" type="text/javascript" ></script>

	<!-- END CORE PLUGINS -->

	<script src="media/js/app.js"></script>      

	<script>

		jQuery(document).ready(function() {    

		   App.init();

		});

	</script>

	<!-- END JAVASCRIPTS -->

</body>

<!-- END BODY -->

</html>