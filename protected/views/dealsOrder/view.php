<?php
$this->breadcrumbs=array(
	'Deals Orders'=>array('index'),
	$model->order_id,
);

$this->menu=array(
	array('label'=>'List DealsOrder', 'url'=>array('index')),
	array('label'=>'Create DealsOrder', 'url'=>array('create')),
	array('label'=>'Update DealsOrder', 'url'=>array('update', 'id'=>$model->order_id)),
	array('label'=>'Delete DealsOrder', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->order_id),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage DealsOrder', 'url'=>array('admin')),
);
?>

<h1>View DealsOrder #<?php echo $model->order_id; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'order_id',
		'order_no',
		'order_deals_id',
		'order_quantity',
		'order_total',
		'order_time',
		'order_status',
	),
)); ?>
