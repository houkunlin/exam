<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <title>英语词汇模拟出题</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/styles.css" rel="stylesheet">

  </head>

  <body>

    <div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">模拟出题</a>
        </div>
        <div class="collapse navbar-collapse">
          <ul class="nav navbar-nav">
            <li class="active"><a href="#">英语</a></li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </div>

    <div class="container">
	  <h5>鹿山学院英语词汇模拟出题系统</h5>
	  <span class="" style="
		border-radius:4px;
		box-shadow:1px 1px 12px red inset;
		color:red;
		padding:5px;
		font-size:3em;
		position:absolute;
		right:0;
		top:50px;
		">{result}分</span>
		  <p class="">词汇表：
			{word}
			
		  </p>
		<div class="clear">
			不提供成绩保存功能，测试成绩仅限本次查看，退出后成绩清除！
<br>
你是第<span class="hklbq">{made}</span>人使用本系统！
		</div>
	  {list}<!--	
	  <div class="timulist">
		<div class="timu">
		  <span class="hklbq">{list}</span>
		  {timu1}
		</div>
		<div class="in input-group">
		  <span class="input-group-addon">答题</span>
		  <input type="text" class="form-control" name="" value="" placeholder="请输入此题答案">
		  <span class="input-group-addon okfalse">正确</span>
		</div>
	  </div>
-->
    </div><!-- /.container -->


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="js/jquery-1.7.2.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>

