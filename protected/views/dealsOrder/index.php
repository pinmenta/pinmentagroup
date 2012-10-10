<?php
$this->breadcrumbs=array(
	'Deals Orders',
);

$this->menu=array(
	array('label'=>'Create DealsOrder', 'url'=>array('create')),
	array('label'=>'Manage DealsOrder', 'url'=>array('admin')),
);
?>

<h1>Deals Orders</h1>
<table>
    <tr>
        <td><strong>deals title</strong></td>
        <td><strong>quantity</strong></td>
        <td><strong>total</strong></td>
        <td><strong>status</strong></td>
        <td><strong>control</strong></td>
    </tr>
<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
</table>
<script>
    function del(id){
        if(confirm("make sure delete？")){
            window.location.href='<?php echo $this->createUrl("//dealsOrder/delete&id=")?>'+id+"'";
        }else{
            return false;
        }
    }
</script>

