/**
 * 表格的ajax加载
 */
(function($){
	$.fn.extend({
	 "AjaxTables":function(url,p) {
		if (p==undefined) {
			p=""
		}
		$.ajax({
            type: "POST",
            url:url+p,
            success: function (rsp) {
                var json=eval('('+rsp+')');
                var tb=""
                var t=document.getElementById("aa").rows.item(0).cells.length//获取列数
                for (var i = 0; i < json.length; i++) {
                	var tr="<tr role='row' class='filter'>"
                	tr+="<td>"+json[i].hn09StuName+"</td>";
                	tr+="<td>"+json[i].hn09StuNo+"</td>";
                	tr+="<td>"+json[i].hn09StuSex+"</td>";
                	tr+="<td>"+json[i].hn09ClsName+"</td>";
                    tr+="<td><p><a id='blockui' style='height: 30px'  onclick='showWindow(this)' class='btn blue '  hrefs='/KsSystem/student/list_model.action?student.hn09StuId="+json[i].hn09StuId+"&r="+new Date().getTime()+"'><i class='fa fa-pencil' >修改</i></a></p></td>"
                    tr+="</tr>"
                    tb+=tr;
                }
                $("#h").html(tb);
            },
            error: function(data) {
                alert("错误信息:"+data.responseText);
             }
        });
	}
	})
})(jQuery)
	