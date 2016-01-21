<?php
include('tiku.php');
$tiku_l=array(0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20);//与题库对应
$word=array();//单词列表
$timu=array();//出题列表
gettimu($tiku_l,$word,15);//从题库连接获得15题序号
gettimu($word,$timu,10);//从单词序号获得10题题目序号
//echo '<pre>';
$wo=getword($word,$tiku);
$list=getti($timu,$tiku);
$body=file_get_contents('index.tpl');
$body=str_replace('{word}',$wo,$body);
$body=str_replace('{list}',$list,$body);

//$body=str_replace('{fw}',$fw,$body);
//echo $body;
$fw=file_get_contents('index.txt');
//echo $fw;
$fw+=1;

$fp=fopen('index.txt',"w+");
fwrite($fp,''.$fw.'');
fclose($fp);

$body=str_replace('{fw}',$fw,$body);
echo $body;

/*

print_r($word);
print_r($timu);
*/
function gettimu($tiku_l,&$word,$num){//获得单词连接
	/*题库连接，单词列表，单词题数*/
	//$all=count($tiku_l);
	for($i=0;$i<$num;++$i){
		$all=count($tiku_l);
		$r=rand(0,$all-1);
		$word[$i]=$tiku_l[$r];//给单词添加一题
		$tiku_l[$r]=$tiku_l[$all-1];//把最后一题移到前面
		//删除一个题库连接
		unset($tiku_l[$all-1]);
	}
}
function getword($word,$tiku){//获取单词
	$all=count($word);
	$re='<ul>';
	for($i=0;$i<$all;++$i){
		$w=$tiku[$word[$i]]['kong'];
		$re.='<li class="hklbq2">'.$w.'</li>';
	}
        $re.='</ul>';
	return $re;
}
function getti($timu,$tiku){//获取单词
	$all=count($timu);
	$re='';
	for($i=0;$i<$all;++$i){
		$w=$tiku[$timu[$i]]['timu'];
		$re.='
	  <div class="timulist">
		<div class="timu">
		  <span class="hklbq">'.($i+1).'</span>
		  '.$w.'
		</div>
		<div class="in input-group">
		  <span class="input-group-addon">答题</span>
		  <input type="text" class="form-control" name="daan['.$timu[$i].']" value="" placeholder="请输入此题答案">
		  <span class="input-group-addon">必答</span>
		</div>
	  </div>
';
	}
	return $re;
}
?>
