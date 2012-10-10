<?php
$this->breadcrumbs=array(
	'Deals Images'=>array('index'),
	$model->image_id,
);

$this->menu=array(
	array('label'=>'List DealsImage', 'url'=>array('index')),
	array('label'=>'Create DealsImage', 'url'=>array('create')),
	array('label'=>'Update DealsImage', 'url'=>array('update', 'id'=>$model->image_id)),
	array('label'=>'Delete DealsImage', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->image_id),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage DealsImage', 'url'=>array('admin')),
);
?>

<h1>View DealsImage #<?php echo $model->image_id; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'image_id',
		'image_file',
		'image_deals_id',
	),
)); ?>
