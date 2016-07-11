<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<form action="<%=application.getContextPath()%>/ks/save.action"
	method="post" id="dh">
	<div class="col-md-6">
		<div class="alert alert-success">
			<h3>
				<s:property value="hnDtl.hn09QprdtlAsk" escape="false" />
				<input type="hidden" value="${hnDtl.hn09QprdtlId}"  name="hnDtl.hn09QprdtlId"/>
			</h3>
	</div>
	</div>
	<div class="col-md-3">
		<p>
			正确答案： <select id="km" class="bs-select  form-control"
				name="hnDtl.hn09QprdtlAnswer">
				<option value="T">正确</option>
				<option value="F">错误</option>
			</select>
		</p>
	</div>
</form>