<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<script type="text/javascript">
//# sourceURL=http://tk/l.js
function loadinput() {
	var i=$("#cun").val();
	var a="";
	for (var t = 0; t < i; t++) {
		a+='<div class="col-md-6">得分点'+(t+1)+'<p><input type="text" class=" form-control" placeholder="请输入得分点'+(t+1)+'"name="hnAnswer['+t+'].hn09AskContent" value="${hn09Class.hn09ClsFlag }"></p></div>'
	}
	$("#df").html(a);
}
</script>
<div class="col-md-12">
			<p>
			请选择填空数量：
			<select id="cun" class="bs-select  form-control" name="subject.hn09QstCount" onchange="loadinput()">
			<option value="0">请选择得分点数量</option>
			 <option value="1">1个</option>
			 <option value="2">2个</option>
			 <option value="3">3个</option>
			 <option value="4">4个</option>
			 <option value="5">5个</option>
			 <option value="6">6个</option>
			 <option value="7">7个</option>
			 <option value="8">8个</option>
			 <option value="9">9个</option>
			 <option value="10">10个</option>
			</select>
			</p>
		</div>
		<div id="df">
		</div>