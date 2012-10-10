<?php
$this->breadcrumbs=array(
	'Deals Images'=>array('index'),
	$model->image_id=>array('view','id'=>$model->image_id),
	'Update',
);

$this->menu=array(
	array('label'=>'List DealsImage', 'url'=>array('index')),
	array('label'=>'Create DealsImage', 'url'=>array('create')),
	array('label'=>'View DealsImage', 'url'=>array('view', 'id'=>$model->image_id)),
	array('label'=>'Manage DealsImage', 'url'=>array('admin')),
);
?>

<h1>Update DealsImage <?php echo $model->image_id; ?></h1>

<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>