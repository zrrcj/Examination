<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<script type="text/javascript">
//# sourceURL=http://tk/l.js

	var i=${hnDtl.hn09Question.hn09QstCount};
	var a="";
	for (var t = 0; t < i; t++) {
		if(t==(i-1)){
			a+='<div class="col-md-6">空'+(t+1)+'<p><input type="text" onkeydown="clicks(event)" class=" form-control" placeholder="请输入空'+(t+1)+'"name="hnDtl.hn09QprdtlAnswer"></p></div>'
		}else{
		a+='<div class="col-md-6">空'+(t+1)+'<p><input type="text" class=" form-control" placeholder="请输入空'+(t+1)+'"name="hnDtl.hn09QprdtlAnswer"></p></div>'
	         }
		}
	$("#k").html(a);
</script>
<form action="<%=application.getContextPath()%>/ks/save.action"
	method="post" id="dh">
	<div class="col-md-12">
		<div class="alert alert-success">
			<h3>
				<s:property value="hnDtl.hn09QprdtlAsk" escape="false" />
				<input type="hidden" value="${hnDtl.hn09QprdtlId}"  name="hnDtl.hn09QprdtlId"/>
			</h3>
		</div>
	</div>
	<div class="col-md-12">
	<div id="k">
		</div>
	</div>
</form>