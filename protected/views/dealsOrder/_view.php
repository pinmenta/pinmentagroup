<tr>
    <td><?php echo CHtml::link(CHtml::encode(Deals::gettitle($data->order_deals_id)), array('view', 'id'=>$data->order_id)); ?></td>
    <td><?php echo CHtml::encode($data->order_quantity); ?></td>
    <td><?php echo CHtml::encode($data->order_total); ?></td>
    <td><?php echo CHtml::encode(DealsOrder::getstu($data->order_status));?></td>
    <td><?php echo DealsOrder::getstuall($data->order_status,$data->order_id)?></td>
</tr>
