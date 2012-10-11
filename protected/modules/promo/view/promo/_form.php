<div class="form">

<?php
    Yii::app()->clientScript->registerCoreScript('jquery');
    $path=Yii::app()->basePath;

    echo Yii::app()->baseUrl;
    $form=$this->beginWidget('CActiveForm', array(
	'id'=>'promo-form',
	'enableAjaxValidation'=>false,
    'htmlOptions'=>array('enctype'=>'multipart/form-data'),
)); ?>

	<p class="note">Fields with <span class="required">*</span> are required.</p>

	<?php echo $form->errorSummary($model); ?>

	<div class="row">
		<?php echo $form->labelEx($model,'code_title'); ?>
		<?php echo $form->textField($model,'code_title',array('size'=>60,'maxlength'=>200)); ?>
		<?php echo $form->error($model,'code_title'); ?>
	</div>

    <div class="row">
        <?php echo $form->labelEx($model,'code_effect'); ?>
        <?php echo $form->textField($model,'code_effect'); ?>
        <?php echo $form->error($model,'code_effect'); ?>
    </div>

	<div class="row">
		<?php echo $form->labelEx($model,'code_number'); ?>
		<?php echo $form->textField($model,'code_number'); ?>
		<?php echo $form->error($model,'code_number'); ?>
	</div>

	<div class="row">
		<?php// echo $form->labelEx($model,'code_image'); ?>
		<?php //echo $form->textField($model,'code_image',array('size'=>60,'maxlength'=>250)); ?>
		<?php //echo $form->error($model,'code_image'); ?>
	</div>

    <div class="row">
        <?php echo $form->labelEx($model,'code_image'); ?>
        <?php echo CHtml::activeFileField($model,'code_image'); ?>
        <?php echo $form->error($model,'code_image'); ?>
    </div>


    <div class="row">
    <?php echo '图片预览' ?>
    <?php echo '<img id =showimg src="'.Yii::app()->baseUrl.$model->code_image.'" style="width:200px;"/>'; ?>
    </div>

	<div class="row buttons">
		<?php echo CHtml::submitButton($model->isNewRecord ? 'Create' : 'Save'); ?>
	</div>
<input type="button" value="触发" id='chufa'>
<?php $this->endWidget(); ?>

</div><!-- form -->
<script type="text/javascript">
    $(function(){
        $('#Promo_code_image').live('change',function(){
            var img= $('#Promo_code_image').val();
            $.post('<?php echo $this->createUrl('//promo/promo/uploadImg')?>',{code_image:img},function(rs){
                $('#showimg').attr('src',rs);
            })
        })

    })

</script>