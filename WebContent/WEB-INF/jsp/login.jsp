<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en" class="no-js">
<!--<![endif]-->
<!-- BEGIN HEAD -->
<head>
<meta charset="utf-8" />
<title>登陆</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta content="width=device-width, initial-scale=1.0" name="viewport" />
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
<link
	href="<%=application.getContextPath()%>/assets/css/themes/default.css"
	rel="stylesheet" type="text/css" id="style_color" />
<link
	href="<%=application.getContextPath()%>/assets/css/pages/login-soft.css"
	rel="stylesheet" type="text/css" />
<link href="<%=application.getContextPath()%>/assets/css/custom.css"
	rel="stylesheet" type="text/css" />
<!-- END THEME STYLES -->
<link rel="shortcut icon" href="favicon.ico" />
<script
	src="<%=application.getContextPath()%>/assets/plugins/jquery-1.10.2.min.js"
	type="text/javascript"></script>
<script
	src="<%=application.getContextPath()%>/assets/plugins/jquery-migrate-1.2.1.min.js"
	type="text/javascript"></script>
<script
	src="<%=application.getContextPath()%>/assets/plugins/bootstrap/js/bootstrap.min.js"
	type="text/javascript"></script>
<script
	src="<%=application.getContextPath()%>/assets/plugins/jquery.blockui.min.js"
	type="text/javascript"></script>
<script
	src="<%=application.getContextPath()%>/assets/plugins/jquery.cokie.min.js"
	type="text/javascript"></script>
<script
	src="<%=application.getContextPath()%>/assets/plugins/uniform/jquery.uniform.min.js"
	type="text/javascript"></script>
<script
	src="<%=application.getContextPath()%>/assets/plugins/jquery-validation/dist/jquery.validate.min.js"
	type="text/javascript"></script>
<script
	src="<%=application.getContextPath()%>/assets/plugins/backstretch/jquery.backstretch.min.js"
	type="text/javascript"></script>
<script type="text/javascript"
	src="<%=application.getContextPath()%>/assets/plugins/select2/select2.min.js"></script>
<script
	src="<%=application.getContextPath()%>/assets/scripts/core/app.js"
	type="text/javascript"></script>
<script
	src="<%=application.getContextPath()%>/assets/scripts/custom/login-soft.js"
	type="text/javascript"></script>

</head>
<body class="login">
	<div class="logo">
		<a href="index.html"> <img
			src="<%=application.getContextPath()%>/assets/img/logo-big.png"
			alt="" />
		</a>
	</div>
	<div class="content">
		<form id="from1" class="login-form"
			action="<%=application.getContextPath()%>/Home.action" method="post">
			<h3 class="form-title">用户登录</h3>
			<div class="alert alert-danger display-hide">
				<button class="close" data-close="alert"></button>
				<span id="a"></span>
			</div>
			<div class="form-group">
				<div class="input-icon">
					<i class="fa fa-user"></i> <input
						class="form-control placeholder-no-fix" type="text"
						autocomplete="off" placeholder="输入用户名" name="a.hn09StuNo" />
				</div>
			</div>
			<div class="form-group">
				<!-- 
			<label class="control-label visible-ie8 visible-ie9">密码：</label> -->
				<div class="input-icon">
					<i class="fa fa-lock"></i> <input
						class="form-control placeholder-no-fix" type="password"
						autocomplete="off" placeholder="输入密码" name="a.hn09StuPwd" />
				</div>
			</div>
			<div class="form-group">
				<!-- 
			<label class="control-label visible-ie8 visible-ie9">用户名：</label> -->
				<div class="input-icon">
					<i class="fa fa-user"></i> <input style="width: 150px;float: left;"
						class="form-control placeholder-no-fix" type="text"
						autocomplete="off" placeholder="输入验证码" name="securityCode" />
						<img src="<%=application.getContextPath() %>/image.action" style="float: right;width: 130px;height: 35px" id="Verify"  alt="看不清，换一张"/>
				</div>
			</div>
			<div class="form-actions">
				<button  class="btn blue pull-right" onclick="return onsub()">
					登陆 <i class="m-icon-swapright m-icon-white"></i>
				</button>
			</div>
		</form>

	</div>
	<div class="copyright">2015-2016 &copy; By-zrrcj</div>
</body>
<script>
	jQuery(document).ready(function() {
		App.init();
		Login.init();
		 //点击图片更换验证码
	    $("#Verify").click(function(){
	        $(this).attr("src","<%=application.getContextPath()%>/image.action?timestamp="+new Date().getTime());
	    });
	});
	function onsub() {
            $.ajax({
                type: "POST",
                url:$("#from1").attr("action"),
                data: $("#from1").serialize(),
                success: function (rsp) {
                    var strresult=eval('('+rsp+')');
                    if (strresult.msgs!="") {
                    	$("#a").html(strresult.msgs)
                    	$('.alert-danger', $('.login-form')).show();
                    	$("#Verify").attr("src","<%=application.getContextPath()%>/image.action?timestamp="+new Date().getTime());
					}else {
						window.location.href='<%=application.getContextPath()%>'+"/"+strresult.url
					}
                },
                error: function(data) {
                    alert("error:"+data.responseText);
                 }
            });
            return false;
	}
</script>
</html>