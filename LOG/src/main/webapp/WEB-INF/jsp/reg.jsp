<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>注册页面</title>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/static/css/regist.css">
    <script type="text/javascript" src="<%=request.getContextPath() %>/static/js/jquery.min.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath() %>/static/js/jquery-1.8.3.js"></script>
</head>
<style>
	.wrapper{
	background-image: url("<%=request.getContextPath() %>/static/img/reg/bj.gif");
	background-size: 100% 100%;
	position: relative;
}
</style>
<body>
    <div class="wrapper">
        <article>
            <h1><em></em><span>应科技术有限公司</span></h1>
            <div class="main">
                <form id="regform" action="<%=request.getContextPath()%>/login" method="post">
                   <div class="userName">
                        <input type="text" name="username" placeholder="用户名"><em>由5-8个字符组成！</em>
                    </div>
                    <div class="password">
                        <input type="password" name="password" placeholder="密码"><em>使用字母、数字、符号两种及以上的组合，8-12个字符</em>
                    </div>
                    <div class="againpwd">
                        <input type="text" name="name" placeholder="请输入昵称"><em>昵称</em>
                    </div>
                    <div class="tel">
                        <input type="telephone" name="telephone" placeholder="手机号"><em>由11个字符组成！</em>
                    </div>
                    
                    <br/>
                    <input type="button" name="pwd" id="reg" value="注册" style="background:#FF0000;color:white">
                </form>
            </div>
        </article>
        <footer>
            <ul>
                <li><a href="#">联系我们</a></li>
                <li><a href="#">关于我们</a></li>
                <li><a href="#">人才招聘</a></li>
                <li><a href="#">友情链接</a></li>
                <li><a href="#">公司地址</a></li>
                <li><a href="#">关注我们</a></li>
            </ul>
        </footer>
    </div>
</body>
</html>
<script>
$(document).ready(function(){	
  		//注册
       $("#reg").click(function(){
       		alert("注册");
       	   $.ajax({							
				url:"<%=request.getContextPath()%>/register",
				type:"post",
				data:$("#regform").serialize(),
				dataType:"json",
				success:function(val){
					alert(val);
					if(val=="true"){
						alert("恭喜您注册成功!自动前往登陆页面");
						window.location.href="<%=request.getContextPath()%>/login";
					}else{
						alert("注册失败,请重试!");
						window.location.href="<%=request.getContextPath()%>/reg";
					}					
				}
			});
       });
});

</script>