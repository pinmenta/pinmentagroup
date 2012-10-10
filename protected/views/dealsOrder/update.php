<?php
$this->breadcrumbs=array(
	'Deals Orders'=>array('index'),
	$model->order_id=>array('view','id'=>$model->order_id),
	'Update',
);

$this->menu=array(
	array('label'=>'List DealsOrder', 'url'=>array('index')),
	array('label'=>'Create DealsOrder', 'url'=>array('create')),
	array('label'=>'View DealsOrder', 'url'=>array('view', 'id'=>$model->order_id)),
	array('label'=>'Manage DealsOrder', 'url'=>array('admin')),
);
?>

<h1>Update DealsOrder <?php echo $model->order_id; ?></h1>

<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>