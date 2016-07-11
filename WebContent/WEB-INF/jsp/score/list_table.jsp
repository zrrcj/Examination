<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<s:iterator var="m" value="list">
	<tr role="row" class="filter">
		<td><s:property value="#m['hn09QprStuname']" /></td>
		<td><s:property value="#m['hn09QprDate']" /></td>
		<td><s:property value="#m['hn09QprClsname']" /></td>
		<td><s:property value="#m['hn09QprName']" /></td>
		<td><s:property value="#m['hn09QprScore']" /></td>
	</tr>
</s:iterator>