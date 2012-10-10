<?php
$this->breadcrumbs=array(
	'Promos',
);

$this->menu=array(
	array('label'=>'Create Promo', 'url'=>array('create')),
	array('label'=>'Manage Promo', 'url'=>array('admin')),
);
?>

<h1>Promos</h1>

<table >
    <tr >
        <TH>pic</TH>
        <TH>title</TH>
        <TH>effect</TH>
    </tr>
<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>$this->ccview.'/_view',
)); ?>
</table>
