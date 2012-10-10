<?php
//echo Yii::app()->createAbsoluteUrl('roundtrip/listimages');
/*
 * test place
 */


/*
 * test place
 */
$model->promo_code=Products::srt2arr($model->promo_code);

function renderVariation($variation, $i) {
	if(!ProductSpecification::model()->findByPk(1))
		return false;
	if(!$variation) {
		$variation = new ProductVariation;
		$variation->specification_id = 1;
	}

	$str = '<tr> <td>';
	$str .= CHtml::dropDownList("Variations[{$i}][specification_id]",
			$variation->specification_id, CHtml::listData(
				ProductSpecification::model()->findall(), "id", "title"), array(
				'empty' => '-'));  

	$str .= '</td> <td>';
	$str .= CHtml::textField("Variations[{$i}][title]", $variation->title); 
	$str .= '</td> <td>';
	$str .= CHtml::dropDownList("Variations[{$i}][sign]",
			$variation->price_adjustion >= 0 ? '+' : '-', array(
				'+' => '+',
				'-' => '-'));
	$str .= '</td> <td>';
	$str .= CHtml::textField("Variations[{$i}][price_adjustion]", abs($variation->price_adjustion));  
	$str .= '</td> <td>';
	for($j = -10; $j <= 10; $j++)
		$positions[$j] = $j;
	$str .= CHtml::dropDownList("Variations[{$i}][position]",
			$variation->position,
			$positions);
	$str .= '</td> </tr>';

return $str;
} ?>
<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
			'id'=>'products-form',
			'enableAjaxValidation'=>true,
			)); ?>

<?php echo $form->errorSummary($model); ?>

<div style="float: left;width: 100%">
<fieldset>
<legend> <?php echo Shop::t('Article Information'); ?> </legend>
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
        <?php echo $form->labelEx($model,'status'); ?>
        <?php echo $form->textField($model,'status',array('size'=>45,'maxlength'=>2)); ?>
        <?php echo $form->error($model,'status'); ?>
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


</fieldset>
</div>


<fieldset>
    <div style="float: left; width: 100%">
        <div class="row">
            <?php echo $form->labelEx($model,'description'); ?>
            <?php echo $form->textArea($model,'description',array('rows'=>6, 'cols'=>50)); ?>
            <?php echo $form->error($model,'description'); ?>
        </div>

    </div>
<legend> <?php echo Yii::t('ShopModule.shop', 'Article Specifications'); ?> </legend>

<div class="row">
<?php echo $form->labelEx($model,'price'); ?>
<?php echo $form->textField($model,'price',array('size'=>45,'maxlength'=>45)); ?>
<?php echo $form->error($model,'price'); ?>
</div>

    <div class="row">
        <?php echo $form->labelEx($model,'original'); ?>
        <?php echo $form->textField($model,'original',array('size'=>45,'maxlength'=>45)); ?>
        <?php echo $form->error($model,'original'); ?>
    </div>

<?php foreach(ProductSpecification::model()->findAll() as $specification) { ?>
	<div class="row">
		<?php echo CHtml::label($specification->title, ''); ?>
		<?php echo CHtml::textField("Specifications[{$specification->title}]",
				$model->getSpecification($specification->title),array(
					'size'=>45,'maxlength'=>45)); ?>
		</div>
		<?php } ?>

    <div class="row" style="border: 1px solid #c0c0c0">
            <?php echo $form->labelEx($model,'promo_code'); ?>
            <?php echo $form->CheckBoxList($model,'promo_code',Promo::model()->getPromoArr())?>
            <?php echo $form->error($model,'promo_code'); ?>
    </div>

    <div class="row">
        <?php echo $form->labelEx($model,'detail'); ?>
        <?php $this->widget('application.extensions.widgets.redactorjs.Redactor', array( 'model' => $model, 'attribute' => 'detail','editorOptions' => array('imageGetJson' => Yii::app()->baseUrl.'/images/editorimg/image.josn','imageUpload' => 'index.php?r=shop/products/imageupload') ));?>
        <?php //$this->widget('application.extensions.tinymce.ETinyMce', array('name'=>'detail','useSwitch' => false,
        //'editorTemplate'=>'full')); ?>
        <?php //echo $form->textArea($model,'detail',array('rows'=>6, 'cols'=>50)); ?>
        <?php echo $form->error($model,'detail'); ?>
    </div>



		</fieldset>
<?php if(!$model->isNewRecord) { ?>
		<fieldset>
		<legend> <?php echo Shop::t('Article Variations'); ?> </legend>
		<div id="variations">

<table>
		<?php 
		printf('<tr><th>%s</th><th>%s</th><th colspan = 2>%s</th><th>%s</th></tr>',
				Shop::t('Specification'), 
				Shop::t('Value'), 
				Shop::t('Price adjustion'),
				Shop::t('Position'));


		$i = 0;
		foreach($model->variations as $variation) { 
			echo renderVariation($variation, $i); 
			$i++;
		}

			echo renderVariation(null, $i); 
 ?>
	</table>	
	<?php echo CHtml::button(Shop::t('Save specifications'), array(
				'submit' => array(
					'//shop/products/update',
					'return' => 'product',
					'id' => $model->product_id))); ?>


				</fieldset>

<?php } ?>


				<div class="row buttons">
				<?php echo CHtml::submitButton($model->isNewRecord ?
						Yii::t('ShopModule.shop', 'Create') 
						: Yii::t('ShopModule.shop', 'Save'),array('id'=>'subsav')); ?>
				</div>

				<?php $this->endWidget(); ?>

				</div><!-- form -->
<script type="text/javascript">
    $(function(){

        if($('#Products_start_time').val()){
            var test=$('#Products_start_time').val();
            var setdate=test.substring(0,10);
            var settime=test.substring(11,19);
            var timeall=settime.split(':');
        }


        function time(date,hh,mm){
            var time=date+' '+hh+':'+mm+':00';
            return time;
        }

        if($('#Products_start_time').val()){
            var test=$('#Products_start_time').val();
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

        if($('#Products_end_time').val()){
            var etest=$('#Products_end_time').val();
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
            $('#Products_start_time').val(time(date,hh,mm))
        })

        $('#start_hour').change(function(){
            var s= $('#start_hour').val();
            $('#start_hour').find('option').each(function(){
                if($(this).attr('value')==s){
                   hh= $(this).html();
                }
            })
            $('#Products_start_time').val(time(date,hh,mm))
        })

        $('#start_min').change(function(){
            var s= $('#start_min').val();
            $('#start_min').find('option').each(function(){
                if($(this).attr('value')==s){
                    mm= $(this).html();
                }
            })
            $('#Products_start_time').val(time(date,hh,mm))
        })

        $('#end_date').change(function(){
            edate=$('#end_date').val();
            $('#Products_end_time').val(time(edate,ehh,emm))
        })

        $('#end_hour').change(function(){
            var s= $('#end_hour').val();
            $('#end_hour').find('option').each(function(){
                if($(this).attr('value')==s){
                    ehh= $(this).html();
                }
            })
            $('#Products_end_time').val(time(edate,ehh,emm))
        })

        $('#end_min').change(function(){
            var s= $('#end_min').val();
            $('#end_min').find('option').each(function(){
                if($(this).attr('value')==s){
                    emm= $(this).html();
                }
            })
            $('#Products_end_time').val(time(edate,ehh,emm))
        })
    })

</script>