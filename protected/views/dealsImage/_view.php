<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('image_id')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->image_id), array('view', 'id'=>$data->image_id)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('image_file')); ?>:</b>
	<?php echo CHtml::encode($data->image_file); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('image_deals_id')); ?>:</b>
	<?php echo CHtml::encode($data->image_deals_id); ?>
	<br />


</div>