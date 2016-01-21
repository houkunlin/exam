<?php
include('tiku.php');
$tiku_l=array(0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20);//与题库对应
$daan=$_POST['daan'];
if(count($daan)<=0){
header("location:index.php");

}
$fw=file_get_contents('submit.txt');
$fw+=1;
$fp=fopen('submit.txt','w+');
fwrite($fp,$fw);
fclose($fp);

	$wo='<ul>';
	$list='';
	$i=1;
	$result=0;
foreach($daan as $key=>$v){
		$wo.='<li class="hklbq2">'.$tiku[$key]['kong'].'</li>';
		$w=$tiku[$key]['timu'];
		$ok=$v==$tiku[$key]['ok'];
		$result+=$ok;
		$list.='
	  <div class="timulist">
		<div class="timu">
		  <span class="hklbq">'.($i++).'</span>
		  '.$w.'
		</div>
		<div class="in input-group">
		  <span class="input-group-addon">答题</span>
		  <input type="text" class="form-control" disabled="true" name="" value="'.$v.($ok==1?'':'(答案：'.$tiku[$key]['ok'].')').'" placeholder="">
		  <span class="input-group-addon '.($ok==1?'oktrue':'okfalse').'">'.($ok==1?'正确':'错误').'</span>
		</div>
	  </div>
';
}

$wo.='<li class="hklbq2">无法查看其他单词</li></ul>';
$result=number_format($result*100/count($daan),1);

$body=file_get_contents('submit.tpl');
$body=str_replace('{word}',$wo,$body);
$body=str_replace('{list}',$list,$body);
$body=str_replace('{result}',$result,$body);
$body=str_replace('{made}',$fw,$body);
echo $body;


?>
