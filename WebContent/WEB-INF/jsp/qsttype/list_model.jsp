<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<script type="text/javascript">
//# sourceURL=http://student/list_model.js
var p = '${hnQsttype.hn09Subject.hn09SbjId}';
	$("#km  option[value='" + p + "']").attr("selected", true);
</script>
<div class="modal-dialog">
	<div class="modal-content">
		<div class="modal-header">
			<button type="button" class="close" data-dismiss="modal"
				aria-hidden="true"></button>
			<h4 class="modal-title">添加|修改科目</h4>
		</div>
		<div class="modal-body">
			<div class="scroller" style="height: 300px" data-always-visible="1"
				data-rail-visible1="1">
				<form action="<%=application.getContextPath()%>/qsttype/save.action" method="post" id="dh">
					<div class="row">
							<input type="hidden" value="${hnQsttype.hn09QsttpId }"  name="hnQsttype.hn09QsttpId"/>
						<div class="col-md-6">
							<p>
								<select id="km" class="bs-select  form-control"
									name="hnQsttype.hn09Subject.hn09SbjId">
									<option>请选择科目</option>
									<s:iterator var="m" value="kmlist">
										<option  value="<s:property value="#m.hn09SbjId"/>"><s:property
												value="#m.hn09SbjName" /></option>
									</s:iterator>
								</select>
							</p>
						</div>
						<div class="col-md-6">
							<p>
								<input name="hnQsttype.hn09QsttpName" type="text"
									class="form-control" placeholder="请输入题型名称"
									value="${hnQsttype.hn09QsttpName }">
							</p>
						</div>
						<div class="col-md-6">
							<p>
								<input name="hnQsttype.hn09QsttpFlag" type="text"
									class="form-control" placeholder="请输入题型标识"
									value="${hnQsttype.hn09QsttpFlag }">
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