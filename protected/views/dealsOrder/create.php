<?php
$this->breadcrumbs=array(
	'Deals Orders'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'List DealsOrder', 'url'=>array('index')),
	array('label'=>'Manage DealsOrder', 'url'=>array('admin')),
);
?>

<h1>Create DealsOrder</h1>

<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>