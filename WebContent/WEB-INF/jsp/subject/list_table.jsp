<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<s:iterator var="m" value="list">
	<tr role="row" class="filter">
		<td><s:property value="#m['hn09SbjName']" /></td>
		<td><p><a class='btn blue ' onclick="showWindow(this)" hrefs="<%=application.getContextPath()%>/subject/list_model.action?subject.hn09SbjId=<s:property value="#m['hn09SbjId']"/>"><i class='fa fa-pencil' >修改</i></a></p></td>
	</tr>
</s:iterator>