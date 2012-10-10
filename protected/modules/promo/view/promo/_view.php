<tr >
    <td>
        <?php echo CHtml::link('<img src="/pinmenta'.CHtml::encode($data->code_image).'" height="35">', array('//promo/promo/view', 'id'=>$data->code_id)); ?>
    </td>
    <td><?php echo CHtml::encode($data->code_title); ?></td>
    <td><?php echo CHtml::encode($data->code_effect); ?></td>
</tr>

