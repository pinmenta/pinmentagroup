<?php
$this->breadcrumbs=array(
	'Deals Images'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'List DealsImage', 'url'=>array('index')),
	array('label'=>'Manage DealsImage', 'url'=>array('admin')),
);
?>

<h1>Create DealsImage</h1>

<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>