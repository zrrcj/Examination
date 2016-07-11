<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />

<title>{JARVIS}Admin</title>
<meta name="description" content="" />
<meta name="author" content="" />

<!-- http://davidbcalhoun.com/2010/viewport-metatag -->
<meta name="HandheldFriendly" content="True" />
<meta name="MobileOptimized" content="320" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />

<!--// OPTIONAL & CONDITIONAL CSS FILES //-->
<!-- date picker css -->
<link rel="stylesheet"
	href="<%=application.getContextPath()%>/zrrcj/css/datepicker.css?v=1" />
<!-- full calander css -->
<link rel="stylesheet"
	href="<%=application.getContextPath()%>/zrrcj/css/fullcalendar.css?v=1" />
<!-- data tables extended CSS -->
<link rel="stylesheet"
	href="<%=application.getContextPath()%>/zrrcj/css/TableTools.css?v=1" />
<!-- bootstrap wysimhtml5 editor -->
<link rel="stylesheet"
	href="<%=application.getContextPath()%>/zrrcj/css/bootstrap-wysihtml5.css?v=1" />
<link rel="stylesheet"
	href="<%=application.getContextPath()%>/zrrcj/css/wysiwyg-color.css" />
<!-- custom/responsive growl messages -->
<link rel="stylesheet"
	href="<%=application.getContextPath()%>/zrrcj/css/toastr.custom.css?v=1" />
<link rel="stylesheet"
	href="<%=application.getContextPath()%>/zrrcj/css/toastr-responsive.css?v=1" />
<link rel="stylesheet"
	href="<%=application.getContextPath()%>/zrrcj/css/jquery.jgrowl.css?v=1" />

<!-- // DO NOT REMOVE OR CHANGE ORDER OF THE FOLLOWING // -->
<!-- bootstrap default css (DO NOT REMOVE) -->
<link rel="stylesheet"
	href="<%=application.getContextPath()%>/zrrcj/css/bootstrap.min.css?v=1" />
<link rel="stylesheet"
	href="<%=application.getContextPath()%>/zrrcj/css/bootstrap-responsive.min.css?v=1" />
<!-- font awsome and custom icons -->
<link rel="stylesheet"
	href="<%=application.getContextPath()%>/zrrcj/css/font-awesome.min.css?v=1" />
<link rel="stylesheet"
	href="<%=application.getContextPath()%>/zrrcj/css/cus-icons.css?v=1" />
<!-- jarvis widget css -->
<link rel="stylesheet"
	href="<%=application.getContextPath()%>/zrrcj/css/jarvis-widgets.css?v=1" />
<!-- Data tables, normal tables and responsive tables css -->
<link rel="stylesheet"
	href="<%=application.getContextPath()%>/zrrcj/css/DT_bootstrap.css?v=1" />
<link rel="stylesheet"
	href="<%=application.getContextPath()%>/zrrcj/css/responsive-tables.css?v=1" />
<!-- used where radio, select and form elements are used -->
<link rel="stylesheet"
	href="<%=application.getContextPath()%>/zrrcj/css/uniform.default.css?v=1" />
<link rel="stylesheet"
	href="<%=application.getContextPath()%>/zrrcj/css/select2.css?v=1" />
<!-- main theme files -->
<link rel="stylesheet"
	href="<%=application.getContextPath()%>/zrrcj/css/theme.css?v=1" />
<link rel="stylesheet"
	href="<%=application.getContextPath()%>/zrrcj/css/theme-responsive.css?v=1" />

<!-- // THEME CSS changed by javascript: the CSS link below will override the rules above // -->
<!-- For more information, please see the documentation for "THEMES" -->
<link rel="stylesheet" id="switch-theme-js"
	href="<%=application.getContextPath()%>/zrrcj/css/themes/default.css?v=1" />
<!-- To switch to full width -->
<link rel="stylesheet" id="switch-width"
	href="<%=application.getContextPath()%>/zrrcj/css/full-width.css?v=1" />

<!-- Webfonts -->

<!-- All javascripts are located at the bottom except for HTML5 Shim -->
<!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
   		<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
   		<script src="<%=application.getContextPath()%>/zrrcj/js/include/respond.min.js"></script>
   	<![endif]-->

<!-- For Modern Browsers -->
<link rel="shortcut icon"
	href="<%=application.getContextPath()%>/zrrcj/img/favicons/favicon.png" />
<!-- For everything else -->
<link rel="shortcut icon"
	href="<%=application.getContextPath()%>/zrrcj/img/favicons/favicon.ico" />
<!-- For retina screens -->
<link rel="apple-touch-icon-precomposed" sizes="114x114"
	href="<%=application.getContextPath()%>/zrrcj/img/favicons/apple-touch-icon-retina.png" />
<!-- For iPad 1-->
<link rel="apple-touch-icon-precomposed" sizes="72x72"
	href="<%=application.getContextPath()%>/zrrcj/img/favicons/apple-touch-icon-ipad.png" />
<!-- For iPhone 3G, iPod Touch and Android -->
<link rel="apple-touch-icon-precomposed"
	href="<%=application.getContextPath()%>/zrrcj/img/favicons/apple-touch-icon.png" />

<!-- iOS web-app metas -->
<meta name="apple-mobile-web-app-capable" content="yes" />
<meta name="apple-mobile-web-app-status-bar-style" content="black" />

<!-- Startup image for web apps -->
<link rel="apple-touch-startup-image"
	href="<%=application.getContextPath()%>/zrrcj/img/splash/ipad-landscape.png"
	media="screen and (min-device-width: 481px) and (max-device-width: 1024px) and (orientation:landscape)" />
<link rel="apple-touch-startup-image"
	href="<%=application.getContextPath()%>/zrrcj/img/splash/ipad-portrait.png"
	media="screen and (min-device-width: 481px) and (max-device-width: 1024px) and (orientation:portrait)" />
<link rel="apple-touch-startup-image"
	href="<%=application.getContextPath()%>/zrrcj/img/splash/iphone.png"
	media="screen and (max-device-width: 320px)" />

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
</head>

<body>
	<!-- .height-wrapper -->
	<div class="height-wrapper">

		<!-- header -->
		<header>
			<!-- tool bar -->
			<div id="header-toolbar" class="container-fluid">
				<!-- .contained -->
				<div class="contained">

					<!-- theme name -->
					<h1>
						{ZRRCJ} <span class="hidden-phone">- 学生在线考试系统</span>
					</h1>
					<!-- end theme name -->

					<!-- span4 -->
					<div class="pull-right">
						<!-- demo theme switcher-->
						<div id="theme-switcher" class="btn-toolbar">
							<!-- end buttons for phone device -->

							<!-- dropdown mini-inbox-->
							<!-- end dropdown mini-inbox-->

							<!-- Tasks -->
							<div class="btn-group hidden-phone">
								<a href="javascript:void(0)" class="btn btn-inverse btn-small">我的消息</a>
								<a href="javascript:void(0)"
									class="btn btn-inverse dropdown-toggle btn-small"
									data-toggle="dropdown"><span class="caret"></span></a>

								<div class="dropdown-menu toolbar pull-right">
									<h3>Showing All Tasks</h3>
									<ul class="progressbox">
										<li><strong><i class="online pull-left"></i>Urgent
												Bug Fixes</strong><b class="pull-right">Complete</b>
											<div class="progress progress-success slim">
												<div class="bar" style="width: 100%;"></div>
											</div></li>
										<li><strong>Added functionality</strong><b
											class="pull-right">70%</b>
											<div class="progress progress-info slim">
												<div class="bar" style="width: 70%;"></div>
											</div></li>
										<li><strong>CAD Changes</strong><b class="pull-right">50%</b>
											<div class="progress progress-info slim">
												<div class="bar" style="width: 50%;"></div>
											</div></li>
										<li><strong>Marketing Campaign Mocup</strong><b
											class="pull-right">22%</b>
											<div class="progress progress-danger slim">
												<div class="bar" style="width: 22%;"></div>
											</div></li>
										<li><strong><i class="offline pull-left"></i>Proposal</strong><b
											class="pull-right">Pending</b>
											<div class="progress progress-info slim">
												<div class="bar" style="width: 0%;"></div>
											</div></li>
									</ul>
								</div>

							</div>
							<!-- end Tasks -->

							<!-- theme dropdown -->
							<div class="btn-group hidden-phone">
								<a href="javascript:void(0)" class="btn btn-small btn-inverse"
									id="reset-widget"><i class="icon-refresh"></i></a> <a
									href="javascript:void(0)"
									class="btn btn-small btn-inverse dropdown-toggle"
									data-toggle="dropdown">主题 <span class="caret"></span></a>
								<ul id="theme-links-js" class="dropdown-menu toolbar pull-right">
									<li><a href="javascript:void(0)" data-rel="purple"><i
											class="icon-sign-blank purple-icon"></i>紫色</a></li>
									<li><a href="javascript:void(0)" data-rel="blue"><i
											class="icon-sign-blank navyblue-icon"></i>蓝色</a></li>
									<li><a href="javascript:void(0)" data-rel="green"><i
											class="icon-sign-blank green-icon "></i>绿色</a></li>
									<li><a href="javascript:void(0)" data-rel="darkred"><i
											class="icon-sign-blank red-icon "></i>红色</a></li>
									<li><a href="javascript:void(0)" data-rel="default"><i
											class="icon-sign-blank grey-icon"></i>默认</a></li>
								</ul>
							</div>
							<!-- end theme dropdown-->

						</div>
						<!-- end demo theme switcher-->
					</div>
					<!-- end span4 -->
				</div>
				<!-- end .contained -->
			</div>
			<!-- end tool bar -->

		</header>
		<!-- end header -->

		<div id="main" role="main" class="container-fluid">
			<div class="contained">
				<!-- aside -->
				<aside>

					<!-- search box -->
					<div class="main-search">
						<label for="main-search"><i class="icon-search"></i></label> <input
							id="main-search" type="text" placeholder="查找..." />
					</div>
					<div class="divider"></div>
					<!-- end search box -->

					<!-- aside item: Mini profile -->
					<div class="my-profile">
						<a href="javascript:void(0)" class="my-profile-pic"> <img
							src="<%=application.getContextPath()%>/zrrcj/img/avatar/avatar_0.jpg"
							alt="" />
						</a> <span class="first-child">欢迎 <strong>${user.hn09StuName}!</strong></span>
						<span><a href="javascript:void(0);">设置 </a></span>
					</div>
					<div class="divider"></div>
					<!-- end aside item: Mini profile -->

					<!-- aside item: Menu -->
					<div class="sidebar-nav-fixed">

						<ul class="menu" id="accordion-menu-js">
							<li class="current"><a href="javascript:void(0)"><i
									class="icon-off"></i>主页<span class="badge">2</span></a>
								<ul>
									<li><a href="index.html" class="expanded">欢迎界面</a></li>
								</ul></li>
							<li class=""><a href=""><i class="icon-envelope"></i>抽取试卷</a>
							</li>
							<li class=""><a href="javascript:void(0)"><i
									class="icon-check"></i>考试信息<span class="badge">3</span></a>
								<ul>
									<li><a href="">试卷明细</a></li>
									<li><a href="">成绩查询</a></li>
								</ul></li>
							<li class=""><a href="javascript:void(0)"><i
									class="icon-user"></i>个人信息<span class="badge">3</span></a>
								<ul>
									<li><a href="">详细信息 </a></li>
								</ul></li>
						</ul>

					</div>
					<div class="divider"></div>
					<!-- end aside item: Inbox -->

					<!-- aside item: Tiny Stats -->
					<div class="number-stats">
						<ul>
							<li>15<span>选择题</span>2分
							</li>
							<li>10<span>判断题</span>2分
							</li>
							<li>10<span>填空题</span>1分
							</li>

						</ul>
					</div>
					<!-- end aside item: Tiny Stats -->
					<div class="divider"></div>
					<div class="number-stats">
						<ul>
							<li>3<span>简答题</span>10分
							</li>
						</ul>
					</div>
					<div class="divider"></div>
					<!-- end aside buttons -->
				</aside>
				<!-- aside end -->

				<!-- main content -->
				<div id="page-content">开始答题</div>
				<!-- <div id="page-content">
					page header
					<h1 id="page-header">Dashboard</h1>	
				
					<div class="alert adjusted alert-info">
						<button class="close" data-dismiss="alert">×</button>
						<i class="cus-exclamation"></i>
						<strong>Welcome to {Jarvis}Admin</strong> Please don't forget to check out all the pages and the features.
					</div>
					
					<div class="fluid-container">
						
						start icons
						<div id="start">
							<ul>
								<li>
									<label>+548 </label>
									<a href="javascript:void(0)" title="">
										<img src="<%=application.getContextPath()%>/zrrcj/img/start-icons/add-user.png" alt="" />
										<span>Add New User</span>
									</a>
								</li>
								<li>
									<label>246 </label>
									<a href="javascript:void(0)" title="">
										<img src="<%=application.getContextPath()%>/zrrcj/img/start-icons/orders.png" alt="" />
										<span>View Orders</span>
									</a>
								</li>
								<li>
									<a href="javascript:void(0)" title="">
										<img src="<%=application.getContextPath()%>/zrrcj/img/start-icons/mass.png" alt="" />
										<span>Broadcast</span>
									</a>
								</li>
								<li>
									<label>new</label>
									<a href="javascript:void(0)" title="">
										<img src="<%=application.getContextPath()%>/zrrcj/img/start-icons/stats.png" alt="" />
										<span>Show Statistics</span>
									</a>
								</li>
								<li>
									<label>657</label>
									<a href="javascript:void(0)" title="">
										<img src="<%=application.getContextPath()%>/zrrcj/img/start-icons/pending-message.png" alt="" />
										<span>Comments</span>
									</a>
								</li>
								<li>
									<a href="javascript:void(0)" title="">
										<img src="<%=application.getContextPath()%>/zrrcj/img/start-icons/upgrade.png" alt="" />
										<span>Service Upgrade</span>
									</a>
								</li>
							</ul>
				
						</div>						
						end start icons
						
						widget grid
						<section id="widget-grid" class="">
							
							row-fluid
							<div class="row-fluid">
								<article class="span12">
									new widget
									<div class="jarviswidget" id="widget-id-0">
									    <header>
									        <h2>Chart</h2>                           
									    </header>
									    <div>
									    
									        <div class="jarviswidget-editbox">
									            <div>
									                <label>Title:</label>
									                <input type="text" />
									            </div>
									            <div>
									                <label>Styles:</label>
									                <span data-widget-setstyle="purple" class="purple-btn"></span>
									                <span data-widget-setstyle="navyblue" class="navyblue-btn"></span>
									                <span data-widget-setstyle="green" class="green-btn"></span>
									                <span data-widget-setstyle="yellow" class="yellow-btn"></span>
									                <span data-widget-setstyle="orange" class="orange-btn"></span>
									                <span data-widget-setstyle="pink" class="pink-btn"></span>
									                <span data-widget-setstyle="red" class="red-btn"></span>
									                <span data-widget-setstyle="darkgrey" class="darkgrey-btn"></span>
									                <span data-widget-setstyle="black" class="black-btn"></span>
									            </div>
									        </div>
				            
									        <div class="inner-spacer"> 
									        content goes here
												<div class="widget alert adjusted">
													<button class="btn btn-mini pull-right btn-warning" id="refresh-js">refresh</button>
													<i class="cus-exclamation-octagon-fram"></i>
													<strong>Showing all collective data since setup date.</strong> Allocate specific dates, from the options menu, for faster loading
												</div>
												
												sin chart
								        		<div id="sin-chart" class="chart has-legend"></div>
				
									        </div>
									        
									    </div>
									</div>
									end widget
				
								</article>
							</div>
							
							end row-fluid
							
							row-fluid
							
							<div class="row-fluid">
				
								<article class="span6">
				
									new widget
									<div class="jarviswidget" id="widget-id-1">
									    <header>
									        <h2>Calendar</h2>                           
									    </header>
									    
									    widget div
									    <div>
									    	widget edit box
									        <div class="jarviswidget-editbox">
									            <div>
									                <label>Title:</label>
									                <input type="text" />
									            </div>
									            <div>
									                <label>Styles:</label>
									                <span data-widget-setstyle="purple" class="purple-btn"></span>
									                <span data-widget-setstyle="navyblue" class="navyblue-btn"></span>
									                <span data-widget-setstyle="green" class="green-btn"></span>
									                <span data-widget-setstyle="yellow" class="yellow-btn"></span>
									                <span data-widget-setstyle="orange" class="orange-btn"></span>
									                <span data-widget-setstyle="pink" class="pink-btn"></span>
									                <span data-widget-setstyle="red" class="red-btn"></span>
									                <span data-widget-setstyle="darkgrey" class="darkgrey-btn"></span>
									                <span data-widget-setstyle="black" class="black-btn"></span>
									            </div>
									        </div>
									        end widget edit box
				            
									        <div class="inner-spacer"> 
									        content goes here
												<div class="widget alert alert-info adjusted">
													<button class="close" data-dismiss="alert">×</button>
													<i class="cus-exclamation"></i>
													<strong>Helpful Hint:</strong> Did you know you can click on the <strong>Calendar Cell</strong> to add a new event? Try to add an event and see how easy it is!
												</div>
												calnedar container
									        	<div id="calendar-container">
										        	<div id="calendar-buttons">
														<div class="btn-group">
															<a href="javascript:void(0)" class="btn btn-small" id="btn-today">Today</a>
															<a href="javascript:void(0)" class="btn dropdown-toggle btn-small" data-toggle="dropdown"><span class="caret"></span></a>
															<ul class="dropdown-menu btn-small pull-right">
																<li>
																	<a href="javascript:void(0);" id="btn-month">Month</a>
																</li>
																<li>
																	<a href="javascript:void(0);" id="btn-agenda">Agenda</a>
																</li>
																<li>
																	<a href="javascript:void(0);" id="btn-day">Today</a>
																</li>
															</ul>
														</div>
														<div class="btn-group">
															<a href="javascript:void(0)" class="btn btn-small" id="btn-prev"><i class="icon-chevron-left"></i></a>
															<a href="javascript:void(0)" class="btn btn-small" id="btn-next"><i class="icon-chevron-right"></i></a>
														</div>
													</div>
										        	<div class="dt-header calender-spacer"></div>
										        	<div id="calendar"></div>
									        	</div>
									        	end calendar container
									        </div>
									        
									    </div>
									    end widget div
									</div>
									end widget
				
								</article>
										
								<article class="span6">
									
									new widget
									<div class="jarviswidget" id="widget-id-2">
									    <header>
									        <h2>Chat Interface</h2>                           
									    </header>
									    
									    widget div
									    <div>
									    	widget edit box
									        <div class="jarviswidget-editbox">
									            <div>
									                <label>Title:</label>
									                <input type="text" />
									            </div>
									            <div>
									                <label>Styles:</label>
									                <span data-widget-setstyle="purple" class="purple-btn"></span>
									                <span data-widget-setstyle="navyblue" class="navyblue-btn"></span>
									                <span data-widget-setstyle="green" class="green-btn"></span>
									                <span data-widget-setstyle="yellow" class="yellow-btn"></span>
									                <span data-widget-setstyle="orange" class="orange-btn"></span>
									                <span data-widget-setstyle="pink" class="pink-btn"></span>
									                <span data-widget-setstyle="red" class="red-btn"></span>
									                <span data-widget-setstyle="darkgrey" class="darkgrey-btn"></span>
									                <span data-widget-setstyle="black" class="black-btn"></span>
									            </div>
									        </div>
									        end widget edit box
				
									        content	            
									        <div class="inner-spacer chat-widget widget-content-padding"> 
									        	
									        	chat tabs
												<ul id="myChat" class="nav nav-tabs chat-tabs">
									              <li class="active">
									              	<button class="btn btn-mini pull-right chat-close-btn">x</button>
									              	<a href="#user1" data-toggle="tab"><i class="online"></i>Nicolas Cage</a>
									              	</li>
									              <li>
									              	<button class="btn btn-mini pull-right chat-close-btn">x</button>
									              	<a href="#user2" data-toggle="tab"><i class="away"></i>David Simpson</a>
									              </li>
									              <li class="pull-right">
									              	
													<div id="chat-user-control" class="btn-group hidden-phone">
						                                                <button class="btn dropdown-toggle btn-small btn-link" data-toggle="dropdown"><i class="cus-status-online"></i></button>
						                                                <ul class="dropdown-menu btn-small pull-right">
															<li>
																<a href="javascript:void(0);"><i class="cus-status-online"></i> Available</a>
															</li>
															<li>
																<a href="javascript:void(0);"><i class="cus-cross-shield-2"></i> Busy</a>
															</li>
															<li>
																<a href="javascript:void(0);"><i class="cus-clock"></i> Away</a>
															</li>
															<li class="divider"></li>
															<li>
																<a href="javascript:void(0);"><i class="cus-disconnect"></i> Disconnect</a>
															</li>
						                                                </ul>
						                                            </div>
				
							
									              </li>
									            </ul>
									            end chat tabs
									            
									            chat box
									            <div id="myChatTab" class="tab-content chat-content">
									              
									              chat user1	
									              <div class="tab-pane fade in active" id="user1">
									              	
									              	chat messages
									              	<div class="chat-messages">
									              		
									              		message-id-1
														<p id="message-id-1" class="message-box">
															<img src="<%=application.getContextPath()%>/zrrcj/img/avatar/avatar_1.jpg" alt="" />
															<span class="message">
																<strong>Nicolas Cage</strong> 
																<span class="message-time">14:23pm, 4th Jan 2013</span>
																<span class="message-text">Hehehe....sem quam semper libero, sit amet adipiscing sem neque sed ipsum. <i class="cus-emoticon-tongue"></i></span>
															</span>
														</p>
														end message-id-1
														
														message-id-2
														<p id="message-id-2" class="message-box you">
															<img src="<%=application.getContextPath()%>/zrrcj/img/avatar/avatar_0.jpg" alt="" />
															<span class="message">
																<strong>Me</strong> 
																<span class="message-time">14:25pm, 4th Jan 2013</span>
																<span class="message-text"> Faucibus! Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc <i class="cus-emoticon-smile"></i></span>
															</span>
														</p>
									              		end message-id-2
									              		
									              		message-id-3
														<p id="message-id-3" class="message-box">
															<img src="<%=application.getContextPath()%>/zrrcj/img/avatar/avatar_1.jpg" alt="" />
															<span class="message">
																<strong>Nicolas Cage</strong> 
																<span class="message-time">14:23pm, 4th Jan 2013</span>
																<span class="message-text">Hey Vicky! Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. LOLOL!  Maecenas tempus, tellus eget condimentum rhoncus. </span>
															</span>
														</p>
														end message-id-3
									              	
									             	</div>
									              	end chat messages
									              	
									              </div>
									              end chat user1
									              
									              chat user2
									              <div class="tab-pane fade" id="user2">
									              	
									              	chat messages
									              	<div class="chat-messages">
									              		
									              		message-id-1
														<p id="message-id-4" class="message-box">
															<img src="<%=application.getContextPath()%>/zrrcj/img/avatar/avatar_2.jpg" alt="" />
															<span class="message">
																<strong>David Simpson</strong> 
																<span class="message-time">14:23pm, 4th Jan 2013</span>
																<span class="message-text">Hi Victoria, Yes you have uploaded it and its currently in que. I will have a look at it and send you an email shortly.</span>
															</span>
														</p>
														end message-id-1
														
														message-id-2
														<p id="message-id-5" class="message-box you">
															<img src="<%=application.getContextPath()%>/zrrcj/img/avatar/avatar_0.jpg" alt="" />
															<span class="message">
																<strong>Me</strong> 
																<span class="message-time">14:25pm, 4th Jan 2013</span>
																<span class="message-text">Hi David, I just submitted a theme on wrapbootstrap, not sure if it went through. Did I do it right? :S</span>
															</span>
														</p>
														end message-id-2
														
									              	</div>
									              	end chat messages
									              	
									              </div>
									              end chat user2
									              
									            </div>
									            end chat box
									            
									            <div class="row-fluid chat-box">
									            	
									            	<textarea name="enter-message" rows="3" cols="1" placeholder="Enter your message..." id="chat-box-textarea"></textarea>
													<div class="row-fluid">
						                                                <div class="span6 type-effect" style="display:none"><img src="<%=application.getContextPath()%>/zrrcj/img/loaders/misc/16-2.gif" alt="" /> Victoria is typing...</div>
						                                                <div class="span6 chat-box-buttons pull-right">
						                                                	<input type="submit" name="chat-box-textarea" class="btn medium btn-danger pull-right" value="Send" id="send-msg-js" />
						                                                    <a href="javascript:void(0);" title="" class="pull-right"><i class="icon-camera"></i></a>
						                                                </div>
						                                            </div>
				
									            </div>
										       		
											
									        </div>
									        end content	
									        
									    </div>
									    end widget div
									</div>
									end widget
									
								</article>
								
							</div>
							
							end row-fluid
							
							row-fluid
							
							<div class="row-fluid">
								<article class="span12">
									new widget
									<div class="jarviswidget" id="widget-id-3">
									    <header>
									        <h2>Campaign Monitor</h2>                           
									    </header>
									    
									    widget div
									    <div>
									    	widget edit box
									        <div class="jarviswidget-editbox">
									            <div>
									                <label>Title:</label>
									                <input type="text" />
									            </div>
									            <div>
									                <label>Styles:</label>
									                <span data-widget-setstyle="purple" class="purple-btn"></span>
									                <span data-widget-setstyle="navyblue" class="navyblue-btn"></span>
									                <span data-widget-setstyle="green" class="green-btn"></span>
									                <span data-widget-setstyle="yellow" class="yellow-btn"></span>
									                <span data-widget-setstyle="orange" class="orange-btn"></span>
									                <span data-widget-setstyle="pink" class="pink-btn"></span>
									                <span data-widget-setstyle="red" class="red-btn"></span>
									                <span data-widget-setstyle="darkgrey" class="darkgrey-btn"></span>
									                <span data-widget-setstyle="black" class="black-btn"></span>
									            </div>
									        </div>
									        end widget edit box
				            
									        <div class="inner-spacer"> 
									        content	
												<div class="widget alert alert-success adjusted">
													<button class="btn btn-mini pull-right btn-success">New Campaign</button>
													<i class="cus-accept"></i>
													<strong>Congratulations!</strong> Your last campaign was a success. Your goal was reached on <strong>28-12-12 @ 4:23 AM</strong>. Would you like to set up a new campaign?
												</div>
												sales chart
								        		<div id="saleschart" class="chart"></div>
										       		
											end content	
									        </div>
									        
									    </div>
									    end widget div
									</div>
									end widget
								</article>
							</div>
							
							end row-fluid
							
							row-fluid
							
							<div class="row-fluid">
								
								<article class="span6">
									new widget
									<div class="jarviswidget" id="widget-id-4">
									    <header>
									        <h2>Bootstrap WYSIHTML5 Editor</h2>                           
									    </header>
									    <div>
									    
									        <div class="jarviswidget-editbox">
									            <div>
									                <label>Title:</label>
									                <input type="text" />
									            </div>
									            <div>
									                <label>Styles:</label>
									                <span data-widget-setstyle="purple" class="purple-btn"></span>
									                <span data-widget-setstyle="navyblue" class="navyblue-btn"></span>
									                <span data-widget-setstyle="green" class="green-btn"></span>
									                <span data-widget-setstyle="yellow" class="yellow-btn"></span>
									                <span data-widget-setstyle="orange" class="orange-btn"></span>
									                <span data-widget-setstyle="pink" class="pink-btn"></span>
									                <span data-widget-setstyle="red" class="red-btn"></span>
									                <span data-widget-setstyle="darkgrey" class="darkgrey-btn"></span>
									                <span data-widget-setstyle="black" class="black-btn"></span>
									            </div>
									        </div>
				            
									        <div class="inner-spacer wysihtml5-widget"> 
									        content	
												<textarea id="wysihtml5" placeholder="Enter text ..." style="width: 100%; height: 200px;"></textarea>
												
											    <div class="pull-right post-msg">
											    	<a href="javascript:void(0)" class="btn medium" id="save-notes-btn-js">Save to notes</a>
											    	<a href="javascript:void(0)" class="btn medium btn-primary" id="post-btn-js">Post Message</a>
											    </div>   		
											end content	
									        </div>
									        end inner spacer
									    </div>
									</div>
									end widget
								</article>
							
								<article class="span6">
									
									new widget
									<div class="jarviswidget" id="widget-id-5">
									    <header>
									        <h2>Tasks in progress</h2>                           
									    </header>
									    <div>
									    
									        <div class="jarviswidget-editbox">
									            <div>
									                <label>Title:</label>
									                <input type="text" />
									            </div>
									            <div>
									                <label>Styles:</label>
									                <span data-widget-setstyle="purple" class="purple-btn"></span>
									                <span data-widget-setstyle="navyblue" class="navyblue-btn"></span>
									                <span data-widget-setstyle="green" class="green-btn"></span>
									                <span data-widget-setstyle="yellow" class="yellow-btn"></span>
									                <span data-widget-setstyle="orange" class="orange-btn"></span>
									                <span data-widget-setstyle="pink" class="pink-btn"></span>
									                <span data-widget-setstyle="red" class="red-btn"></span>
									                <span data-widget-setstyle="darkgrey" class="darkgrey-btn"></span>
									                <span data-widget-setstyle="black" class="black-btn"></span>
									            </div>
									        </div>
				            
									        <div class="inner-spacer"> 
									        content goes here
												<div class="progress-stats">
							                                        <div class="widget-content-padding">
							                                            <strong>Hot Fixes</strong><strong class="pull-right">51%</strong>
							                                            <div class="progress progress-danger value"><div class="bar" data-percentage="30" data-amount-part="784" data-amount-total="1544">784 / 1544</div></div>
							                                            
							                                            <div class="semi-block">
							                                                <strong>Urgent Tasks</strong><strong class="pull-right">87%</strong>
							                                                <div class="progress progress-info value"><div class="bar" data-percentage="40" data-amount-part="456" data-amount-total="631">456 / 631</div></div>
							                                            </div>
							                                            
							                                            <div class="semi-block">
							                                                <strong>Other tasks</strong><strong class="pull-right">41%</strong>
							                                                <div class="progress progress-success value"><div class="bar" data-percentage="79" data-amount-part="51" data-amount-total="141">51 / 141</div></div>
							                                            </div>
							                                            
							                                            <div class="semi-block">
							                                                <strong>Pending tasks</strong><strong class="pull-right">33%</strong>
							                                                <div class="progress progress-warning value"><div class="bar" data-percentage="33" data-amount-part="33" data-amount-total="100">33 / 100</div></div>
							                                            </div>
							                                        </div>
							                                    </div>
									        end content
									        </div>
									        
									        
									    </div>
									</div>
									end widget
								</article>
								
							</div>
							
							end row-fluid
				
						</section>
						end widget grid
					</div>		
				</div> -->
				<!-- end main content -->

				<!-- aside right on high res -->
				<aside class="right">
					//右边
					<!-- sparkline stats -->
					<ul class="mystats indented">
						<li><span>开考30分钟后方可交卷</span>
							<div class="aside-buttons">
								<a href="javascript:void(0);" title="" class="btn btn-info">开始答题</a>
							</div></li>
					</ul>
					<div class="divider"></div>
					<!-- end sparkline stats -->

					<!-- aside progress bars -->
					<ul class="indented aside-progress-stats">
						<li>
							<!-- easy pie chart -->
							<div class="easypie">

								<svg version="1.1" id="clock" xmlns="http://www.w3.org/2000/svg"
									xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
									width="150px" height="150px" viewBox="94.257 101.184 300 300"
									enable-background="new 94.257 101.184 300 300"
									xml:space="preserve">
<circle id="face" fill="#F4F3ED" cx="243.869" cy="250.796" r="130.5" />
<path id="rim" fill="#383838"
										d="M243.869,101.184c-82.629,0-149.612,66.984-149.612,149.612c0,82.629,66.983,149.612,149.612,149.612
	S393.48,333.425,393.48,250.796S326.498,101.184,243.869,101.184z M243.869,386.455c-74.922,0-135.659-60.736-135.659-135.659
	c0-74.922,60.737-135.659,135.659-135.659c74.922,0,135.658,60.737,135.658,135.659
	C379.527,325.719,318.791,386.455,243.869,386.455z" />
<g>
	<g opacity="0.2">
		<path fill="#C4C4C4"
										d="M243.869,114.648c-75.748,0-137.154,61.406-137.154,137.153c0,75.749,61.406,137.154,137.154,137.154
			c75.748,0,137.153-61.405,137.153-137.154C381.022,176.054,319.617,114.648,243.869,114.648z M243.869,382.56
			c-72.216,0-130.758-58.543-130.758-130.758s58.542-130.758,130.758-130.758c72.216,0,130.758,58.543,130.758,130.758
			S316.085,382.56,243.869,382.56z" />
	</g>
	<g>
		<path fill="#282828"
										d="M243.869,113.637c-75.748,0-137.154,61.406-137.154,137.153c0,75.749,61.406,137.154,137.154,137.154
			c75.748,0,137.153-61.405,137.153-137.154C381.022,175.043,319.617,113.637,243.869,113.637z M243.869,381.548
			c-72.216,0-130.758-58.542-130.758-130.757c0-72.216,58.542-130.758,130.758-130.758c72.216,0,130.758,58.543,130.758,130.758
			C374.627,323.005,316.085,381.548,243.869,381.548z" />
	</g>
</g>
<g id="markings">
	<line fill="none" stroke="#3F3F3F" stroke-miterlimit="10" x1="243.5"
										y1="139" x2="243.5" y2="133" />
	<line fill="none" stroke="#3F3F3F" stroke-miterlimit="10" x1="231.817"
										y1="139.651" x2="231.19" y2="133.684" />
	<line fill="none" stroke="#3F3F3F" stroke-miterlimit="10" x1="220.266"
										y1="141.52" x2="219.018" y2="135.65" />
	<line fill="none" stroke="#3F3F3F" stroke-miterlimit="10" x1="208.973"
										y1="144.585" x2="207.119" y2="138.879" />
	<line fill="none" stroke="#3F3F3F" stroke-miterlimit="10" x1="198.063"
										y1="148.814" x2="195.623" y2="143.333" />
	<line fill="none" stroke="#3F3F3F" stroke-miterlimit="10" x1="187.655"
										y1="154.161" x2="184.655" y2="148.965" />
	<line fill="none" stroke="#3F3F3F" stroke-miterlimit="10" x1="177.862"
										y1="160.566" x2="174.335" y2="155.712" />
	<line fill="none" stroke="#3F3F3F" stroke-miterlimit="10" x1="168.792"
										y1="167.96" x2="164.778" y2="163.501" />
	<line fill="none" stroke="#3F3F3F" stroke-miterlimit="10" x1="160.545"
										y1="176.262" x2="156.087" y2="172.246" />
	<line fill="none" stroke="#3F3F3F" stroke-miterlimit="10" x1="153.211"
										y1="185.379" x2="148.358" y2="181.852" />
	<line fill="none" stroke="#3F3F3F" stroke-miterlimit="10" x1="146.871"
										y1="195.214" x2="141.675" y2="192.213" />
	<line fill="none" stroke="#3F3F3F" stroke-miterlimit="10" x1="141.593"
										y1="205.658" x2="136.112" y2="203.216" />
	<line fill="none" stroke="#3F3F3F" stroke-miterlimit="10" x1="137.436"
										y1="216.596" x2="131.729" y2="214.741" />
	<line fill="none" stroke="#3F3F3F" stroke-miterlimit="10" x1="134.445"
										y1="227.909" x2="128.576" y2="226.66" />
	<line fill="none" stroke="#3F3F3F" stroke-miterlimit="10" x1="132.653"
										y1="239.472" x2="126.685" y2="238.843" />
	<line fill="none" stroke="#3F3F3F" stroke-miterlimit="10" x1="132.079"
										y1="251.16" x2="126.079" y2="251.158" />
	<line fill="none" stroke="#3F3F3F" stroke-miterlimit="10" x1="132.73"
										y1="262.843" x2="126.762" y2="263.468" />
	<line fill="none" stroke="#3F3F3F" stroke-miterlimit="10" x1="134.598"
										y1="274.395" x2="128.729" y2="275.64" />
	<line fill="none" stroke="#3F3F3F" stroke-miterlimit="10" x1="137.664"
										y1="285.688" x2="131.958" y2="287.539" />
	<line fill="none" stroke="#3F3F3F" stroke-miterlimit="10" x1="141.893"
										y1="296.598" x2="136.412" y2="299.035" />
	<line fill="none" stroke="#3F3F3F" stroke-miterlimit="10" x1="147.24"
										y1="307.006" x2="142.043" y2="310.004" />
	<line fill="none" stroke="#3F3F3F" stroke-miterlimit="10" x1="153.645"
										y1="316.799" x2="148.791" y2="320.323" />
	<line fill="none" stroke="#3F3F3F" stroke-miterlimit="10" x1="161.04"
										y1="325.868" x2="156.58" y2="329.881" />
	<line fill="none" stroke="#3F3F3F" stroke-miterlimit="10" x1="169.341"
										y1="334.115" x2="165.325" y2="338.572" />
	<line fill="none" stroke="#3F3F3F" stroke-miterlimit="10" x1="178.459"
										y1="341.449" x2="174.931" y2="346.302" />
	<line fill="none" stroke="#3F3F3F" stroke-miterlimit="10" x1="188.294"
										y1="347.789" x2="185.292" y2="352.984" />
	<line fill="none" stroke="#3F3F3F" stroke-miterlimit="10" x1="198.738"
										y1="353.066" x2="196.295" y2="358.548" />
	<line fill="none" stroke="#3F3F3F" stroke-miterlimit="10" x1="209.676"
										y1="357.223" x2="207.82" y2="362.93" />
	<line fill="none" stroke="#3F3F3F" stroke-miterlimit="10" x1="220.989"
										y1="360.214" x2="219.739" y2="366.084" />
	<line fill="none" stroke="#3F3F3F" stroke-miterlimit="10" x1="232.552"
										y1="362.006" x2="231.922" y2="367.975" />
	<line fill="none" stroke="#3F3F3F" stroke-miterlimit="10" x1="244.239"
										y1="362.58" x2="244.237" y2="368.582" />
	<line fill="none" stroke="#3F3F3F" stroke-miterlimit="10" x1="255.921"
										y1="361.93" x2="256.547" y2="367.898" />
	<line fill="none" stroke="#3F3F3F" stroke-miterlimit="10" x1="267.472"
										y1="360.062" x2="268.719" y2="365.932" />
	<line fill="none" stroke="#3F3F3F" stroke-miterlimit="10" x1="278.765"
										y1="356.996" x2="280.619" y2="362.703" />
	<line fill="none" stroke="#3F3F3F" stroke-miterlimit="10" x1="289.675"
										y1="352.767" x2="292.116" y2="358.248" />
	<line fill="none" stroke="#3F3F3F" stroke-miterlimit="10" x1="300.083"
										y1="347.42" x2="303.083" y2="352.616" />
	<line fill="none" stroke="#3F3F3F" stroke-miterlimit="10" x1="309.876"
										y1="341.015" x2="313.403" y2="345.869" />
	<line fill="none" stroke="#3F3F3F" stroke-miterlimit="10" x1="318.946"
										y1="333.621" x2="322.96" y2="338.08" />
	<line fill="none" stroke="#3F3F3F" stroke-miterlimit="10" x1="327.193"
										y1="325.319" x2="331.651" y2="329.334" />
	<line fill="none" stroke="#3F3F3F" stroke-miterlimit="10" x1="334.527"
										y1="316.201" x2="339.38" y2="319.728" />
	<line fill="none" stroke="#3F3F3F" stroke-miterlimit="10" x1="340.868"
										y1="306.367" x2="346.063" y2="309.367" />
	<line fill="none" stroke="#3F3F3F" stroke-miterlimit="10" x1="346.146"
										y1="295.924" x2="351.626" y2="298.364" />
	<line fill="none" stroke="#3F3F3F" stroke-miterlimit="10" x1="350.303"
										y1="284.986" x2="356.008" y2="286.84" />
	<line fill="none" stroke="#3F3F3F" stroke-miterlimit="10" x1="353.294"
										y1="273.673" x2="359.162" y2="274.92" />
	<line fill="none" stroke="#3F3F3F" stroke-miterlimit="10" x1="355.087"
										y1="262.11" x2="361.052" y2="262.737" />
	<line fill="none" stroke="#3F3F3F" stroke-miterlimit="10" x1="356"
										y1="250.5" x2="362" y2="250.5" />
	<line fill="none" stroke="#3F3F3F" stroke-miterlimit="10" x1="355.355"
										y1="238.781" x2="361.323" y2="238.153" />
	<line fill="none" stroke="#3F3F3F" stroke-miterlimit="10" x1="353.489"
										y1="227.193" x2="359.359" y2="225.945" />
	<line fill="none" stroke="#3F3F3F" stroke-miterlimit="10" x1="350.422"
										y1="215.864" x2="356.129" y2="214.01" />
	<line fill="none" stroke="#3F3F3F" stroke-miterlimit="10" x1="346.188"
										y1="204.918" x2="351.669" y2="202.477" />
	<line fill="none" stroke="#3F3F3F" stroke-miterlimit="10" x1="340.833"
										y1="194.474" x2="346.029" y2="191.474" />
	<line fill="none" stroke="#3F3F3F" stroke-miterlimit="10" x1="334.415"
										y1="184.647" x2="339.269" y2="181.12" />
	<line fill="none" stroke="#3F3F3F" stroke-miterlimit="10" x1="327.004"
										y1="175.545" x2="331.463" y2="171.529" />
	<line fill="none" stroke="#3F3F3F" stroke-miterlimit="10" x1="318.684"
										y1="167.268" x2="322.699" y2="162.807" />
	<line fill="none" stroke="#3F3F3F" stroke-miterlimit="10" x1="309.543"
										y1="159.905" x2="313.07" y2="155.049" />
	<line fill="none" stroke="#3F3F3F" stroke-miterlimit="10" x1="299.684"
										y1="153.538" x2="302.683" y2="148.34" />
	<line fill="none" stroke="#3F3F3F" stroke-miterlimit="10" x1="289.212"
										y1="148.237" x2="291.652" y2="142.753" />
	<line fill="none" stroke="#3F3F3F" stroke-miterlimit="10" x1="278.245"
										y1="144.059" x2="280.097" y2="138.351" />
	<line fill="none" stroke="#3F3F3F" stroke-miterlimit="10" x1="266.9"
										y1="141.05" x2="268.145" y2="135.179" />
	<line fill="none" stroke="#3F3F3F" stroke-miterlimit="10" x1="255.302"
										y1="139.244" x2="255.927" y2="133.275" />
	<polygon fill="#3F3F3F" points="247.391,133 243.5,141.05 239.609,133 	" />
	<polygon fill="#3F3F3F"
										points="188.022,147.021 188.677,155.938 181.283,150.912 	" />
	<polygon fill="#3F3F3F"
										points="143.617,188.848 148.643,196.243 139.726,195.588 	" />
	<polygon fill="#3F3F3F"
										points="126.074,247.273 134.125,251.165 126.076,255.056 	" />
	<polygon fill="#3F3F3F"
										points="140.095,306.644 149.013,305.988 143.988,313.382 	" />
	<polygon fill="#3F3F3F"
										points="181.922,351.049 189.318,346.022 188.663,354.938 	" />
	<polygon fill="#3F3F3F"
										points="240.349,368.591 244.24,360.54 248.13,368.589 	" />
	<polygon fill="#3F3F3F"
										points="299.718,354.569 299.062,345.652 306.457,350.677 	" />
	<polygon fill="#3F3F3F"
										points="344.123,312.742 339.096,305.348 348.012,306.002 	" />
	<polygon fill="#3F3F3F"
										points="362,254.316 353.951,250.426 362,246.534 	" />
	<polygon fill="#3F3F3F"
										points="347.934,194.779 339.018,195.435 344.042,188.04 	" />
	<polygon fill="#3F3F3F"
										points="305.984,150.252 298.59,155.277 299.244,146.361 	" />
	<rect x="282" y="152.98" fill="none" width="17.366" height="27.947" />
	<text transform="matrix(1 0 0 1 282 174.4307)" fill="#303030"
										font-family="'Futura-Medium'" font-size="26">1</text>
	<rect x="320.699" y="188.474" fill="none" width="17.202"
										height="26.267" />
	<text transform="matrix(1 0 0 1 320.6987 209.9229)" fill="#303030"
										font-family="'Futura-Medium'" font-size="26">2</text>
	<rect x="335.04" y="238.872" fill="none" width="21.03" height="24.585" />
	<text transform="matrix(1 0 0 1 335.0396 260.3213)" fill="#303030"
										font-family="'Futura-Medium'" font-size="26">3</text>
	<rect x="319.699" y="290.242" fill="none" width="17.202"
										height="23.557" />
	<text transform="matrix(1 0 0 1 319.6987 311.6914)" fill="#303030"
										font-family="'Futura-Medium'" font-size="26">4</text>
	<rect x="284.5" y="323.319" fill="none" width="19.212" height="22.511" />
	<text transform="matrix(1 0 0 1 284.5 344.7695)" fill="#303030"
										font-family="'Futura-Medium'" font-size="26">5</text>
	<rect x="235.552" y="336.08" fill="none" width="19.938" height="24.15" />
	<text transform="matrix(1 0 0 1 235.5522 357.5293)" fill="#303030"
										font-family="'Futura-Medium'" font-size="26">6</text>
	<rect x="189.373" y="322.319" fill="none" width="19.673"
										height="25.003" />
	<text transform="matrix(1 0 0 1 189.3726 343.7695)" fill="#303030"
										font-family="'Futura-Medium'" font-size="26">7</text>
	<rect x="151.066" y="287.539" fill="none" width="17.726"
										height="25.203" />
	<text transform="matrix(1 0 0 1 151.0664 308.9883)" fill="#303030"
										font-family="'Futura-Medium'" font-size="26">8</text>
	<rect x="136.392" y="241.25" fill="none" width="20.696" height="22.348" />
	<text transform="matrix(1 0 0 1 136.3916 262.6992)" fill="#303030"
										font-family="'Futura-Medium'" font-size="26">9</text>
	<rect x="149.066" y="191.474" fill="none" width="36.554"
										height="27.122" />
	<text transform="matrix(1 0 0 1 149.0664 212.9229)" fill="#303030"
										font-family="'Futura-Medium'" font-size="26">10</text>
	<rect x="184.967" y="158.518" fill="none" width="36.021" height="27.13" />
	<text transform="matrix(1 0 0 1 184.9673 179.9668)" fill="#303030"
										font-family="'Futura-Medium'" font-size="26">11</text>
	<rect x="225.723" y="144.514" fill="none" width="37.029" height="29.25" />
	<text transform="matrix(1 0 0 1 225.7227 165.9639)" fill="#303030"
										font-family="'Futura-Medium'" font-size="26">12</text>
</g>
<g id="minutes">
	<g>
		<path fill="#3A3A3A"
										d="M244.831,261.39c-0.066,1.098-0.665,1.997-1.331,1.996c-0.666,0-1.265-0.898-1.332-1.996l-1.574-25.956
			c-0.066-1.098-0.101-2.896-0.077-3.996l1.729-78.619c0.024-1.1,0.589-2,1.254-2c0.666,0,1.231,0.9,1.255,2l1.729,78.361
			c0.024,1.1-0.01,2.898-0.076,3.996L244.831,261.39z" />
	</g>
</g>
<g id="hours">
	<g>
		<path fill="#3A3A3A"
										d="M245.317,261.606c-0.098,1.096-0.773,1.992-1.501,1.992s-1.404-0.896-1.503-1.992l-1.625-18.011
			c-0.099-1.095-0.15-2.891-0.114-3.991l1.854-56.678c0.036-1.1,0.661-1.999,1.389-1.999s1.353,0.899,1.389,1.999l1.853,56.488
			c0.036,1.1-0.015,2.896-0.113,3.991L245.317,261.606z" />
	</g>
</g>
<g id="seconds">
	<g>
		<line fill="none" stroke="#BF4116" stroke-miterlimit="10" x1="243.5"
										y1="143" x2="243.5" y2="266" />
		<circle fill="none" stroke="#BF4116" stroke-miterlimit="10" cx="243.5"
										cy="271" r="5" />
		<circle fill="#BF4116" cx="243.5" cy="251" r="3.251" />
	</g>
</g>
</svg>

							</div> 
						</li>
						<li class="btn btn-danger"><span>倒计时2小时：</span><span
							id="clocks">00:00:05:00</span></li>
					</ul>
					<div class="divider"></div>
					<div id="datepicker"></div>
					<div class="divider"></div>
				</aside>
			</div>
		</div>
		<div class="push"></div>
	</div>
	<script>window.jQuery || document.write('<script src="<%=application.getContextPath()%>/zrrcj/js/libs/jquery.min.js"><\/script>')</script>
	<script>window.jQuery.ui || document.write('<script src="<%=application.getContextPath()%>/zrrcj/js/libs/jquery.ui.min.js"><\/script>')</script>

	<!-- IMPORTANT: Jquery Touch Punch is always placed under Jquery UI -->
	<script
		src="<%=application.getContextPath()%>/zrrcj/js/include/jquery.ui.touch-punch.min.js"></script>

	<!-- REQUIRED: Datatable components -->
	<script
		src="<%=application.getContextPath()%>/zrrcj/js/include/jquery.accordion.min.js"></script>

	<!-- REQUIRED: Toastr & Jgrowl notifications  -->
	<script
		src="<%=application.getContextPath()%>/zrrcj/js/include/toastr.min.js"></script>
	<script
		src="<%=application.getContextPath()%>/zrrcj/js/include/jquery.jgrowl.min.js"></script>

	<!-- REQUIRED: Sleek scroll UI  -->
	<script
		src="<%=application.getContextPath()%>/zrrcj/js/include/slimScroll.min.js"></script>

	<script type="text/javascript">
		var ismobile = (/iphone|ipad|ipod|android|blackberry|mini|windows\sce|palm/i.test(navigator.userAgent.toLowerCase()));	
	    if(!ismobile){
	    	
	    	document.write('<script src="<%=application.getContextPath()%>/zrrcj/js/include/jquery.excanvas.min.js"><\/script>');
	    	document.write('<script src="<%=application.getContextPath()%>/zrrcj/js/include/jquery.placeholder.min.js"><\/script>');
	    	
			/** DEMO SCRIPTS **/
	        $(function() {
	            /* show tooltips */
				$.jGrowl("I am the <strong>smartest Admin Template</strong> on <strong>wrapbootstrap.com</strong>. Don't forget to check out all my pages.", { 
					header: '欢迎, ${user.hn09StuName}!', 
					sticky: false,
					life: 5000,
					speed: 500,
					theme: 'with-icon',
					position: 'top-right', //this is default position
					easing: 'easeOutBack',
					animateOpen: { 
						height: "show"
					},
					animateClose: { 
						opacity: 'hide' 
					}
				});	
	        });
	        /** end DEMO SCRIPTS **/
	        
	    }else{
	    	
	    	/** ONLY EXECUTE THESE CODES IF MOBILE DETECTION IS TRUE **/
	    	
			document.write('<script src="<%=application.getContextPath()%>/zrrcj/js/include/selectnav.min.js"><\/script>');
	    	document.write('<script src="<%=application.getContextPath()%>/zrrcj/js/include/responsive-tables.min.js"><\/script>');
		}

		//秒表倒计时控制
		var normalelapse = 100;
		var nextelapse = normalelapse;
		var counter;
		var startTime;
		var start1 = clocks.innerText;
		var finish = "00:00:00:00";
		var timer = null;
		// 开始运行  
		function run() {
			counter = 0;
			// 初始化开始时间  
			startTime = new Date().valueOf();
			//alert(startTime);

			// nextelapse是定时时间, 初始时为100毫秒  
			// 注意setInterval函数: 时间逝去nextelapse(毫秒)后, onTimer才开始执行  
			timer = window.setInterval("onTimer()", nextelapse);
		}
		// 停止运行  
		function stop() {
			window.clearTimeout(timer);
		}
		window.onload = function() {
			run();
		}
		// 倒计时函数  
		function onTimer() {
			if (start1 == finish) {
				window.clearInterval(timer);
				//倒计时结束自动提交跳转页面   
				alert("计时结束")
				return;
			}
			var hms = new String(start1).split(":");
			var ms = new Number(hms[3]);
			var s = new Number(hms[2]);
			var m = new Number(hms[1]);
			var h = new Number(hms[0]);
			ms -= 10;
			if (ms < 0) {
				ms = 90;
				s -= 1;
				if (s < 0) {
					s = 59;
					m -= 1;
				}
				if (m < 0) {
					m = 59;
					h -= 1;
				}
			}
			var ms = ms < 10 ? ("0" + ms) : ms;
			var ss = s < 10 ? ("0" + s) : s;
			var sm = m < 10 ? ("0" + m) : m;
			var sh = h < 10 ? ("0" + h) : h;
			start1 = sh + ":" + sm + ":" + ss + ":" + ms;
			clocks.innerText = start1;
			// 清除上一次的定时器  
			window.clearInterval(timer);
			// 自校验系统时间得到时间差, 并由此得到下次所启动的新定时器的时间nextelapse  
			counter++;
			var counterSecs = counter * 100;
			var elapseSecs = new Date().valueOf() - startTime;
			var diffSecs = counterSecs - elapseSecs;
			nextelapse = normalelapse + diffSecs;
			//diff.value = counterSecs + "-" + elapseSecs + "=" + diffSecs;  
			// next.value = "nextelapse = " + nextelapse;  
			if (nextelapse < 0)
				nextelapse = 0;
			// 启动新的定时器  
			timer = window.setInterval("onTimer()", nextelapse);
		}
	</script>

	<!-- REQUIRED: Animated pie chart -->
	<script
		src="<%=application.getContextPath()%>/zrrcj/js/include/jquery.easy-pie-chart.min.js"></script>

	<!-- REQUIRED: Functional Widgets -->
	<script
		src="<%=application.getContextPath()%>/zrrcj/js/include/jarvis.widget.min.js"></script>
	<script
		src="<%=application.getContextPath()%>/zrrcj/js/include/mobiledevices.min.js"></script>
	<!-- DISABLED (only needed for IE7 <script src="<%=application.getContextPath()%>/zrrcj/js/include/json2.js"></script> -->

	<!-- REQUIRED: Full Calendar -->
	<script
		src="<%=application.getContextPath()%>/zrrcj/js/include/jquery.fullcalendar.min.js"></script>

	<!-- REQUIRED: Flot Chart Engine -->
	<script
		src="<%=application.getContextPath()%>/zrrcj/js/include/jquery.flot.cust.min.js"></script>
	<script
		src="<%=application.getContextPath()%>/zrrcj/js/include/jquery.flot.resize.min.js"></script>
	<script
		src="<%=application.getContextPath()%>/zrrcj/js/include/jquery.flot.tooltip.min.js"></script>

	<!-- REQUIRED: Sparkline Charts -->
	<script
		src="<%=application.getContextPath()%>/zrrcj/js/include/jquery.sparkline.min.js"></script>

	<!-- REQUIRED: Infinite Sliding Menu (used with inbox page) -->
	<!-- DISABLED  <script src="<%=application.getContextPath()%>/zrrcj/js/include/jquery.inbox.slashc.sliding-menu.js"></script> -->

	<!-- REQUIRED: Form validation plugin -->
	<!-- DISABLED <script src="<%=application.getContextPath()%>/zrrcj/js/include/jquery.validate.min.js"></script> -->

	<!-- REQUIRED: Progress bar animation -->
	<script
		src="<%=application.getContextPath()%>/zrrcj/js/include/bootstrap-progressbar.min.js"></script>

	<!-- REQUIRED: wysihtml5 editor -->
	<script
		src="<%=application.getContextPath()%>/zrrcj/js/include/wysihtml5-0.3.0.min.js"></script>
	<script
		src="<%=application.getContextPath()%>/zrrcj/js/include/bootstrap-wysihtml5.min.js"></script>

	<!-- REQUIRED: Masked Input -->
	<!-- DISABLED  <script src="<%=application.getContextPath()%>/zrrcj/js/include/jquery.maskedinput.min.js"></script> -->

	<!-- REQUIRED: Bootstrap Date Picker -->
	<script
		src="<%=application.getContextPath()%>/zrrcj/js/include/bootstrap-datepicker.min.js"></script>

	<!-- REQUIRED: Bootstrap engine -->
	<script
		src="<%=application.getContextPath()%>/zrrcj/js/include/bootstrap.min.js"></script>

	<!-- DO NOT REMOVE: Theme Config file -->
	<script src="<%=application.getContextPath()%>/zrrcj/js/config.js"></script>
	<script
		src='<%=application.getContextPath()%>/zrrcj/js/snap.svg-min.js'></script>

	<script src="<%=application.getContextPath()%>/zrrcj/js/index.js"></script>

	<!-- end scripts -->
</body>
</html>
