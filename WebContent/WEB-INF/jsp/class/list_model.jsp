<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<script type="text/javascript">
//# sourceURL=http://student/list_model.js
</script>
<div class="modal-dialog">
	<div class="modal-content">
		<div class="modal-header">
			<button type="button" class="close" data-dismiss="modal"
				aria-hidden="true"></button>
			<h4 class="modal-title">添加|修改班级</h4>
		</div>
		<div class="modal-body">
			<div class="scroller" style="height: 300px" data-always-visible="1"
				data-rail-visible1="1">
				<form action="<%=application.getContextPath()%>/class/save.action"method="post" id="dh">
					<div class="row">
						<div class="col-md-6">
							<p>
							<input type="hidden" value="${hn09Class.hn09ClsId }"  name="hn09Class.hn09ClsId"/>
								<input type="text" class="col-md-12 form-control"
									placeholder="请输入班级标识" name="hn09Class.hn09ClsFlag"
									value="${hn09Class.hn09ClsFlag }">
							</p>
						</div>
						<div class="col-md-6">
							<p>
								<input name="hn09Class.hn09ClsName" type="text"
									class="col-md-12 form-control" placeholder="请输入班级名称"
									value="${hn09Class.hn09ClsName }">
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