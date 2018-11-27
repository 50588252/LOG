<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>欢迎登陆物流管理系统后台</title>

	
	<style type="text/css">
	  body {
		padding-bottom: 40px;
	  }
	  .sidebar-nav {
		padding: 9px 0;
	  }
	</style>
	<link href="<%=request.getContextPath() %>/static/css/charisma-app.css" rel="stylesheet">
	<link href='<%=request.getContextPath() %>/static/css/uniform.default.css' rel='stylesheet'>
	<link id="bs-css" href="<%=request.getContextPath() %>/static/css/bootstrap-cerulean.css" rel="stylesheet">	
	<script type="text/javascript" src="<%=request.getContextPath() %>/static/js/jquery-1.8.3.js"></script>
</head>

<body>
		<div class="container-fluid">
		<div class="row-fluid">
		
			<div class="row-fluid">
				<div class="span12 center login-header">
					<h2>Welcome to Logistics Management System</h2>
				</div><!--/span-->
			</div><!--/row-->
			
			<div class="row-fluid">
				<div class="well span5 center login-box">
					<div class="alert alert-info">
						Please login with your Username and Password.
					</div>
					<form class="form-horizontal"  id="lgform" action="index" method="post">
						<fieldset>
							<div class="input-prepend" title="Username" data-rel="tooltip">
								<span class="add-on"><i class="icon-user"></i></span><input autofocus class="input-large span10" name="username" id="username" type="text" value="ynx" />
							</div>
							<div class="clearfix"></div>
							<br/>
							<div class="input-prepend" title="Password" data-rel="tooltip">
								<span class="add-on"><i class="icon-lock"></i></span><input class="input-large span10" name="password" id="password" type="password" value="123" />
							</div>
							<div class="clearfix"></div>
							<div class="input-prepend">
							<br/>
							<label class="remember" for="remember">&nbsp;&nbsp;&nbsp;<input type="checkbox" id="remember" />Remember me</label>
							</div>
							<div class="clearfix"></div>
							<p class="center span5">
							<button type="button"  id="submit" class="btn btn-primary">Login</button>
							</p>
						</fieldset>
					</form>
				</div>
			</div>
		</div>	
	</div>		
</body>
</html>
<script>
  $(document).ready(function(){	
  		//登陆时间
       $("#submit").click(function(){
       	   $.ajax({							
				url:"<%=request.getContextPath()%>/lg",
				type:"post",
				data:$("#lgform").serialize(),
				dataType:"json",
				success:function(val){
					if(val==2){
						alert("恭喜您登录成功!");
						window.location.href="<%=request.getContextPath()%>/index";
					}else{
						alert("用户名或密码错误,请重试!");
						window.location.href="<%=request.getContextPath()%>/login";
					}					
				}
			});
       });
}); 	
</script>
