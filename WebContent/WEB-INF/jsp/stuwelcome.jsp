<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<div class="row">
	<div class="col-md-12" style="margin-bottom: 15px;">
		<h3 class="page-title">
			考试管理<small> 考试安排</small>
		</h3>
		<ul class="page-breadcrumb breadcrumb">
			<li class="btn-group"></li>
			<li><i class="fa fa-home"></i> <a href="index.html"> 主页 </a> <i
				class="fa fa-angle-right"></i></li>
			<li><a href="#"> 考试管理 </a> <i class="fa fa-angle-right"></i></li>
			<li><a href="#"> 考试安排 </a></li>
		</ul>
	</div>
</div>
<!-- BEGIN PAGE CONTENT-->
<div class="row">
	<div class="col-md-12">
		<div class="alert alert-success  display-hide">
			<button class="close" data-close="alert"></button>
			<span id="a"></span>
		</div>
		<div class="portlet">
			<div class="portlet-title">
				<div class="caption"></div>
				<div class="actions" style="padding-bottom: 10px;">
					<div class="btn-group">
					</div>
				</div>
			</div>
			<div class="portlet-body">
				<div class="table-container">
					<div class="table-responsive">
						<div class="col-md-6">
							<table id="aa"
								class="table  table-bordered table-hover table-condensed ">
								<thead>
									<tr id="ss" role="row" class="heading">
										<th width="15%">学年学期</th>
										<th width="15%">所属班级</th>
										<th width="15%">考试科目</th>
										<th width="10%">考场</th>
										<th width="10%">考试日期</th>
										<th width="10%">考试开始时间</th>
										<th width="10%">考试结束时间</th>
									</tr>
								</thead>
								<tbody id="h">
									<s:iterator var="m" value="plist">
										<tr role="row" class="filter">
											<td><s:property value="#m['hn09PlnTerm']" /></td>
											<td><s:property value="#m['hn09PlnClass']" /></td>
											<td><s:property value="#m['hn09PlnSubject']" /></td>
											<td><s:property value="#m['hn09PlnRoom']" /></td>
											<td><s:property value="#m.hn09PlnDate" /></td>
											<td><s:property value="#m['hn09PlnBegin']" /></td>
											<td><s:property value="#m['hn09PlnEnd']" /></td>
										</tr>
									</s:iterator>
								</tbody>
							</table>
						</div>
						<div class="col-md-6">
							<button class="  btn blue btn-block start" onclick="onask(this)"
								href="<%=application.getContextPath()%>/ask.action">考试</button>
						</div>
					</div>
				</div>
			</div>
		</div>
		<ul class="niuniu-pagination"></ul>
	</div>
</div>
