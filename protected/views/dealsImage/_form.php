<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'deals-image-form',
	'enableAjaxValidation'=>false,
)); ?>

	<p class="note">Fields with <span class="required">*</span> are required.</p>

	<?php echo $form->errorSummary($model); ?>

	<div class="row">
		<?php echo $form->labelEx($model,'image_file'); ?>
        <?php echo CHtml::activeFileField($model,'image_file'); ?>
		<?php echo $form->error($model,'image_file'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'image_deals_id'); ?>
		<?php echo $form->textField($model,'image_deals_id'); ?>
		<?php echo $form->error($model,'image_deals_id'); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton($model->isNewRecord ? 'Create' : 'Save'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- form -->