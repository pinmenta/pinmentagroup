<?php
Yii::app()->clientScript->registerCoreScript('jquery');

$this->breadcrumbs=array(
	'Promos'=>array('index'),
	$model->code_id,
);

$this->menu=array(
	array('label'=>'List Promo', 'url'=>array('index')),
	array('label'=>'Create Promo', 'url'=>array('create')),
	array('label'=>'Update Promo', 'url'=>array('update', 'id'=>$model->code_id)),
	array('label'=>'Delete Promo', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->code_id),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage Promo', 'url'=>array('admin')),
);
?>

<h1>View Promo #<?php echo $model->code_id; ?></h1>

    <table style="border: 1px solid silver">
        <tr>
            <td width="310"><img src="/pinmenta<?php echo $model->code_image;?>" width="300"></td>
            <td >
                <table>
                    <tr><th width="100">Title</th><td><?php echo CHtml::encode($model->code_title); ?></td></tr>
                    <tr><th>Effect</th><td><?php echo CHtml::encode($model->code_effect); ?></td></tr>
                </table>
            </td>
        </tr>
    </table>

<div style="display: none">
    <input type="text" id=userid value="<?php echo Yii::app()->user->id;?>">
    <input type="text" id=promoid value="<?php echo $model->code_id;?>">
</div>
<p><input type="button" value="get promo" id=getpromo><span>loading....</span></p>
<script type="text/javascript">
    $(function(){
        $('#getpromo').click(function(){
            var userid=$('#userid').val();
            var promoid=$('#promoid').val();
            if(userid.length>0){
                $.post('<?php echo $this->createUrl('//promo/promo/getPromo')?>',{userid:userid,promoid:promoid},function(rs){
                    alert(rs);
                })
            }else{
                alert('login!');
            }
        })

    })
</script>