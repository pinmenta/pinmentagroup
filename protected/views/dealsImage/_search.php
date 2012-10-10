<div class="wide form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'action'=>Yii::app()->createUrl($this->route),
	'method'=>'get',
)); ?>

	<div class="row">
		<?php echo $form->label($model,'image_id'); ?>
		<?php echo $form->textField($model,'image_id'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'image_file'); ?>
		<?php echo $form->textField($model,'image_file',array('size'=>60,'maxlength'=>300)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'image_deals_id'); ?>
		<?php echo $form->textField($model,'image_deals_id'); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton('Search'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- search-form -->