<?php
$this->pageTitle=Yii::app()->name . ' - Shop Products';
$this->breadcrumbs=array(
	'Shop Products',
);
/*
$this->menu=array(
	array('label'=>'Create ShopProducts', 'url'=>array('create')),
	array('label'=>'Manage ShopProducts', 'url'=>array('admin')),
)*/
?>

<h1>Shop Products</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
));
?>

<h1>comments</h1>

<?php
    $this->renderPartial('comment.views.comment.commentList', array(
    'model'=>$model));
?>