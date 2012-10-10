<script type="text/javascript" src="/pinmenta/js/imageedit.js"></script>
<SCRIPT LANGUAGE="VBScript">
        document.domain = "localhost"
    </SCRIPT>
<div class="form">
<?php
    $imgarr=array();
    $model->promo_code=Products::srt2arr($model->promo_code);

    $ctjsFile=Yii::app()->baseUrl.'/js/jquery.form.js';
    $cs=Yii::app()->clientScript;
    $cs->registerScriptFile($ctjsFile);
    if(isset($model->deals_id))
    {
        $imgarr=DealsImage::getImg($model->deals_id);
        $model->deals_image=Deals::arr2str($imgarr);
    }
    ?>
<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'deals-form',
	'enableAjaxValidation'=>false,
    'htmlOptions'=>array('enctype'=>'multipart/form-data'),
)); ?>

	<p class="note">Fields with <span class="required">*</span> are required.</p>

	<?php echo $form->errorSummary($model); ?>

    <div class="row">
        <?php echo $form->labelEx($model,'category_id'); ?>
        <?php $this->widget('application.modules.shop.components.Relation', array(
        'model' => $model,
        'relation' => 'category',
        'fields' => 'title',
        'showAddButton' => false)); ?>
        <?php echo $form->error($model,'category_id'); ?>
    </div>


	<div class="row">
		<?php echo $form->labelEx($model,'title'); ?>
		<?php echo $form->textField($model,'title',array('size'=>45,'maxlength'=>45)); ?>
		<?php echo $form->error($model,'title'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'description'); ?>
		<?php echo $form->textArea($model,'description',array('rows'=>6, 'cols'=>50)); ?>
		<?php echo $form->error($model,'description'); ?>
	</div>



	<div class="row">
		<?php echo $form->labelEx($model,'price'); ?>
		<?php echo $form->textField($model,'price',array('size'=>45,'maxlength'=>45)); ?>
		<?php echo $form->error($model,'price'); ?>
	</div>

    <div class="row" id=time_select>
        <?php echo $form->labelEx($model,'start_time'); ?>
        <?php $this->widget('zii.widgets.jui.CJuiDatePicker', array(
        'name'=>'publishDate',
        // additional javascript options for the date picker plugin
        'options'=>array(
            'showAnim'=>'fold',
            'dateFormat'=>'yy-mm-dd'
        ),
        'htmlOptions'=>array(
            'style'=>'height:15px; width:100px',
            'id'=>'start_date',
            'maxlength'=>10
        ),
    ));?>
        <?php echo CHtml::dropDownList('start_hour','', Products::model()->getHour()); ?>
        <?php echo ':' ?>
        <?php echo CHtml::dropDownList('start_min','', Products::model()->getMin()); ?>
        <?php echo $form->textField($model,'start_time',array('size'=>20,'maxlength'=>20,'readOnly'=>"true")); ?>
        <?php echo $form->error($model,'start_time'); ?>
    </div>

    <div class="row">
        <?php echo $form->labelEx($model,'end_time'); ?>
        <?php $this->widget('zii.widgets.jui.CJuiDatePicker', array(
        'name'=>'publishDate',
        // additional javascript options for the date picker plugin
        'options'=>array(
            'showAnim'=>'fold',
            'dateFormat'=>'yy-mm-dd'
        ),
        'htmlOptions'=>array(
            'style'=>'height:15px; width:100px',
            'id'=>'end_date',
            'maxlength'=>10
        ),
    ));?>
        <?php echo CHtml::dropDownList('end_hour','', Products::model()->getHour()) ?>
        <?php echo ':' ?>
        <?php echo CHtml::dropDownList('end_min','',Products::model()->getMin()); ?>
        <?php echo $form->textField($model,'end_time',array('size'=>20,'maxlength'=>20,'readOnly'=>"true")); ?>
        <?php echo $form->error($model,'end_time'); ?>
    </div>

	<div class="row">
		<?php echo $form->labelEx($model,'language'); ?>
		<?php echo $form->textField($model,'language',array('size'=>45,'maxlength'=>45)); ?>
		<?php echo $form->error($model,'language'); ?>
	</div>

	<div class="row" style=" display: none">
		<?php echo $form->textArea($model,'deals_image',array('rows'=>6, 'cols'=>50)); ?>
	</div>

    <div class="row">
        <?php echo $form->labelEx($model,'specifications'); ?>
        <?php echo $form->textArea($model,'specifications',array('rows'=>6, 'cols'=>50)); ?>
        <?php echo $form->error($model,'specifications'); ?>
    </div>

    <div class="row">
        <?php echo $form->labelEx($model,'detail'); ?>
        <?php $this->widget('application.extensions.widgets.redactorjs.Redactor', array( 'model' => $model, 'attribute' => 'detail','editorOptions' => array('imageGetJson' => Yii::app()->baseUrl.'/images/editorimg/image.josn','imageUpload' => 'index.php?r=shop/products/imageupload') ));?>
        <?php //$this->widget('application.extensions.tinymce.ETinyMce', array('name'=>'detail','useSwitch' => false,
        //'editorTemplate'=>'full')); ?>
        <?php //echo $form->textArea($model,'detail',array('rows'=>6, 'cols'=>50)); ?>
        <?php echo $form->error($model,'detail'); ?>
    </div>

	<div class="row">
		<?php echo $form->labelEx($model,'status'); ?>
		<?php echo $form->textField($model,'status'); ?>
		<?php echo $form->error($model,'status'); ?>
	</div>



	<div class="row">
		<?php echo $form->labelEx($model,'original'); ?>
		<?php echo $form->textField($model,'original'); ?>
		<?php echo $form->error($model,'original'); ?>
	</div>

    <div class="row" style="border: 1px solid #c0c0c0">
        <?php echo $form->labelEx($model,'promo_code'); ?>
        <?php echo $form->CheckBoxList($model,'promo_code',Promo::model()->getPromoArr())?>
        <?php echo $form->error($model,'promo_code'); ?>
    </div>


    <div class="row buttons">
        <input type="button" value="test" id=test>
    </div>

	<div class="row buttons">
		<?php echo CHtml::submitButton($model->isNewRecord ? 'Create' : 'Save'); ?>
	</div>

<?php $this->endWidget(); ?>

    <form target="yframe" enctype="multipart/form-data" action="<?php echo $this->createUrl('//dealsImage/jsCreate')?>" id="img-form" method="post">

    <div class="row" style="margin-top: 10px; border: 1px solid silver">
        <?php //echo CHtml::activeFileField($model,'deals_image'); ?>
        <?php// echo CHtml::activeFileField($model,'deals_image'); ?>
        <input type="file" name="file" style="">

            <input type="text" name='img_title' id='img_title' class="ii">
        <span id=tt1></span>
        <input type="submit" value="submit">
        <textarea  id="fname"  name="fname" rows="6" cols="50" style="display: none"><?php echo $model->deals_image?></textarea>

        <iframe  name="yframe" src="<?php echo $this->createUrl('//dealsImage/jsCreate')?>" style="border:none;  height:300px; width: 100%">

        </iframe>


    </div>


    </form>


</div><!-- form -->
<script type="text/javascript">
    function   addContent(x){
        document.getElementById("fname").value=x;
        document.getElementById("Deals_deals_image").value=x;
    }
</script>

<script type="text/javascript">
    $(function(){

        $('#test').live('click',function(){
           var num=$.find('.img_list').length;
            alert(num);
        })

        if($('#fname').val()!=''){
            $("#img-form").submit();
        }

        if($('#fname').val())
        {

        };
        $('#Deals_deals_image').val();

            if($('#Deals_start_time').val()){
            var test=$('#Deals_start_time').val();
            var setdate=test.substring(0,10);
            var settime=test.substring(11,19);
            var timeall=settime.split(':');
            }


        function time(date,hh,mm){
            var time=date+' '+hh+':'+mm+':00';
            return time;
        }

        if($('#Deals_start_time').val().length>0){
            var test=$('#Deals_start_time').val();
            var setdate=test.substring(0,10);
            var settime=test.substring(11,19);
            var timeall=settime.split(':');
            var date=setdate;
            var hh=timeall[0];
            var mm=timeall[1];
            $('#start_date').val(date)
            $('#start_hour').val(parseInt(hh))
            $('#start_min').val(parseInt(mm))
        }else{
            var date='2012-00-00';
            var hh='00';
            var mm='00';
        }

        if($('#Deals_end_time').val().length>0){
            var etest=$('#Deals_end_time').val();
            var esetdate=etest.substring(0,10);
            var esettime=etest.substring(11,19);
            var etimeall=esettime.split(':');
            var edate=esetdate;
            var ehh=etimeall[0];
            var emm=etimeall[1];
            $('#end_date').val(edate)
            $('#end_hour').val(parseInt(ehh))
            $('#end_min').val(parseInt(emm))
        }else{
            var edate='2012-00-00';
            var ehh='00';
            var emm='00';
        }


        $('#start_date').change(function(){
            date=$('#start_date').val();
            $('#Deals_start_time').val(time(date,hh,mm))
        })

        $('#start_hour').change(function(){
            var s= $('#start_hour').val();
            $('#start_hour').find('option').each(function(){
                if($(this).attr('value')==s){
                    hh= $(this).html();
                }
            })
            $('#Deals_start_time').val(time(date,hh,mm))
        })

        $('#start_min').change(function(){
            var s= $('#start_min').val();
            $('#start_min').find('option').each(function(){
                if($(this).attr('value')==s){
                    mm= $(this).html();
                }
            })
            $('#Deals_start_time').val(time(date,hh,mm))
        })

        $('#end_date').change(function(){
            edate=$('#end_date').val();
            $('#Deals_end_time').val(time(edate,ehh,emm))
        })

        $('#end_hour').change(function(){
            var s= $('#end_hour').val();
            $('#end_hour').find('option').each(function(){
                if($(this).attr('value')==s){
                    ehh= $(this).html();
                }
            })
            $('#Deals_end_time').val(time(edate,ehh,emm))
        })

        $('#end_min').change(function(){
            var s= $('#end_min').val();
            $('#end_min').find('option').each(function(){
                if($(this).attr('value')==s){
                    emm= $(this).html();
                }
            })
            $('#Deals_end_time').val(time(edate,ehh,emm))
        })
    })

</script>