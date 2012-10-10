<?php
$this->breadcrumbs=array(
	'Shop Products'=>array('index'),
	$model->title=>array('view','id'=>$model->product_id),
	'Update',
);

$this->menu=array(
	array('label'=>'List ShopProducts', 'url'=>array('index')),
	array('label'=>'Create ShopProducts', 'url'=>array('create')),
	array('label'=>'View ShopProducts', 'url'=>array('view', 'id'=>$model->product_id)),
	array('label'=>'Manage ShopProducts', 'url'=>array('admin')),
);
?>

<h1>Update ShopProducts <?php echo $model->product_id; ?></h1>

<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>