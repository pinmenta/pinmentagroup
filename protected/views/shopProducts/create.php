<?php
$this->breadcrumbs=array(
	'Shop Products'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'List ShopProducts', 'url'=>array('index')),
	array('label'=>'Manage ShopProducts', 'url'=>array('admin')),
);
?>

<h1>Create ShopProducts</h1>

<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>