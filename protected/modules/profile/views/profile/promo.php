<table >
    <tr >
        <td>pic</td>
        <td>title</td>
        <td>effect</td>
    </tr>
<?php $this->widget('zii.widgets.CListView', array(
    'dataProvider'=>$dataProvider,
    'itemView'=>'application.modules.promo.view.promo._view',
)); ?>
</table>