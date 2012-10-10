<?php
$this->breadcrumbs=array(
	'Deals'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'List Deals', 'url'=>array('index')),
	array('label'=>'Manage Deals', 'url'=>array('admin')),
);
?>

<h1>Create Deals</h1>

<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>