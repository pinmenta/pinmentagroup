<div class="view">
    <div class="product-overview-image">
          	<?php
		  	if($data->images){
		   		$this->renderPartial('/image/view', array('thumb' =>true, 'model' => $data->images[0],'stu'=>'list'));
			}else {
				echo CHtml::image(Shop::register('no-pic.jpg'));
			}
        ?>
	</div>

    <h6>
        <?php //echo CHtml::link(CHtml::encode($data->title), array('products/view', 'id' => $data->product_id));
                echo CHtml::encode($data->title)?>
    </h6>
    <h7><?php echo CHtml::encode($data->description)?></h7>
    
    <div class="clear"></div>
</div>
