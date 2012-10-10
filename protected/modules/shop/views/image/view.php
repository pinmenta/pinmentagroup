<?php
if(isset($stu)){$status=$stu;}
$folder = Shop::module()->productImagesFolder;
if($model->filename)
	$path = Yii::app()->baseUrl. '/' . $folder . '/' . $model->filename;
	else
	$path = Shop::register('no-pic.jpg');

if($path !='no-pic.jpg'){

    $control_siz=Image::model()->getImgsize($path,$status);
    }
    else{$control_siz='';}

echo  CHtml::link(CHtml::image($path,
		$model->title,
		array(
			'title' => $model->title,
			'style' => 'margin: 10px;'.$control_siz,
            )
		), array('products/view', 'id' => $model->product_id)); ?>
<?php 

if(Shop::module()->useWithYum && Yii::app()->user->isAdmin()) 
	echo CHtml::link(Yii::t('ShopModule.shop', 'Delete Image'),
			array('delete', 'id' => $model->id)); ?>
