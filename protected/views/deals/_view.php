<?php
    $imgarr=DealsImage::getImg($data->deals_id);
    $data->deals_image=Deals::arr2str($imgarr);
?>
<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('title')); ?>:</b>
	<?php echo CHtml::encode($data->title); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('description')); ?>:</b>
	<?php echo CHtml::encode($data->description); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('price')); ?>:</b>
	<?php echo CHtml::encode($data->price); ?>
	<br />

	<?php echo CHtml::link('<img width="230" src="'.$data->deals_image.'">', array('view', 'id'=>$data->deals_id));?>
	<br />

	<?php /*
	<b><?php echo CHtml::encode($data->getAttributeLabel('specifications')); ?>:</b>
	<?php echo CHtml::encode($data->specifications); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('count')); ?>:</b>
	<?php echo CHtml::encode($data->count); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('like')); ?>:</b>
	<?php echo CHtml::encode($data->like); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('detail')); ?>:</b>
	<?php echo CHtml::encode($data->detail); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('status')); ?>:</b>
	<?php echo CHtml::encode($data->status); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('start_time')); ?>:</b>
	<?php echo CHtml::encode($data->start_time); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('end_time')); ?>:</b>
	<?php echo CHtml::encode($data->end_time); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('original')); ?>:</b>
	<?php echo CHtml::encode($data->original); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('promo_code')); ?>:</b>
	<?php echo CHtml::encode($data->promo_code); ?>
	<br />

	*/ ?>

</div>