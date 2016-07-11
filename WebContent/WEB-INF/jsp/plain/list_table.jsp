<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<s:iterator var="m" value="list">
	<tr role="row" class="filter">
		<td><s:property value="#m['hn09PlnTerm']" /></td>
		<td><s:property value="#m['hn09PlnClass']" /></td>
		<td><s:property value="#m['hn09PlnSubject']" /></td>
		<td><s:property value="#m['hn09PlnRoom']" /></td>
		<td><s:property value="#m['hn09PlnDate']" /></td>
		<td><s:property value="#m['hn09PlnBegin']" /></td>
		<td><s:property value="#m['hn09PlnEnd']" /></td>
		<td>
		<ol>
		<s:iterator var="va" value="#m.hn09PlainDtls">
		<li>题型：<s:property value="#va.hn09PlndtlQsttype" /><br>题数：<s:property value="#va.hn09PlndtlCount" /><br>每题分数：<s:property value="#va.hn09PlndtlPer" /></li>
		</s:iterator>
		</ol>
		</td>
		<td><p><a class='btn blue ' onclick="showWindow(this)" hrefs="<%=application.getContextPath()%>/plain/list_model.action?hnPlain.hn09PlnId=<s:property value="#m['hn09PlnId']"/>"><i class='fa fa-pencil' >修改</i></a></p>
		<p><a class='btn blue ' onclick="showWindow(this)" hrefs="<%=application.getContextPath()%>/plain/list_model_dtl.action?hnPlain.hn09PlnId=<s:property value="#m['hn09PlnId']"/>"><i class='fa fa-pencil' >添加考试内容</i></a></p>
		</td>
	</tr>
</s:iterator>