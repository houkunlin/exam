
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
	  <form action="submit.php" method="post" class="navbar-form">
		  <p class="">词汇表：
<!--			/*<span class="hklbq2">{word2}</span>*/-->
			{word}
		  </p>
					
		<div class="clear">
欢迎使用鹿山听雨写的出题系统，本系统只提供英语词汇试题，题目来源英语书Unit1,2,3 SectionA的词汇题的前7题。
本系统采用随机出题，就像今年的学生手册考试那样的随机题目。
		</div>
{list}
		
<!--
	  <div class="timulist">
		<div class="timu">
		  <span class="hklbq">{list2}</span>
		  {timu}
		</div>
		<div class="in input-group">
		  <span class="input-group-addon">答题</span>
		  <input type="text" class="form-control" name="" value="" placeholder="请输入此题答案">
		  <span class="input-group-addon okfalse">正确</span>
		</div>
	  </div>
-->

		<input type="submit" class="btn btn-primary navbar-btn" value="提交答案">
	  </form>
		<div class="clear">你是第<span class="hklbq">{fw}</span>人访问本系统！</div>
    </div><!-- /.container -->


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="js/jquery-1.7.2.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>
