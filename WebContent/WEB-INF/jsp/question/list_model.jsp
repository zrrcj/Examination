<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<link href="<%=application.getContextPath()%>/ueditor/themes/default/css/ueditor.css"rel="stylesheet" type="text/css" />
<link href="<%=application.getContextPath()%>/ueditor/themes/iframe.css"rel="stylesheet" type="text/css" />
<link href="<%=application.getContextPath()%>/ueditor/third-party/codemirror/codemirror.css"rel="stylesheet" type="text/css" />
<script type="text/javascript" charset="utf-8" src="<%=application.getContextPath()%>/ueditor/ueditor.config.js"></script>
    <script type="text/javascript" charset="utf-8" src="<%=application.getContextPath()%>/ueditor/ueditor.all.min.js"> </script>
    <script type="text/javascript" charset="utf-8" src="<%=application.getContextPath()%>/ueditor/lang/zh-cn/zh-cn.js"></script>

<script type="text/javascript">
//# sourceURL=http://s/list_models.js
function loadtx() {
	var qsid=$("#km").val();
	var qid='${subject.hn09QstId}';
	var index = layer.load(2); //换了种风格
     $("#tx").load('<%=application.getContextPath()%>/question/list_model_tx.action',{"sm.hn09SbjId":qsid,"subject.hn09QstId":qid},function(){
    	 ComponentsDropdowns.init();
    	 layer.close(index); 
     }) 
}
function loadwt() {
	var tx=$("#txs").val();
	 var wt=$("#wt")
	 if (tx=="J") {
		 wt.load('<%=application.getContextPath()%>/question/list_model_jz.action',{},function(){
			 ComponentsDropdowns.init();
			})
		 //wt.text("我是简答题")
	}else if (tx=='X') {
		wt.load('<%=application.getContextPath()%>/question/list_model_x.action',{},function(){
			
			ComponentsDropdowns.init();
		})
		//wt.text("我是选择题")
		
	}else if (tx=='P') {
		wt.load('<%=application.getContextPath()%>/question/list_model_p.action',{},function(){
			ComponentsDropdowns.init();
		})
		//wt.text("我是判断题")
	}else if (tx=='Z') {
		wt.load('<%=application.getContextPath()%>/question/list_model_jz.action',{},function(){
			ComponentsDropdowns.init();
		})
		//wt.text("我是综合题")
	}else if (tx=='T') {
		wt.load('<%=application.getContextPath()%>/question/list_model_t.action',{},function(){
			ComponentsDropdowns.init();
		})
		//wt.text("我是填空题")
	}
}
 var p ='${subject.hn09Subject.hn09SbjId}';
$("#km  option[value='" + p + "']").attr("selected", true); 
loadtx();
 var ue = UE.getEditor('editor');
ComponentsDropdowns.init(); 
</script>
<div class="modal-dialog ">
	<div class="modal-content">
		<div class="modal-header">
			<button type="button" class="close" data-dismiss="modal"
				aria-hidden="true"></button>
			<h4 class="modal-title">添加|修改问题</h4>
		</div>
		<div class="modal-body" >
			<div class="scroller"  data-always-visible="1"
				data-rail-visible1="1">
				<form action="<%=application.getContextPath()%>/question/save.action" method="post" id="dh">
					<div class="row" >
							<input type="hidden" value="${subject.hn09QstId }"  name="subject.hn09QstId"/>
							<s:if test="subject.hn09QstCount!=null">
							<input type="hidden" value="${subject.hn09QstCount }" name="subject.hn09QstCount"/>
							</s:if>
						<div class="col-md-6">
							<p>
								<select id="km" class="bs-select  form-control"
									name="subject.hn09Subject.hn09SbjId" onchange="loadtx()">
									<option>请选择科目</option>
									<s:iterator var="m" value="list">
										<option  value="<s:property value="#m.hn09SbjId"/>"><s:property
												value="#m.hn09SbjName" /></option>
									</s:iterator>
								</select>
							</p>
						</div>
						<div class="col-md-6">
						<p id="tx">
								<select id="txs" class="bs-select  form-control"
									name="subject.hn09QstFlag">
									<option value="TX">请选择题型</option>
								</select>
							</p>
						</div>
             
						<div  id="wt" ></div>
						   <div class="col-md-12">
						 <script id="editor" type="text/plain" style="width:aout;height:100px;" ></script>
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