<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>登陆</title>
<link rel="stylesheet"
	href="<%=application.getContextPath()%>/zrrcj/css/normalize.css">
<link rel="stylesheet"
	href="<%=application.getContextPath()%>/zrrcj/css/login_css.css">
<script
	src="<%=application.getContextPath()%>/assets/plugins/jquery-1.10.2.min.js"
	type="text/javascript"></script>
<script type="text/javascript"
	src="<%=application.getContextPath()%>/assets/js/layer.js"></script>
<style type="text/css">
img {
	border-radius: 6px;
	-webkit-border-radius: 6px;
	-moz-border-radius: 6px;
}
</style>
</head>
<body>
	<div class="login">
		<h1>Login</h1>
		<form method="post" id="from1"
			action="<%=application.getContextPath()%>/Home.action">
			<input type="text" name="a.hn09StuNo" placeholder="用户名"
				required="required" /> <input type="password" name="a.hn09StuPwd"
				placeholder="密码" required="required" /> <input type="text"
				placeholder="验证码" style="width: 150px; float: left;"
				placeholder="输入验证码" name="securityCode" /> <img
				src="<%=application.getContextPath()%>/image.action"
				style="float: right; width: 140px; height: 40px" id="Verify"
				alt="看不清，换一张" />
			<button onclick="return onsub()"
				class="btn btn-primary btn-block btn-large">登录</button>
		</form>
	</div>
</body>
<script>
	jQuery(document).ready(function() {
	    $("#Verify").click(function(){
	        $(this).attr("src","<%=application.getContextPath()%>/image.action?r="+new Date().getTime());
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
</html>