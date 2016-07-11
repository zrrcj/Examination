<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<s:iterator var="m" value="list">
	<tr role="row" class="filter">
		<td><s:property value="#m['hn09QsttpName']" /></td>
		<td><s:property value="#m.hn09Subject.hn09SbjName" /></td>
		<td><p><a class='btn blue ' onclick="showWindow(this)" hrefs="<%=application.getContextPath()%>/qsttype/list_model.action?hnQsttype.hn09QsttpId=<s:property value="#m['hn09QsttpId']"/>"><i class='fa fa-pencil' >修改</i></a></p></td>
	</tr>
</s:iterator>