<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
    <link rel="stylesheet" href="css/profile.css">
    <link rel="icon" href="favicon.png" type="image/png">
    <title>在线公开课-智游教育|java|大数据|HTML5|python|UI|PHP视频教程</title>

</head>

<body class="w100">
   <jsp:include page="uheader.jsp"></jsp:include>
    <main>
        <div class="container">
            <h2>我的资料</h2>
            <div id="profile_tab">
                <ul class="profile_tab_header f_left clearfix">
                    <ul class="profile_tab_header f_left clearfix">
                        <li><a href="front/user/profile.action">更改资料</a></li>
                        <li class="profile_tab_line">|</li>
                        <li><a href="front/user/avatar.action">更改头像</a></li>
                        <li class="profile_tab_line">|</li>
                        <li><a href="front/user/password.action">密码安全</a></li>
                    </ul>
                </ul>
                <div class="proflle_tab_body">
                    <div class="proflle_tab_workplace clearfix">
                        <div class="profile_avatar_area">
                        
                           <c:if test="${empty user.imgurl}">
		                         <img id="avatar"  src="img/avatar_lg.png" alt="">
		                      </c:if>
		                      
		                      <c:if test="${not empty user.imgurl}">
		                         <img id="avatar" width="200px" height="200px" src="${user.imgurl}" alt="">
		                      </c:if>
                           
                        </div>
                        <div class="profile_ifo_area">
                            <form action="front/user/updatePassword.action" method="post">
                                <div class="form_group">
                                    <span class="dd">旧&#x3000;密&#x3000;码：</span>
                                    <input type="password" id="oldPassword" name="oldPassword"><span id="oldMsg"></span>
                                </div>
                                <div class="form_group">
                                    <span class="dd">新&#x3000;密&#x3000;码：</span>
                                    <input type="password" id="newPassword"  name="newPassword">
                                </div>
                                <div class="form_group">
                                    <span class="dd">确认新密码：</span>
                                    <input type="password" id="newPassword02" name="newPassword02"><span id="passMsg"></span>
                                </div>
                                <div class="form_submit dd">
                                    <input type="submit" value="保&#x3000;存">
                                    <a href="#">取消</a>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>
    <jsp:include page="ufooter.jsp"></jsp:include>
    <%@include file="../include/script.html"%>
   <script type="text/javascript">

	   var regIsCommitOldPass=false;
	   var regIsCommitPsw=false;

	   $(function(){

		   $("#oldPassword").blur(function(){


			   var oldPass= $("#oldPassword").val();
			   if(null!=oldPass && oldPass!=""){

				   var params={"password":oldPass};
				   // alert(params);
				   $.post("front/user/validatePassword.action",params,function(data){
					   if(data=="success"){
						   regIsCommitOldPass=true;
						   $("#oldMsg").text("原密码正确").css("color","green");
					   }else{
						   regIsCommitOldPass=false;
						   $("#oldMsg").text("原密码错误").css("color","red");
					   }
				   });
			   }
		   });

		   $("#newPassword02").blur(function(){
			   var pass01= $("#newPassword").val();
			   var pass02= $("#newPassword02").val();
			   if(null==pass01 || ""==pass01 || null==pass02 || ""==pass02){
				   $("#passMsg").text("密码不能为空").css("color","red");
				   regIsCommitPsw =false;
			   }else{
				   if(pass01!=pass02){
					   regIsCommitPsw=false;
					   $("#passMsg").text("两次密码输入不一致，请重新输入").css("color","red");
				   }else{
					   regIsCommitPsw=true;
					   $("#passMsg").text("");
				   }
			   }

		   });


	   });

   </script>
</body>
</html>