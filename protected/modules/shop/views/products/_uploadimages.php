<?php
// files storage folder

$dir = str_replace('/protected','',Yii::app()->basePath).'/images/editorimg/';


$_FILES['file']['type'] = strtolower($_FILES['file']['type']);

if ($_FILES['file']['type'] == 'image/png'
    || $_FILES['file']['type'] == 'image/jpg'
    || $_FILES['file']['type'] == 'image/gif'
    || $_FILES['file']['type'] == 'image/jpeg'
    || $_FILES['file']['type'] == 'image/pjpeg')
{
    // setting file's mysterious name
    $file = $dir.md5(date('YmdHis')).'.jpg';
    $imgurl=Yii::app()->baseUrl.'/images/editorimg/'.md5(date('YmdHis')).'.jpg';
    // copying
    copy($_FILES['file']['tmp_name'], $file);

    $fileArray=array();
    $file_josn='';
    if ($file != "." && $file != ".."&&strpos($file,".")) {
        $fileArray['thumb']=$imgurl;
        $fileArray['image']=$imgurl;
        $fileArray['title']='';
        $fileArray['folder']='';
        $file_josn=json_encode($fileArray);
    }
    /*
     * 保存上传文件路径
     */
    @$fp=fopen($dir.'/image.josn',"r");
    $contents = fread ($fp, filesize ($dir.'/image.josn'));
    fclose($fp);
    $pos = str_replace('}]','},'.$file_josn.']',$contents);
    $wf=fopen($dir.'/image.josn',"w");
    fwrite($wf,$pos);
    fclose($wf);

    $images='<p><img src='.$imgurl.'></p>';
    echo $images;
}

?>