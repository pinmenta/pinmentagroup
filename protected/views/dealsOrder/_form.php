<div class="form">
    <?php
    //重定向浏览器
    if(!isset($_GET['dealsid']))
    {
        $url = $this->createUrl("//Deals/");
        echo "<script language='javascript' type='text/javascript'>";
        echo "window.location.href='$url'";
        echo "</script>";
    }
    Yii::app()->clientScript->registerCoreScript('jquery');

    $deals_id=$_GET['dealsid'];
    $model->order_deals_id=$deals_id;
    ?>


<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'deals-order-form',
	'enableAjaxValidation'=>false,
)); ?>

	<p class="note">Fields with <span class="required">*</span> are required.</p>

	<?php echo $form->errorSummary($model); ?>



    <div class="row">
        <table style="width: 400px;text-align: center">
            <tr>
                <td style="width: 120px;"><strong>Deals</strong></td>
                <td style="width: 20px;text-align: center"><strong>Quantity</strong></td>
                <td style="width: 20px;text-align: center"></td>
                <td style="width: 20px;text-align: center"><strong>Price</strong></td>
                <td style="width: 20px;text-align: center"><strong>Total</strong></td>
            </tr>

            <tr>
                <td style="width: 120px;"><?php echo Deals::gettitle($deals_id)?></td>
                <td style="width: 20px;text-align: center"><?php echo $form->textField($model,'order_quantity',array('style'=>'width:30px','value'=>1)); ?></td>
                <td style="width: 20px;text-align: center">X</td>
                <td style="width: 20px;text-align: center"><input type="text" readonly='readonly' id='deals_price' style="border: none; text-align: center;width: 60px" value="<?php echo Deals::getprice($deals_id)?>"> </td>
                <td style="width: 20px;text-align: center"><span id=DealsOrder_order_total><?php echo '$'.Deals::getprice($deals_id) ?></span></td>
            </tr>
        </table>
    </div>



	<div class="row buttons">
		<?php echo CHtml::submitButton($model->isNewRecord ? 'Create' : 'Save'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- form -->
<script type="text/javascript">
    $(function(){
        $('#DealsOrder_order_quantity').keyup(function(){
            var qy=$('#DealsOrder_order_quantity').val();
            var pr=$('#deals_price').val();
            var tt='$'+qy*pr;
            $('#DealsOrder_order_total').html(tt);
        })
    })

</script>