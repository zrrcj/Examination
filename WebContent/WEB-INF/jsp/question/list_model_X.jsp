<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
		<div class="col-md-6">
			<p>
				A:<input type="text" class=" form-control" placeholder="请输入A选项"
					name="hnSelectitems[0].hn09SiContent" >
					<input type="hidden"  name="hnSelectitems[0].hn09SiName" value="A">
			</p>
		</div>
		<div class="col-md-6">
			<p>
				B:<input type="text" class=" form-control" placeholder="请输入B选项"
					name="hnSelectitems[1].hn09SiContent" >
					<input type="hidden"  name="hnSelectitems[1].hn09SiName" value="B">
			</p>
		</div>
		<div class="col-md-6">
		<p>
				C：<input type="text" class=" form-control" placeholder="请输入C选项"
					name="hnSelectitems[2].hn09SiContent">
					<input type="hidden"  name="hnSelectitems[2].hn09SiName" value="C">
			</p>
		</div>
		<div class="col-md-6">
			<p>
				D:<input type="text" class=" form-control" placeholder="请输入D选项"
					name="hnSelectitems[3].hn09SiContent" >
					<input type="hidden"  name="hnSelectitems[3].hn09SiName" value="D">
			</p>
		</div>
		<div class="col-md-12">
			<p>
			正确答案：
			<select id="km" class="bs-select  form-control" name="hnAnswer[0].hn09AskContent" >
			 <option value="A">A</option>
			 <option value="B">B</option>
			 <option value="C">C</option>
			 <option value="D">D</option>
			</select>
			</p>
		</div>