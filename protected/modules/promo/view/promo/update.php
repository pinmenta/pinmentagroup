<?php
$this->breadcrumbs=array(
	'Promos'=>array('index'),
	$model->code_id=>array('view','id'=>$model->code_id),
	'Update',
);

$this->menu=array(
	array('label'=>'List Promo', 'url'=>array('index')),
	array('label'=>'Create Promo', 'url'=>array('create')),
	array('label'=>'View Promo', 'url'=>array('view', 'id'=>$model->code_id)),
	array('label'=>'Manage Promo', 'url'=>array('admin')),
);
?>

<h1>Update Promo <?php echo $model->code_id; ?></h1>

<?php echo $this->renderPartial($this->ccview.'/_form', array('model'=>$model)); ?>