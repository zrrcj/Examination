<%@page import="com.ks.common.Time"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en" class="no-js">
<head>
<meta charset="utf-8" />
<title>河北交通学院 |在线考试</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta content="width=device-width, initial-scale=1" name="viewport" />
<meta content="" name="description" />
<meta content="" name="author" />
<link
	href="<%=application.getContextPath()%>/assets/plugins/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css" />
<link
	href="<%=application.getContextPath()%>/assets/plugins/bootstrap/css/bootstrap.min.css"
	rel="stylesheet" type="text/css" />
<link
	href="<%=application.getContextPath()%>/assets/plugins/uniform/css/uniform.default.css"
	rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css"
	href="<%=application.getContextPath()%>/assets/plugins/bootstrap-datepicker/css/datepicker.css" />
<link
	href="<%=application.getContextPath()%>/assets/plugins/gritter/css/jquery.gritter.css"
	rel="stylesheet" type="text/css" />
<link
	href="<%=application.getContextPath()%>/assets/plugins/bootstrap-daterangepicker/daterangepicker-bs3.css"
	rel="stylesheet" type="text/css" />
<link
	href="<%=application.getContextPath()%>/assets/plugins/fullcalendar/fullcalendar/fullcalendar.css"
	rel="stylesheet" type="text/css" />
<link
	href="<%=application.getContextPath()%>/assets/plugins/jqvmap/jqvmap/jqvmap.css"
	rel="stylesheet" type="text/css" />
<link
	href="<%=application.getContextPath()%>/assets/plugins/jquery-easy-pie-chart/jquery.easy-pie-chart.css"
	rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css"
	href="<%=application.getContextPath()%>/assets/plugins/bootstrap-select/bootstrap-select.min.css" />

<link
	href="<%=application.getContextPath()%>/assets/css/style-metronic.css"
	rel="stylesheet" type="text/css" />
<link href="<%=application.getContextPath()%>/assets/css/style.css"
	rel="stylesheet" type="text/css" />
<link
	href="<%=application.getContextPath()%>/assets/css/style-responsive.css"
	rel="stylesheet" type="text/css" />
<link href="<%=application.getContextPath()%>/assets/css/plugins.css"
	rel="stylesheet" type="text/css" />
<link rel="stylesheet"
	href="<%=application.getContextPath()%>/assets/plugins/data-tables/DT_bootstrap.css" />
<link
	href="<%=application.getContextPath()%>/assets/css/pages/tasks.css"
	rel="stylesheet" type="text/css" />
<link
	href="<%=application.getContextPath()%>/assets/css/themes/light.css"
	rel="stylesheet" type="text/css" id="style_color" />
<link href="<%=application.getContextPath()%>/assets/css/print.css"
	rel="stylesheet" type="text/css" media="print" />
<!-- 分页插件 -->
<link
	href="<%=application.getContextPath()%>/assets/bootstrap-pager-niuniu/css/jBootsrapPage.css"
	rel="stylesheet" type="text/css" />
<link href="<%=application.getContextPath()%>/assets/css/custom.css"
	rel="stylesheet" type="text/css" />
<link rel="shortcut icon" href="favicon.ico" />
<!-- 框架必备JS文件 -->
<script
	src="<%=application.getContextPath()%>/assets/plugins/jquery-1.10.2.min.js"
	type="text/javascript"></script>
<!-- 
<script src="<%=application.getContextPath()%>/assets/plugins/jquery-migrate-1.2.1.min.js" type="text/javascript"></script> -->
<script
	src="<%=application.getContextPath()%>/assets/plugins/jquery-ui/jquery-ui-1.10.3.custom.min.js"
	type="text/javascript"></script>
<script
	src="<%=application.getContextPath()%>/assets/plugins/bootstrap/js/bootstrap.min.js"
	type="text/javascript"></script>
<script type="text/javascript"
	src="<%=application.getContextPath()%>/assets/plugins/bootstrap-datetimepicker/js/bootstrap-datetimepicker.min.js"></script>
<!-- 框架必备JS文件 -->
<!-- 日期 -->

<script type="text/javascript"
	src="<%=application.getContextPath()%>/assets/plugins/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
<script
	src="<%=application.getContextPath()%>/assets/scripts/custom/components-pickers.js"></script>
<!-- 日期 -->
<script type="text/javascript"
	src="<%=application.getContextPath()%>/assets/bootstrap-pager-niuniu/js/jBootstrapPage.js"></script>

<script type="text/javascript"
	src="<%=application.getContextPath()%>/assets/plugins/data-tables/jquery.dataTables.js"></script>
<script type="text/javascript"
	src="<%=application.getContextPath()%>/assets/plugins/data-tables/DT_bootstrap.js"></script>
<script
	src="<%=application.getContextPath()%>/assets/scripts/core/datatable.js"></script>
<script
	src="<%=application.getContextPath()%>/assets/scripts/custom/table-ajax.js"></script>
<!-- 下拉框 -->
<script type="text/javascript"
	src="<%=application.getContextPath()%>/assets/plugins/bootstrap-select/bootstrap-select.min.js"></script>
<script
	src="<%=application.getContextPath()%>/assets/scripts/custom/components-dropdowns.js"></script>
<!-- 下拉框 -->
<script
	src="<%=application.getContextPath()%>/assets/scripts/core/app.js"
	type="text/javascript"></script>
<script
	src="<%=application.getContextPath()%>/assets/scripts/custom/index.js"
	type="text/javascript"></script>
<script
	src="<%=application.getContextPath()%>/assets/scripts/custom/tasks.js"
	type="text/javascript"></script>
<script
	src="<%=application.getContextPath()%>/assets/scripts/zrrcj_DataTableAjax.js"
	type="text/javascript"></script>
	<script type="text/javascript"src="<%=application.getContextPath()%>/assets/js/layer.js"></script>
<script>
	jQuery(document).ready(function() {
		App.init();
		Index.init();
		$('.page-sidebar .ajaxify.start').click();
	});
	function showWindow() {
        var url="<%=application.getContextPath()%>/student/list_model_pwd.action";
		$("#responsive").load(url,{},function(){})
			$("#responsive").modal();
	}
	function onask(b) {
        $.ajax({
            type: "POST",
            url:$(b).attr("href"),
            success: function (rsp) {
                var strresult=eval('('+rsp+')');
                if (strresult.msgs!="") {
                   alert(strresult.msgs)
                   if(strresult.url!=""){
   					window.location.href='<%=application.getContextPath()%>'+"/"+strresult.url
   				}
				}else {
					window.location.href='<%=application.getContextPath()%>'+"/"+strresult.url
				}
            },
            error: function(data) {
                alert("error:"+data.responseText);
             }
        });
}
	
	function onsub() {
        $.ajax({
            type: "POST",
            url:$("#dh").attr("action"),
            data: $("#dh").serialize(),
            success: function (rsp) {
            	var msg=eval('('+rsp+')');
            	if (msg.msgs=='操作失败') {
            		layer.msg(msg.msgs, {icon: 5, time: 1000});
				}else {
					layer.msg(msg.msgs, {icon: 1, time: 1000});
				}
            $("#responsive").modal('hide')
           // $("#h").load("/KsSystem/question/list_table.action?r="+new Date().getTime())
            //AjaxPage(10, 8, pagesizse);
            },
            error: function(data) {
            	layer.msg('出现了未知错误，请联系管理员', {icon: 5, time: 1000});
             }
        });
        return false;
}
</script>
</head>
<body class="page-header-fixed">
	<div class="header navbar navbar-fixed-top">
		<div class="header-inner">
			<a class="navbar-brand" href="javascript:;"> <img
				src="<%=application.getContextPath()%>/assets/img/logo.png"
				alt="logo" class="img-responsive" />
			</a>
			<a href="javascript:;" class="navbar-toggle" data-toggle="collapse"
				data-target=".navbar-collapse"> <img
				src="<%=application.getContextPath()%>/assets/img/menu-toggler.png"
				alt="" />
			</a>
			<!-- 用户头像 -->
			<ul class="nav navbar-nav pull-right">
				<li class="dropdown user">
				<a href="#" class="dropdown-toggle"data-toggle="dropdown" data-hover="dropdown"data-close-others="true"> <img alt=""src="<%=application.getContextPath()%>/assets/img/avatar1_small.jpg" />
						<span class="username"> ${user.hn09StuName } </span>
						 <i class="fa fa-angle-down"></i>
				</a>
					<ul class="dropdown-menu">
						<li><a href="extra_profile.html"> <i class="fa fa-user"></i>
								我的文件
						</a></li>
						<li><a href="page_calendar.html"> <i
								class="fa fa-calendar"></i> 我的日程
						</a></li>
						<li><a href="inbox.html"> <i class="fa fa-envelope"></i>
								收件箱 <span class="badge badge-danger"> 3 </span>
						</a></li>
						<li><a href="javascript:;" onclick="showWindow()"> <i class="fa fa-edit"></i> 修改密码 
						</a></li>
						<li class="divider"></li>
						<li><a href="javascript:;" id="trigger_fullscreen"> <i
								class="fa fa-arrows"></i> 全屏
						</a></li>
						<li><a href="<%=application.getContextPath()%>/lock.action"> <i
								class="fa fa-lock"></i> 锁屏
						</a></li>
						<li><a href="<%=application.getContextPath()%>/login.action"> <i
								class="fa fa-key"></i> 注销
						</a></li>
					</ul></li>
			</ul>
			<!-- END 用户头像 -->
		</div>
	</div>
	<div class="clearfix"></div>
	<div class="page-container">
		<div class="page-sidebar-wrapper">
			<div class="page-sidebar navbar-collapse collapse">
				<ul class="page-sidebar-menu" data-auto-scroll="true"
					data-slide-speed="200">
					<li class="sidebar-toggler-wrapper">
						<div class="sidebar-toggler hidden-phone"></div>
					</li>
					<li class="sidebar-search-wrapper">
						<form class="sidebar-search" action="" method="POST">
							<div class="form-container">
								<div class="input-box">
									<a href="javascript:;" class="remove"> </a> <input type="text"
										placeholder="搜索..." /> <input type="button" class="submit"
										value=" " />
								</div>
							</div>
						</form>
					</li>
					<li class="start"><a class="ajaxify start"
						href="<%=application.getContextPath()%>/stuwelcome.action"> <i
							class="fa fa-home"></i> <span class="title"> 考试 </span> <span
							class="selected"> </span>
					</a></li>
					<li><a href="javascript:;"> <i class="fa fa-user"></i> <span
							class="title"> 学生成绩 </span> <span class="arrow "> </span>
					</a>
						<ul class="sub-menu">
							<li><a href="<%=application.getContextPath()%>/score/list.action"
								class="ajaxify">成绩查询</a></li>
						</ul></li>
					<li><a href="javascript:;"> <i class="fa fa-cogs"></i> <span
							class="title"> 设置 </span> <span class="arrow "> </span>
					</a>
						<ul class="sub-menu">
							<li><a href="email_system.html" class="ajaxify"> 系统设置 </a></li>
						</ul></li>
				</ul>
				<!-- 右边菜单结束 -->
			</div>
		</div>
		<div class="page-content-wrapper">
			<div class="page-content">
				<!-- 主题设置 -->
				<div class="theme-panel hidden-xs hidden-sm">
					<div class="toggler"></div>
					<div class="toggler-close"></div>
					<div class="theme-options">
						<div class="theme-option theme-colors clearfix">
							<span> 主题颜色 </span>
							<ul>
								<li class="color-black current color-default"
									data-style="default"></li>
								<li class="color-blue" data-style="blue"></li>
								<li class="color-brown" data-style="brown"></li>
								<li class="color-purple" data-style="purple"></li>
								<li class="color-grey" data-style="grey"></li>
								<li class="color-white color-light" data-style="light"></li>
							</ul>
						</div>
						<div class="theme-option">
							<span> 布局 </span> <select
								class="layout-option form-control input-small">
								<option value="fluid" selected="selected">宽</option>
								<option value="boxed">窄</option>
							</select>
						</div>
						<div class="theme-option">
							<span> 页眉 </span> <select
								class="header-option form-control input-small">
								<option value="fixed" selected="selected">固定</option>
								<option value="default">默认</option>
							</select>
						</div>
						<div class="theme-option">
							<span> 菜单栏跟随 </span> <select
								class="sidebar-option form-control input-small">
								<option value="fixed" selected="selected">固定</option>
								<option value="default" >跟随</option>
							</select>
						</div>
						<div class="theme-option">
							<span> 菜单栏位置 </span> <select
								class="sidebar-pos-option form-control input-small">
								<option value="left" selected="selected">左边</option>
								<option value="right">右边</option>
							</select>
						</div>
						<div class="theme-option">
							<span> 页脚 </span> <select
								class="footer-option form-control input-small">
								<option value="fixed" selected="selected">跟随</option>
								<option value="default" >固定</option>
							</select>
						</div>
					</div>
				</div>
				<!-- 主题设置结束 -->
				<!-- 头部页面-->
				<div class="page-content-body">
					<div class="row">
						<div class="col-md-12">
							<!-- 面包屑导航-->
							<h3 class="page-title">
								交通学院考试系统 <small><%=new Time().getTime() %></small>
							</h3>
							<ul class="page-breadcrumb breadcrumb">
								<li><i class="fa fa-home"></i> <a href="index.html"> 主页
								</a> <i class="fa fa-angle-right"></i></li>
								<li><a href="#"> 我的桌面 </a></li>
								<li class="pull-right">
									<div id="dashboard-report-range"
										class="dashboard-date-range tooltips" data-placement="top"
										data-original-title="Change dashboard date range">
										<i class="fa fa-calendar"></i> <span> </span> <i
											class="fa fa-angle-down"></i>
									</div>
								</li>
							</ul>
							<!-- 面包屑导航结束-->
						</div>
					</div>
				</div>
				<!--文本内容-->
				<%-- <div class="col-md-6">
					<table id="aa"
						class="table  table-bordered table-hover table-condensed ">
						<thead>
							<tr id="ss" role="row" class="heading">
								<th width="15%">学年学期</th>
								<th width="15%">所属班级</th>
								<th width="15%">考试科目</th>
								<th width="10%">考场</th>
								<th width="10%">考试日期</th>
								<th width="10%">考试开始时间</th>
								<th width="10%">考试结束时间</th>
							</tr>
						</thead>
						<tbody id="h">
							<s:iterator var="m" value="plist">
								<tr role="row" class="filter">
									<td><s:property value="#m['hn09PlnTerm']" /></td>
									<td><s:property value="#m['hn09PlnClass']" /></td>
									<td><s:property value="#m['hn09PlnSubject']" /></td>
									<td><s:property value="#m['hn09PlnRoom']" /></td>
									<td>
									<s:property value="#m.hn09PlnDate" />
									</td>
									<td><s:property value="#m['hn09PlnBegin']" /></td>
									<td><s:property value="#m['hn09PlnEnd']" /></td>
									</tr>
							</s:iterator>
						</tbody>
					</table>					
				</div>
				<div class="col-md-6"><button class="  btn blue btn-block start"  onclick="onask(this)" href="<%=application.getContextPath()%>/ask.action" >考试</button>
				</div> --%>
				<!--文本内容-->
				<!-- 头部页面结束-->
			</div>
		</div>
	</div>
	<div class="footer">
		<div class="footer-inner">2016 &copy; 在线考试系统 @zrrcj.</div>
		<div class="footer-tools">
			<span class="go-top"> <i class="fa fa-angle-up"></i>
			</span>
		</div>
	</div>
	<div id="responsive" class="modal fade" tabindex="-1" aria-hidden="true">
</div>
</body>
</html>