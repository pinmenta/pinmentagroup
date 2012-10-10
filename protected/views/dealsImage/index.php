<?php
$this->breadcrumbs=array(
	'Deals Images',
);

$this->menu=array(
	array('label'=>'Create DealsImage', 'url'=>array('create')),
	array('label'=>'Manage DealsImage', 'url'=>array('admin')),
);
?>

<h1>Deals Images</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
