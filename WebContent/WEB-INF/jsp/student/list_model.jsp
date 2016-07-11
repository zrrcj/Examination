<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<script type="text/javascript">
//# sourceURL=http://student/list_model.js
	var p = '${student.hn09StuSex}';
	$("#sex  option[value='" + p + "']").attr("selected", true);
	var a = '${student.hn09StuClsflag}';
	$('#cls  option[value="' + a + '"]').attr("selected", true);
</script>
<div class="modal-dialog">
	<div class="modal-content">
		<div class="modal-header">
			<button type="button" class="close" data-dismiss="modal"
				aria-hidden="true"></button>
			<h4 class="modal-title">修改用户</h4>
		</div>
		<div class="modal-body">
			<div class="scroller" style="height: 300px" data-always-visible="1"
				data-rail-visible1="1">
				<form action="<%=application.getContextPath()%>/student/save.action"
					method="post" id="dh">
					<div class="row">
						<div class="col-md-6">
							<p>
							<input type="hidden" value="${student.hn09StuId }"  name="student.hn09StuId"/>
								<input type="text" class=" form-control"
									placeholder="请输入学号" name="student.hn09StuNo"
									value="${student.hn09StuNo }">
							</p>
							<p>
								<select id="cls" class="bs-select  form-control"
									name="student.hn09StuClsflag">
									<s:iterator var="m" value="list">
										<option  value="<s:property value="#m.hn09ClsFlag"/>"><s:property
												value="#m.hn09ClsName" /></option>
									</s:iterator>
								</select>
							</p>

						</div>
						<div class="col-md-6">
							<p>
								<input name="student.hn09StuName" type="text"
									class=" form-control" placeholder="请输入姓名"
									value="${student.hn09StuName }">
							</p>
							<p>
								<select id="sex" class="bs-select  form-control"
									name="student.hn09StuSex">
									<option value="男">男</option>
									<option value="女">女</option>
								</select>
							</p>
						</div>
					</div>
				</form>
			</div>
		</div>
		<div class="modal-footer">
			<button type="button" data-dismiss="modal" class="btn default">关闭</button>
			<button type="button" class="btn green" onclick="onsub()">提交</button>
		</div>
	</div>
</div>