<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<script type="text/javascript">
//# sourceURL=http://quest/list_models_tx.js
var ff = '${subject.hn09QstFlag}';
$("#txs").val(ff);
</script>
<select id="txs" class="bs-select  form-control" name="subject.hn09QstFlag"onchange="loadwt()">
	<option value="TX">请选择题型</option>
	<s:iterator var="m" value="qsttype">
		<option value="<s:property value="#m[1]"/>">
			<s:property value="#m[2]" />
		</option>
	</s:iterator>
</select>