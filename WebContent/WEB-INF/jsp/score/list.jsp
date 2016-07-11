<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<script type="text/javascript">
//# sourceURL=http://class/list.js
//数据初始化
//var pagesizse=${record}//分页总条数
$(function() {
	$("#h").load("/KsSystem/score/list_table.action?r="+new Date().getTime())
	//AjaxPage(10, 8, pagesizse);
});
	/* function showWindow(t) {
        var url=$(t).attr("hrefs");
		$("#responsive").load(url,[],function(){
			ComponentsDropdowns.init();//下拉框初始化
		})
		$("#responsive").modal();
	} */
	//ajax分页数据展示
/* 	function AjaxPage(pageSize, buttons, total) {
        $(".niuniu-pagination").jBootstrapPage({
            pageSize : pageSize==undefined?10:pageSize,
            total : total,
            maxPageButton:buttons==undefined?10:buttons,
            onPageClicked: function(obj, pageIndex) {
            	$("#h").load("/KsSystem/score/list_table.action?pageindex="+(pageIndex+1)+"&pagesize="+pageSize+"&r="+new Date().getTime())
            }
            }); */
</script>
<!-- BEGIN PAGE HEADER-->
<div class="row">
	<div class="col-md-12" style="margin-bottom: 15px;">
		<h3 class="page-title">
			成绩管理<small> 成绩列表</small>
		</h3>
		<ul class="page-breadcrumb breadcrumb">
			<li class="btn-group"></li>
			<li><i class="fa fa-home"></i> <a href="index.html"> 主页 </a> <i
				class="fa fa-angle-right"></i></li>
			<li><a href="#"> 成绩管理 </a> <i class="fa fa-angle-right"></i></li>
			<li><a href="#"> 成绩列表 </a></li>
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
						<div class="caption">
</div>
				<div class="actions" style="padding-bottom: 10px;">
					<div class="btn-group">
					</div>
				</div>
			</div>
			<div class="portlet-body">
				<div class="table-container">
				<div class="table-responsive">
					<table id="aa" class="table  table-bordered table-hover table-condensed ">
						<thead>
							<tr id="ss" role="row" class="heading">
							    <th width="10%">姓名</th>
							    <th width="15%">考试时间</th>
							    <th width="15%">所属班级</th>
							    <th width="15%">考试科目</th>
							    <th width="15%">总分</th>
							</tr>
						</thead>
						<tbody id="h">
						
						</tbody>
					</table>
                  </div>
				</div>
			</div>
		</div>
		<ul class="niuniu-pagination"></ul>
	</div>
</div>