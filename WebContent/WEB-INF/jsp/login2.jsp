<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="zh">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>CSS3动态背景登录框代码</title>

<link rel="stylesheet"
	href="<%=application.getContextPath()%>/zrrcj/css/login2_styles.css">
<link rel="stylesheet"
	href="<%=application.getContextPath()%>/assets/js/skin/layer.css">
</head>
<body>


<div class="wrapper">
	<div class="container">
		<h1>Welcome</h1>
		<form class="form" method="post" id="from1"
			action="<%=application.getContextPath()%>/Home.action">
			<input class="input"  name="a.hn09StuNo"  type="text" placeholder="用户名">
			<input class="input"  name="a.hn09StuPwd" type="password" placeholder="密码">
			<input class="input"  name="securityCode"  type="text"  placeholder="验证码">
			 <img class="img" style="height: 45px;vertical-align:middle;" id="Verify"
				alt="看不清，换一张"  src="<%=application.getContextPath()%>/image.action">
			<button onclick="return onsub()"  id="login-button">登录</button>
		</form>
	</div>
	<ul class="bg-bubbles">
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
	</ul>

</div>
<script type="text/javascript"
	src="<%=application.getContextPath()%>/assets/js/layer.js"></script>
<script
	src="<%=application.getContextPath()%>/assets/plugins/jquery-1.10.2.min.js"
	type="text/javascript"></script>
<script type="text/javascript">
$('#login-button').click(function(event){
/* 	event.preventDefault();
	$('form').fadeOut(500);
	 $('.wrapper').addClass('form-success');  */
}); 
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
                	alert(strresult.msgs)
                	//layer.msg(strresult.msgs, {icon: 5, time: 1000});
                	$("#Verify").attr("src","<%=application.getContextPath()%>/image.action?timestamp="+new Date().getTime());
                	 //$('.form-success').addClass('wrapper'); 
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