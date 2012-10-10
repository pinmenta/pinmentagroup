<div class="wide form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'action'=>Yii::app()->createUrl($this->route),
	'method'=>'get',
)); ?>

	<div class="row">
		<?php echo $form->label($model,'order_id'); ?>
		<?php echo $form->textField($model,'order_id'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'order_no'); ?>
		<?php echo $form->textField($model,'order_no',array('size'=>60,'maxlength'=>100)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'order_deals_id'); ?>
		<?php echo $form->textField($model,'order_deals_id'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'order_quantity'); ?>
		<?php echo $form->textField($model,'order_quantity'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'order_total'); ?>
		<?php echo $form->textField($model,'order_total'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'order_time'); ?>
		<?php echo $form->textField($model,'order_time'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'order_status'); ?>
		<?php echo $form->textField($model,'order_status'); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton('Search'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- search-form -->