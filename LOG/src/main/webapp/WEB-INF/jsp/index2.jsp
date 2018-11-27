<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html>
	<head>
	    <title>房屋出租</title>
	    <meta charset="utf-8">
	    <meta name="viewport" content="width=device-width, initial-scale=1">
	    <link rel="stylesheet" href="<%=request.getContextPath() %>/static/css/bootstrap.min.css">
	    <script src="<%=request.getContextPath()%>/static/js/jquery.min.js"></script>
	    <script src="<%=request.getContextPath()%>/static/js/bootstrap.min.js"></script>
	    <script type="text/javascript" src="<%=request.getContextPath() %>/static/js/jquery-1.8.3.js"></script>
	    <style type="text/css">
	        #page{
	            width: 1450px;
	            height: 800px;
	            margin: 0 auto;
	        }
	        #right{
	   			margin: 100px auto;
	        }
	        #btn{
	            width: 150px;
	            float: right;
	        }
	        .btn btn-primary{
	            display: inline-block;
	            background: lightgray;
	        }
	    </style>
	</head>
  
<body>
	<div id="page">
	    <div class="container" id="right">
	        <div class="container" id="btn">
	            <div class="btn-group">
	                <button type="button" id="add" class="btn btn-primary">新增图书申请</button>
	            </div>
	            
	        </div>
	        <table class="table table-hover">
	            <thead>
		            <tr>
		                <th>房屋名称</th>
		                <th>描述</th>
		                <th>价格</th>
		                <th>日期</th>  
		                <th>面积</th>
		                <th>联系方式</th>
		                <th>操作</th>
		            </tr>
	            </thead>
	            <tbody id="tbody">
					<tr>
						<!-- <td>1</td><td>1</td><td>1</td><td>1</td><td>1</td><td>1</td> -->
					</tr>
	            </tbody>
	        </table>
	        <div class="container">
	            <div class="btn-group">
	                <button type="button" class="btn btn-primary"><<</button>
	                <button type="button" class="btn btn-primary"><</button>
	                <button type="button" class="btn btn-primary">第1/1页</button>
	                <button type="button" class="btn btn-primary">></button>
	                <button type="button" class="btn btn-primary">>></button>
	            </div>
	        </div>
	    </div>
	</div>
	</body>
</html>

<script type="text/javascript">
	$(document).ready(function(){	
	 //页面加载方法
		function flashPage(){
			$.ajax({
				url:"<%=request.getContextPath()%>/list",
				data:null,
				dataType:"json",
				type:"post",
				success:function(val){
					$("table tr").eq(0).nextAll().remove();
					//$("#tbody").remove();
					//var ss = eval("(" + val + ")"); //转json对象
					$.each(val,function(key,value){
					 var tr="<tr><td>"+value.title+"</td><td>"+value.description+"</td><td>"+value.price+"</td><td>"+value.pubdate+"</td><td>"+value.floorage+"</td><td>"+value.contact+"</td><td ><a id='modify' href='#'>修改</a>&nbsp;&nbsp;<a id='del' href='javascript:void(0)' tid='"+value.id+"' >删除</a></td></tr>";
					 $("#tbody").append(tr);
				}
				
			  )}
			})
		   }
		 flashPage();
		 
       $("#add").live("click",function(){
         	 alert("登陆");       				
       }); 	

});
	
</script>
