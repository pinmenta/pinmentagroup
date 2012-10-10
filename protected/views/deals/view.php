<?php
if($model->status){
    //return false;
}
Yii::app()->clientScript->registerCoreScript('jquery');
$ctjsFile=Yii::app()->baseUrl.'/countdown/jquery.countdown.js';
$ctcssFile=Yii::app()->baseUrl.'/countdown/jquery.countdown.css';
$cs=Yii::app()->clientScript;
$cs->registerCssFile($ctcssFile);
$cs->registerScriptFile($ctjsFile);

if(isset($model->deals_id))
{
    $imgarr=DealsImage::getImg($model->deals_id);
    $model->deals_image=Deals::arr2str($imgarr);
}
echo '----</br>';
echo date('Y-m-d H:i:s');
echo $this->createUrl('//dealsImage/jsCreate');
echo '</br>----</br>';
?>
<?php
$this->breadcrumbs=array(
    Shop::t('Products')=>array('index'),
    $model->title,
);

?>

<div class="product-header">
    <h2 class="title"><?php echo $model->title; ?></h2>

</div>
<div style="width:260px;float: left">
    <?php printf('<h2 class="price">%s</h2>',
    Shop::priceFormat($model->price));
    ?>
    <p>value:<?php echo $model->original?></p>
    <p>Discount: <strong><?php //echo Products::model()->getDiscount($model->deals_id).'%'?></strong> off</p>
    <div id=show_time_box>
        <p>time:<?php //echo Products::model()->getTime($model->start_time,$model->end_time)?></p>
        <div id="countdown"></div>
        <p id="note"></p>
    </div>
    <p><a href='<?php echo $this->createUrl("//dealsOrder/create&dealsid=").$model->deals_id?>'>buy this item</a></p>
    <p style="display: none"><input type="text" id=getcttime value="<?php echo Products::model()->getSecond($model->start_time,$model->end_time)*1000;?>"></p>
</div>
<div class="product-images" style=" float: left; width: 420px; height: 400px; overflow: hidden;">
    <?php
    if($model->deals_image) {
           echo '<img height="400" src="'.$model->deals_image.'">';

    }
    ?>
</div>

<div class="product-options" style="float: left; display: block;">
    <?php //$this->renderPartial('/products/addToCart', array(
    //'model' => $model)); ?>
</div>

<div class="product-description" style="float: left; width: 100%;">
    <p> <?php echo $model->description; ?> </p>
</div>

<div class="product-detail" style="float: left; display:inline-block;">
    <p> detail </p>
    <p><?php echo $model->detail; ?></p>
</div>

    <?php $cs->registerScriptFile(Yii::app()->baseUrl.'/countdown/countdown.js');
?>