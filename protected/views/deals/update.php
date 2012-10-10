<?php
$this->breadcrumbs=array(
	'Deals'=>array('index'),
	$model->title=>array('view','id'=>$model->deals_id),
	'Update',
);

$this->menu=array(
	array('label'=>'List Deals', 'url'=>array('index')),
	array('label'=>'Create Deals', 'url'=>array('create')),
	array('label'=>'View Deals', 'url'=>array('view', 'id'=>$model->deals_id)),
	array('label'=>'Manage Deals', 'url'=>array('admin')),
);
?>

<h1>Update Deals <?php echo $model->deals_id; ?></h1>

<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>