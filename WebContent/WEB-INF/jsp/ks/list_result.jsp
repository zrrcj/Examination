<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<div class="col-md-12" style="text-align:center">
<s:if test="hnDtl.hn09Qstpaper.hn09QprScore>=90">
<h1>恭喜你获得了优秀</h1><br>
	<h1>${hnDtl.hn09Qstpaper.hn09QprScore }</h1>
</s:if>
<s:elseif test="hnDtl.hn09Qstpaper.hn09QprScore>=80">
<h1>恭喜你获得了优良</h1><br>
<h1>${hnDtl.hn09Qstpaper.hn09QprScore }</h1>
</s:elseif>
<s:elseif test="hnDtl.hn09Qstpaper.hn09QprScore>=70">
<h1>你获得了中等评分</h1><br>
<h1>${hnDtl.hn09Qstpaper.hn09QprScore }</h1>
</s:elseif>
<s:elseif test="hnDtl.hn09Qstpaper.hn09QprScore>=60">
<h1>只获得了及格的评分，还需要加油哦</h1><br>
<h1>${hnDtl.hn09Qstpaper.hn09QprScore }</h1>
</s:elseif>
<s:elseif test="hnDtl.hn09Qstpaper.hn09QprScore<60">
<h1>不及格，要挂科了</h1><br>
<h1>${hnDtl.hn09Qstpaper.hn09QprScore }</h1>
</s:elseif>
<s:elseif test="hnDtl.hn09Qstpaper.hn09QprScore>100">
<h1>成绩系统出现错误请联系管理员</h1><br>
</s:elseif>
</div>