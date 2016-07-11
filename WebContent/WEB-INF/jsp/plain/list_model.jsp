<%@page import="com.ks.common.Time"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<script type="text/javascript">
	//# sourceURL=http://student/list_model.js
	ComponentsPickers.init();
	var p = '${hnPlain.hn09PlnTerm}';
	$("#xq  option[value='" + p + "']").attr("selected", true);
	var p = '${hnPlain.hn09PlnClass}';
	$("#cls  option[value='" + p + "']").attr("selected", true);
	var p = '${hnPlain.hn09PlnSubject}';
	$("#km  option[value='" + p + "']").attr("selected", true);
</script>
<div class="modal-dialog">
	<div class="modal-content">
		<div class="modal-header">
			<button type="button" class="close" data-dismiss="modal"
				aria-hidden="true"></button>
			<h4 class="modal-title">添加|修改考试安排</h4>
		</div>
		<div class="modal-body">
			<div class="scroller" style="height: 300px" data-always-visible="1"
				data-rail-visible1="1">
				<form action="<%=application.getContextPath()%>/plain/save.action"
					method="post" id="dh">
					<div class="row">
						<input type="hidden" value="${hnPlain.hn09PlnId }"
							name="hnPlain.hn09PlnId" />
						<div class="col-md-6">
							<p>
								<select id="xq" class="bs-select  form-control"
									name="hnPlain.hn09PlnTerm">
									<option value="<%=new Time().getMonth()%>"><%=new Time().getMonth()%></option>
								<!-- 	<option>请选择学年学期</option>
									<option value="2016-1">2015-2016-1</option>
									<option value="2016-2">2016-2</option>
									<option value="2017-1">2017-1</option>
									<option value="2017-2">2017-2</option>
									<option value="2018-1">2018-1</option>
									<option value="2018-2">2018-2</option>
									<option value="2019-1">2019-1</option>
									<option value="2019-2">2019-2</option> -->
								</select>
							</p>
						</div>
						<div class="col-md-6">
							<p>
								<select id="cls" class="bs-select  form-control"
									name="hnPlain.hn09PlnClass">
									<option>请选择班级</option>
									<s:iterator var="m" value="Clist">
										<option value="<s:property value="#m.hn09ClsName"/>"><s:property
												value="#m.hn09ClsName" /></option>
									</s:iterator>
								</select>
							</p>
						</div>
						<div class="col-md-6">
							<p>
								<select id="km" class="bs-select  form-control"
									name="hnPlain.hn09PlnSubject" >
									<option>请选择科目</option>
									<s:iterator var="m" value="kmlist">
										<option value="<s:property value="#m.hn09SbjName"/>"><s:property
												value="#m.hn09SbjName" /></option>
									</s:iterator>
								</select>
							</p>
						</div>
						<div class="col-md-6">
							<p>
								<input name="hnPlain.hn09PlnRoom" type="text"
									class="form-control" placeholder="请输入考场"
									value="${hnPlain.hn09PlnRoom }">
							</p>
						</div>
						<div class="col-md-6">
							<div class="input-group input-medium date date-picker"
								data-date-start-date="+0d" data-date-format="yyyy-mm-dd">
								<input class="form-control" type="text"
									name="hnPlain.hn09PlnDate" placeholder="请输入考试日期"
									value="${hnPlain.hn09PlnDate }"> <span
									class="input-group-btn">
									<button class="btn default" type="button">
										<i class="fa fa-calendar"></i>
									</button>
								</span>
							</div>
						</div>
						<div class="col-md-6">
							<p>
								<input name="hnPlain.hn09PlnBegin" type="text"
									class=" form-control" placeholder="请输入考试开始时间"
									value="${hnPlain.hn09PlnBegin }">
						</div>
						<div class="col-md-6">
							<p>
								<input name="hnPlain.hn09PlnEnd" type="text"
									class=" form-control" placeholder="请输入考试结束时间"
									value="${hnPlain.hn09PlnEnd }">
							</p>
						</div>
					</div>
				</form>
			</div>
			<div class="alert alert-danger ">
				<button class="close" data-close="alert"></button>
				<span >开始答题时间和结束答题时间格式为  00：00</span>
			</div>
		</div>
		<div class="modal-footer">
			<button type="button" data-dismiss="modal" class="btn default">关闭</button>
			<button type="button" class="btn green" onclick="onsub()">提交</button>
		</div>
	</div>
</div>