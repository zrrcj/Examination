<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<script type="text/javascript">
	//# sourceURL=http://stud/list_model.js
	ComponentsPickers.init();
	var p = '${hnPlain.hn09PlnTerm}';
	$("#xq  option[value='" + p + "']").attr("selected", true);
	var p = '${hnPlain.hn09PlnClass}';
	$("#cls  option[value='" + p + "']").attr("selected", true);
	var p = '${hnPlain.hn09PlnSubject}';
	$("#km  option[value='" + p + "']").attr("selected", true);
	function pare() {
	var a=	$("#cou").val();
	var b=	$("#sco").val();
	var c=b/a;
		$("#per").val(c);
	}
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
				<form action="<%=application.getContextPath()%>/plain/savedtl.action"
					method="post" id="dh">
					<div class="row">
						<input type="hidden" value="${hnPlain.hn09PlnId }"
							name="hnPlain.hn09PlnId" />
						<div class="col-md-6">
						题型：
							<p>
								<select id="txs" class="bs-select  form-control"
									name="hnPlainDtl.hn09PlndtlFlag" onchange="loadwt()">
									<option value="TX">请选择题型</option>
									<s:iterator var="m" value="Tlist">
										<option value="<s:property value="#m[1]"/>">
											<s:property value="#m[2]" />
										</option>
									</s:iterator>
								</select>
							</p>
						</div>
						<div class="col-md-6">
						考题数量：
							<p>
							<input id="cou" name="hnPlainDtl.hn09PlndtlCount" type="text"
									class="form-control" placeholder="请输入考题数量"
									value="${hnPlainDtl.hn09PlndtlCount }">
							</p>
						</div>
						<div class="col-md-6">
						总分：
							<p>
								<input id="sco" name="hnPlainDtl.hn09PlndtlScore" type="text"
									class="form-control" placeholder="请输入总分"
									value="${hnPlainDtl.hn09PlndtlScore }" onblur="pare()">
							</p>
						</div>
						<div class="col-md-6">
						单题分数：
							<p>
								<input id="per" name="hnPlainDtl.hn09PlndtlPer"  value="${hnPlainDtl.hn09PlndtlPer }"  class="form-control" type="text"  value="自动计算"  readonly=“” placeholder="Readonly">
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