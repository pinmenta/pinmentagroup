<div class="wide form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'action'=>Yii::app()->createUrl($this->route),
	'method'=>'get',
)); ?>

	<div class="row">
		<?php echo $form->label($model,'code_id'); ?>
		<?php echo $form->textField($model,'code_id'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'code_title'); ?>
		<?php echo $form->textField($model,'code_title',array('size'=>60,'maxlength'=>200)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'code_number'); ?>
		<?php echo $form->textField($model,'code_number'); ?>
	</div>

    <div class="row">
        <?php echo $form->label($model,'code_effect'); ?>
        <?php echo $form->textField($model,'code_effect'); ?>
    </div>

	<div class="row">
		<?php echo $form->label($model,'code_image'); ?>
		<?php echo $form->textField($model,'code_image',array('size'=>60,'maxlength'=>250)); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton('Search'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- search-form -->