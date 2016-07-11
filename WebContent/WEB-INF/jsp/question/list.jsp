<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<script type="text/javascript">
//# sourceURL=http://class/list.js
//数据初始化
var pagesizse=${record}//分页总条数
$(function() {
	$("#h").load("/KsSystem/question/list_table.action?r="+new Date().getTime())
	AjaxPage(10, 8, pagesizse);
});

	function showWindow(t,ask) {
        var url=$(t).attr("hrefs");
		$("#responsive").load(url,[],function(){
			ComponentsDropdowns.init();//下拉框初始化
		})
		if (ask!=undefined&&ask!="") {
			$("#as").html(ask);
			//document.getElementById('as').innerHTML=ask;
			$("#responsive").modal();
		}else {
			$("#responsive").modal();
		}
		
	}
	//ajax分页数据展示
	function AjaxPage(pageSize, buttons, total) {
        $(".niuniu-pagination").jBootstrapPage({
            pageSize : pageSize==undefined?10:pageSize,
            total : total,
            maxPageButton:buttons==undefined?10:buttons,
            onPageClicked: function(obj, pageIndex) {
            	$("#h").load("/KsSystem/question/list_table.action?pageindex="+(pageIndex+1)+"&pagesize="+pageSize+"&r="+new Date().getTime())
            }
            });
    }
	//保存方法
	function onsub() {
        $.ajax({
            type: "POST",
            url:$("#dh").attr("action"),
            data: $("#dh").serialize(),
            success: function (rsp) {
            	var msg=eval('('+rsp+')');
            	if (msg.msgs=='操作失败') {
            		layer.msg(msg.msgs, {icon: 5, time: 1000});
				}else {
					layer.msg(msg.msgs, {icon: 1, time: 1000});
				}
            	
            $("#responsive").modal('hide')
            $("#h").load("/KsSystem/question/list_table.action?r="+new Date().getTime())
            AjaxPage(10, 8, pagesizse);
            },
            error: function(data) {
            	layer.msg('出现了未知错误，请联系管理员', {icon: 5, time: 1000});
             }
        });
        return false;
}
</script>
<!-- BEGIN PAGE HEADER-->
<div class="row">
	<div class="col-md-12" style="margin-bottom: 15px;">
		<h3 class="page-title">
			科目管理<small> 科目列表</small>
		</h3>
		<ul class="page-breadcrumb breadcrumb">
			<li class="btn-group"></li>
			<li><i class="fa fa-home"></i> <a href="index.html"> 主页 </a> <i
				class="fa fa-angle-right"></i></li>
			<li><a href="#"> 科目管理 </a> <i class="fa fa-angle-right"></i></li>
			<li><a href="#"> 科目列表 </a></li>
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
		<div class="portlet" >
			<div class="portlet-title">
				<div class="actions" style="padding-bottom: 10px;">
					<a id="add" onclick="showWindow(this)" hrefs="/KsSystem/question/list_model.action" data-toggle="modal" href="#"
						class="btn default yellow-stripe"> <i class="fa fa-plus"></i>
						<span class="hidden-480"> 添加 </span>
					</a>
					<div class="btn-group">
						<a class="btn default yellow-stripe" href="#"
							data-toggle="dropdown"> <i class="fa fa-share"></i> <span
							class="hidden-480"> 工具 </span> <i class="fa fa-angle-down"></i>
						</a>
						<ul class="dropdown-menu pull-right">
							<li><a href="#"> 导出EXECL</a></li>
							<li><a href="#"> 导出 CSV </a></li>
							<li class="divider"></li>
							<li><a href="#"> Print Invoices </a></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="portlet-body">
				<div class="table-container">
				<div class="table-responsive">
					<table id="aa" class="table  table-bordered table-hover table-condensed ">
						<thead>
							<tr id="ss" role="row" class="heading">
							    <th width="25%">问题</th>
								<th width="15%">题型</th>
								<th width="15%">答案数量</th>
								<th width="15%">隶属科目</th>
								<th width="15%">答案</th>
								<th width="15%">操作</th>
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
<!-- responsive 小琪新添加：弹窗-->
<div id="responsive" class="modal fade" tabindex="-1" aria-hidden="true">
</div>