<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<div class="modal-dialog">
	<div class="modal-content">
		<div class="modal-header">
			<button type="button" class="close" data-dismiss="modal"
				aria-hidden="true"></button>
				<h4 class="modal-title">修改答案</h4>
		</div>
		<div class="modal-body">
			<div class="scroller" style="height: 300px" data-always-visible="1"
				data-rail-visible1="1">
				<form action="<%=application.getContextPath()%>/question/list_answer_save.action" method="post" id="dh">
						 <input type="hidden"  name="subject.hn09QstId" value="<s:property value="subject.hn09QstId" />">
						 <input type="hidden"  name="sm.hn09SbjId" value="<s:property value="subject.hn09Subject.hn09SbjId" />">
						<s:bean name="com.ks.common.I" id="counter">
						<s:param name="first"  value="1"/>
						<s:param name="last"  value="hnAnswer.size"/>
						<s:iterator var="m"  value="hnAnswer">
	                            <div class="col-md-6">空<s:property value="i"/>
	                            <p>
	                            <input type="text" class=" form-control" name="hnAnswer[<s:property value="m-1"/>].hn09AskContent" value="<s:property value="#m[0]" />">
	                            <input type="hidden"  name="hnAnswer[<s:property value="a-1"/>].hn09AskId" value="<s:property value="#m[1]" />">
	                            </p>
	                            </div> 
		                     </s:iterator>
                             </s:bean>
				</form>
			</div>
		</div>
		<div class="modal-footer">
			<button type="button" data-dismiss="modal" class="btn default">关闭</button>
			<button type="button" class="btn green" onclick="onsub()">提交</button>
		</div>
	</div>
</div>