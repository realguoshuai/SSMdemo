<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>错误界面</title>

    <link href="css/bootstrap.min.css" rel="stylesheet">

  </head>
  <body>
     <div class="container">
         
         <div style="text-align: center">
           <img src="img/error.jpg" alt="..."  class="img-rounded">
         </div>
         
        <h2>异常信息如下：</h2>&nbsp;&nbsp;<h3><a href="javascript:history.go(-1)">返回上一页</a></h3>
        <div class="alert alert-danger" role="alert">${message}</div>
     </div>
  </body>
</html>
