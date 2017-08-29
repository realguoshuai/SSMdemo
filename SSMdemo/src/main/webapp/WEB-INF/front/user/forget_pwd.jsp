<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <base href="${BaseContext}">
    <meta name="viewport" content="initial-scale=1, maximum-scale=1, user-scalable=no">
    <meta charset="utf-8">
    <meta name="renderer" content="webkit">
    <meta name="keywords" content="Web前端视频教程,大数据视频教程,HTML5视频教程,UI视频教程,PHP视频教程,java视频教程,python基础教程">
    <meta name="description" content="智游教育在线课程视频,为您提供java,python,HTML5,UI,PHP,大数据等学科经典视频教程在线浏览学习,精细化知识点解析,深入浅出,想学不会都难,智游教育,学习成就梦想！">
    <link rel="stylesheet" href="css/base.css">
    <link rel="stylesheet" href="css/forget_password.css">
    <link rel="icon" href="favicon.png" type="image/png">
    <title>在线公开课-智游教育|java|大数据|HTML5|python|UI|PHP视频教程</title>

</head>

<body>
    <header>
        <div class="container">
            <img src="img/logo.png" alt="智游">
        </div>
    </header>
    <main>
        <div class="container">
            <c:if test="${not empty message}">
            <div class="alert alert-warning alert-dismissible fade in" role="alert">
                <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">×</span></button>
                <strong>${message}</strong>
            </div>
            </c:if>
            <form class="ma" action="front/user/validateEmailCode.action" method="post" onsubmit="return commitForm();">
                <div class="form_header">
                    <div class="form_title">
                        <h2>忘记密码</h2>
                        <span>通过注册邮箱重设密码</span>
                    </div>
                    <div class="form_back">
                        <a href="index.jsp">返回立即登录</a>
                    </div>
                </div>
                <div class="form_body">
                    <input type="email" placeholder="请输入登录邮箱" name="email">
                    <input type="text" placeholder="请输入验证码" name="code"><input type="button" id="yzmBtn" value="发邮件获取验证码"/>
                    <input type="submit" value="提交">
                </div>
                <div class="form_footer">
                    <div class="FAQ">
                        <span>收不到邮件？查看</span><a href="#">常见问题</a>
                    </div>
                </div>
            </form>
        </div>
    </main>
<%@include file="../include/script.html"%>
    <script type="text/javascript">
		$(function(){
			$("#yzmBtn").click(function(){
				//ajax
				var email=$("input[name='email']");
				if(null!=email.val() && email.val()!=""){
					//alert("====");
					var params={"email":email.val()};
					email.load("front/user/sendEmail.action", params, function(data){
						if(data=="success"){
							alert("邮件发送成功");
						}else{
							alert("邮件发送失败");
						}
					});
					//倒计时
					var time=60;
					var timer= setInterval(function(){
						if(time>0){
							$("#yzmBtn").attr("disabled","disabled");
							$("#yzmBtn").val(time+"s后重新获取");
							time--;
							// alert(time--);
						}else{
							clearInterval(timer);
							$("#yzmBtn").removeAttr("disabled");
							$("#yzmBtn").val("获取验证码");
						}

					},1000) ;
				}else{
					alert("邮箱不能为空");
				}
			});
		});
		function commitForm(){
			console.log("form");
//			return false;
			var code=$("input[name='code']").val();
			if(code!=null&&code!=''){
				return true;
            }else{
				alert('请输入邮件接收到的验证码');
				return false;
            }
		}
    </script>
</body>

</html>