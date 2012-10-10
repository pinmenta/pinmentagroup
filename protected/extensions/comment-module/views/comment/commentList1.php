<?php

/** @var CArrayDataProvider $comments */
$comments = $model->getCommentDataProviderlimit();
$comments->setPagination(false);

$this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$comments,
    'summaryText'=>'{count}',
	'itemView'=>'comment.views.comment._view1'
));

/*
$this->renderPartial('comment.views.comment._form', array(
	'comment'=>$model->commentInstance
));*/
