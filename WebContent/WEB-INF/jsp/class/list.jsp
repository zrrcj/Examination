<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<script type="text/javascript">
//# sourceURL=http://class/list.js
//数据初始化
var pagesize=${record}
$(function() {
	AjaxTable("/KsSystem/class/json.action?r="+new Date().getTime());
	AjaxPage(10, 8, pagesize);
});

function AjaxTable(url) {
	$.ajax({
        type: "POST",
        url:url,
        success: function (rsp) {
            var json=eval('('+rsp+')');
            var tb=""
            var t=document.getElementById("aa").rows.item(0).cells.length//获取列数
            for (var i = 0; i < json.length; i++) {
            	var tr="<tr role='row' class='filter'>"
                	tr+="<td>"+json[i].hn09ClsName+"</td>";
            	tr+="<td>"+json[i].hn09ClsFlag+"</td>";
            	 tr+="<td><p><a id='blockui' style='height: 30px'  onclick='showWindow(this)' class='btn blue '  hrefs='/KsSystem/class/list_model.action?hn09Class.hn09ClsId="+json[i].hn09ClsId+"&r="+new Date().getTime()+"'><i class='fa fa-pencil' >修改</i></a></p></td>";
            	tr+="</tr>";
                tb+=tr;
            }
            $("#h").html(tb);
        },
        error: function(data) {
            alert("错误信息:"+data.responseText);
         }
    });
}
	function showWindow(t) {
        var url=$(t).attr("hrefs");
		$("#responsive").load(url,[],function(){
			ComponentsDropdowns.init();//小选添加：下拉框初始化
		})
		$("#responsive").modal({
			//remote:'<%=application.getContextPath()%>/class/json'
		});
	}
	//ajax分页数据展示
	function AjaxPage(pageSize, buttons, total) {
        $(".niuniu-pagination").jBootstrapPage({
            pageSize : pageSize==undefined?10:pageSize,
            total : total,
            maxPageButton:buttons==undefined?10:buttons,
            onPageClicked: function(obj, pageIndex) {
            		$.ajax({
            	        type: "POST",
            	        url:"/KsSystem/class/json.action?pageindex="+(pageIndex+1)+"&pagesize="+pageSize+"?r="+new Date().getTime(),
            	        success: function (rsp) {
            	            var json=eval('('+rsp+')');
            	            var tb=""
            	            var t=document.getElementById("aa").rows.item(0).cells.length//获取列数
            	            for (var i = 0; i < json.length; i++) {
            	            	var tr="<tr role='row' class='filter'>"
            	            	tr+="<td>"+json[i].hn09ClsName+"</td>";
            	            	tr+="<td>"+json[i].hn09ClsFlag+"</td>";
            	                tr+="<td><p><a id='blockui' style='height: 30px'  onclick='showWindow(this)' class='btn blue '  hrefs='/KsSystem/class/list_model.action?hn09Class.hn09ClsId="+json[i].hn09ClsId+"&r="+new Date().getTime()+"'><i class='fa fa-pencil' >修改</i></a></p></td>";
            	                tr+="</tr>";
            	                tb+=tr;
            	            }
            	            $("#h").html(tb);
            	        },
            	        error: function(data) {
            	            alert("错误信息:"+data.responseText);
            	         }
            	    });
            }
            });
    }
	//保存方法
	function onsub() {
		//var id=$("#stuid").attr("name")
        $.ajax({
            type: "POST",
            url:$("#dh").attr("action"),
            data: $("#dh").serialize(),
            success: function (rsp) {
            	var msg=eval('('+rsp+')');
            	layer.msg(msg.msgs, {icon: 1, time: 1000});
            $("#responsive").modal('hide')
            App.startPageLoading();
            AjaxTable("/KsSystem/class/json.action?r="+new Date().getTime());
            AjaxPage(10, 8, pagesize);
            App.stopPageLoading();
            },
            error: function(data) {
            	layer.msg('出现了未知错误，请联系管理员', {icon: 5, time: 1000});
             }
        });
        return false;
}
</script>
<div class="row">
	<div class="col-md-12" style="margin-bottom: 15px;">
		<h3 class="page-title">
			班级管理<small> 班级列表</small>
		</h3>
		<ul class="page-breadcrumb breadcrumb">
			<li class="btn-group"></li>
			<li><i class="fa fa-home"></i> <a href="index.html"> 主页 </a> <i
				class="fa fa-angle-right"></i></li>
			<li><a href="#"> 班级管理 </a> <i class="fa fa-angle-right"></i></li>
			<li><a href="#"> 班级列表 </a></li>
		</ul>
	</div>
</div>
<div class="row">
	<div class="col-md-12">
				<div class="alert alert-success  display-hide">
				<button class="close" data-close="alert"></button>
				<span id="a"></span>
			</div>
		<div class="portlet">
			<div class="portlet-title">
				<div class="actions" style="padding-bottom: 10px;">
					<a id="add" onclick="showWindow(this)" hrefs="/KsSystem/class/list_model.action" data-toggle="modal" href="#"
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
							    <th width="5%">班级名称</th>
								<th width="15%">班级标识</th>
								<th width="15%">修改</th>
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
		<div class="alert alert-danger ">
				<button class="close" data-close="alert"></button>
				<span >请尽量不要修改班级标识</span>
			</div>
	</div>
</div>
<!-- responsive：弹窗-->
<div id="responsive" class="modal fade" tabindex="-1" aria-hidden="true">
</div>