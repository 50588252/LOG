<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<html>

<head>
	<title>新客户登记 - 物流管理系统</title>
	<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
	<style media="all" type="text/css">@import "<%=request.getContextPath()%>/static/css/all.css";</style>
	<script type="text/javascript">
		function check(){
			var customerName = document.frm1.customerName.value;
			var idcard = document.frm1.idcard.value;
			var officePhoneNumber = document.frm1.officePhoneNumber.value;
			var deliveryAddress = document.frm1.deliveryAddress.value;
			var customerArea = document.frm1.customerArea.value;
			if(customerName==null||customerName==""){
				alert("客户姓名不能为空！");
				document.frm1.customerName.focus();
				return false;
			}
			if(idcard==null||idcard==""){
				alert("身份证号不能为空！");
				document.frm1.idcard.focus();
				return false;
			}
			if(officePhoneNumber==null||officePhoneNumber==""){
				document.frm1.officePhoneNumber.focus();
				alert("座机不能为空！");
				return false;
			}
			if(deliveryAddress==null||deliveryAddress==""){
				document.frm1.deliveryAddress.focus();
				alert("联系地址不能为空！");
				return false;
			}
			if(customerArea==null||customerArea==""){
				document.frm1.customerArea.focus();
				alert("区域不能为空！");
				return false;
			}

			window.location.href='search.html';
		}
	</script>
</head>
<body style="background: none">
	<div class="top-bar">
		<h1>新客户登记</h1>
		<div class="breadcrumbs">
			<div class="button-bar">
				<input type="button" name="Submit" value="帮助" class="button"/>
				<input type="button" class="button" onclick="check()" value="保存"/>
			</div>
			<a href="<%=request.getContextPath()%>/admin" target="_top">首页</a> /
			<a href="<%=request.getContextPath()%>/admin" target="_top">客户服务中心</a>
		</div>
	</div>
<div class="select-bar"/>
<form name="frm1" method="post">
	<div class="table">
		<img src="<%=request.getContextPath()%>/static/images/bg-th-left.gif" width="8" height="7" alt="" class="left" />
		<img src="<%=request.getContextPath()%>/static/images/bg-th-right.gif" width="7" height="7" alt="" class="right" />
		<table class="listing form" cellpadding="0" cellspacing="0">
			<tr>
				<th class="full" colspan="4">添加新客户(*号为必填项)</th>
			</tr>
			<tr>
				<td class="first">客户姓名(*)</td>
				<td><input type="text" name="customerName" class="text" /></td>
				<td>身份证编号(*)</td>
				<td class="last"><input name="idcard" type="text" class="text" /></td>
			</tr>
			<tr>
				<td class="first">收货地址</td>
				<td><input type="text" class="text" name="site"/></td>
				<td>邮编(*)</td>
				<td class="last"><input name="officePhoneNumber" type="text" class="text" name="post"/></td>
			</tr>
			<tr class="bg">
				<td class="first">移动电话</td>
				<td><input type="text" class="text" /></td>
				<td>邮箱</td>
				<td class="last"><input name="deliveryAddress" type="text" class="text" name="email" /></td>
			</tr>

		</table>
</form>
	</div>
</body>
</html>
