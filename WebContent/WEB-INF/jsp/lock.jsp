<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en" class="no-js">
<!--<![endif]-->
<!-- BEGIN HEAD -->
<head>
<meta charset="utf-8" />
<title>Metronic | Extra - Lock Screen</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta content="width=device-width, initial-scale=1.0" name="viewport" />
<meta content="" name="description" />
<meta content="" name="author" />
<!-- BEGIN GLOBAL MANDATORY STYLES -->
<link href="<%=application.getContextPath() %>/assets/plugins/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css" />
<link href="<%=application.getContextPath() %>/assets/plugins/bootstrap/css/bootstrap.min.css"
	rel="stylesheet" type="text/css" />
<link href="<%=application.getContextPath() %>/assets/plugins/uniform/css/uniform.default.css"
	rel="stylesheet" type="text/css" />
<!-- END GLOBAL MANDATORY STYLES -->
<!-- BEGIN THEME STYLES -->
<link href="<%=application.getContextPath() %>/assets/css/style-metronic.css" rel="stylesheet"
	type="text/css" />
<link href="<%=application.getContextPath() %>/assets/css/style.css" rel="stylesheet" type="text/css" />
<link href="<%=application.getContextPath() %>/assets/css/style-responsive.css" rel="stylesheet"
	type="text/css" />
<link href="<%=application.getContextPath() %>/assets/css/plugins.css" rel="stylesheet" type="text/css" />
<link href="<%=application.getContextPath() %>/assets/css/themes/default.css" rel="stylesheet"
	type="text/css" id="style_color" />
<link href="<%=application.getContextPath() %>/assets/css/pages/lock.css" rel="stylesheet" type="text/css" />
<link href="<%=application.getContextPath() %>/assets/css/custom.css" rel="stylesheet" type="text/css" />
<!-- END THEME STYLES -->
<link rel="shortcut icon" href="favicon.ico" />
<link rel="stylesheet"
	href="<%=application.getContextPath()%>/assets/js/skin/layer.css">
</head>
</head>
<!-- END HEAD -->
<!-- BEGIN BODY -->
<body>
	<div class="page-lock">
		<div class="page-logo">
			<a class="brand" href="index.html"> <img
				src="<%=application.getContextPath() %>/assets/img/logo-big.png" alt="logo" />
			</a>
		</div>
		<div class="page-body">
			<img class="page-lock-img" src="<%=application.getContextPath() %>/assets/img/email/photo2.jpg" alt="">
			<div class="page-lock-info">
				<h1>${a.hn09StuName }</h1>
				<span class="locked"> </span>
				<form id="from1" method="post" class="form-inline" action="<%=application.getContextPath()%>/lockin.action">
					<div class="input-group input-medium">
					<input type="hidden" name="a.hn09StuNo" value="${a.hn09StuNo}">
						<input type="password" class="form-control" placeholder="密码" name="a.hn09StuPwd">
						<span class="input-group-btn">
							<button onclick="return onsub()"class="btn blue icn-only">
								<i class="m-icon-swapright m-icon-white"></i>
							</button>
						</span>
					</div>
					<!-- /input-group -->
					<div class="relogin">
						<a href="<%=application.getContextPath() %>/login.action"> 重新登录 ? </a>
					</div>
				</form>
			</div>
		</div>
		<div class="page-footer">2016 &copy; 交通学院</div>
	</div>
	<script src="<%=application.getContextPath() %>/assets/plugins/jquery-1.10.2.min.js"
		type="text/javascript"></script>
	<script src="<%=application.getContextPath() %>/assets/plugins/jquery-migrate-1.2.1.min.js"
		type="text/javascript"></script>
	<script src="<%=application.getContextPath() %>/assets/plugins/bootstrap/js/bootstrap.min.js"
		type="text/javascript"></script>

	<script src="<%=application.getContextPath() %>/assets/plugins/jquery-slimscroll/jquery.slimscroll.min.js"
		type="text/javascript"></script>
	<script src="<%=application.getContextPath() %>/assets/plugins/jquery.blockui.min.js"
		type="text/javascript"></script>
	<script src="<%=application.getContextPath() %>/assets/plugins/jquery.cokie.min.js" type="text/javascript"></script>
	<script src="<%=application.getContextPath() %>/assets/plugins/uniform/jquery.uniform.min.js"
		type="text/javascript"></script>
	<script src="<%=application.getContextPath() %>/assets/plugins/backstretch/jquery.backstretch.min.js"
		type="text/javascript"></script>
	<script src="<%=application.getContextPath() %>/assets/scripts/core/app.js"></script>
	<script src="<%=application.getContextPath() %>/assets/scripts/custom/lock.js"></script>
	<script type="text/javascript"
	src="<%=application.getContextPath()%>/assets/js/layer.js"></script>
	<script>
		jQuery(document).ready(function() {
			App.init();
			Lock.init();
		});
		function onsub() {
	        $.ajax({
	            type: "POST",
	            url:$("#from1").attr("action"),
	            data: $("#from1").serialize(),
	            success: function (rsp) {
	                var strresult=eval('('+rsp+')');
	                if (strresult.msgs!="") {
	                	layer.msg(strresult.msgs, {icon: 5, time: 1000});
	                	$("#Verify").attr("src","<%=application.getContextPath()%>/image.action?timestamp="+new Date().getTime());
					}else {
						window.location.href='<%=application.getContextPath()%>'+ "/" + strresult.url
				}
			},
			error : function(data) {
				layer.msg('出现了未知错误，请联系管理员', {icon: 5, time: 1000});
			}
		});
		return false;
	}
	</script>
</body>
</html>