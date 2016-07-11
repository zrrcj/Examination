<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<s:iterator var="m" value="question">
	<tr role="row" class="filter">
		<td><s:property value="#m['hn09QstAsk']"  escape="false"/></td>
		<%-- <td><s:property value="#m['hn09QstFlag']" /></td> --%>
		<td><s:if test='#m.hn09QstFlag=="X"'>
		选择题
		</s:if><s:elseif test='#m.hn09QstFlag=="P"'>
		判断题
		</s:elseif><s:elseif test='#m.hn09QstFlag=="T"'>
		填空题
		</s:elseif><s:elseif test='#m.hn09QstFlag=="J"'>
		简答题
		</s:elseif><s:elseif test='#m.hn09QstFlag=="Z"'>
		综合题
		</s:elseif>
		</td>
		<td><s:property value="#m['hn09QstCount']" /></td>
		<td><s:property value="#m.hn09Subject.hn09SbjName" /></td>
		<td>
		<ol>
		<s:iterator var="va" value="#m.hn09Answers">
		<li><s:property value="#va.hn09AskContent" /></li>
		</s:iterator>
		</ol>
		</td>
		<td><p><a class='btn blue ' onclick="showWindow(this)" hrefs="<%=application.getContextPath()%>/question/list_answer.action?subject.hn09QstId=<s:property value="#m['hn09QstId']"/>"><i class='fa fa-pencil' >修改答案</i></a></p>
	    <p><a class='btn blue ' onclick="showWindow(this)" hrefs="<%=application.getContextPath()%>/question/list_model.action?subject.hn09QstId=<s:property value="#m['hn09QstId']"/>&subject.hn09QstFlag=<s:property value="#m['hn09QstFlag']" />"><i class='fa fa-pencil' >修改问题</i></a></p></td>
	</tr>
</s:iterator>