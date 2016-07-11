<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<form action="<%=application.getContextPath()%>/ks/save.action"
	method="post" id="dh">
	<div class="col-md-12">
		<div class="alert alert-success ">
				<s:property value="hnDtl.hn09QprdtlAsk" escape="false" />
				<input type="hidden" value="${hnDtl.hn09QprdtlId}"  name="hnDtl.hn09QprdtlId"/>
		</div>
		<s:iterator var="x" value="hnDtl.hn09Question.hn09Selectitems">
			<div class="alert alert-success col-md-6">
						<s:property value="#x.hn09SiName" />
						:
						<s:property value="#x.hn09SiContent" />
			</div>
		</s:iterator>
	</div>
	<div class="col-md-3">
		<p>
			正确答案： <select id="km" class="bs-select  form-control"
				name="hnDtl.hn09QprdtlAnswer">
				<option value="A">A</option>
				<option value="B">B</option>
				<option value="C">C</option>
				<option value="D">D</option>
			</select>
		</p>
	</div>
</form>