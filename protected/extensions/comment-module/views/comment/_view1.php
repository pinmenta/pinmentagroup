<?php
	Yii::app()->clientScript->registerCss('ext-comment', "
	div.ext-comment {
		width: 100%;
		margin: 25px auto;
		min-height: 100px;
	}
	div.ext-comment p {
		padding-left: 125px;
	}
	div.ext-comment hr {
		margin: 0;
		padding: 0;
		border: none;
		border-bottom: solid 1px #aaa;
	}
	div.ext-comment img {
		float: left;
		width: 80px;
		height: 80px;
	}
	span.ext-comment-name {
		font-weight: bold;
	}
	span.ext-comment-head {
		color: #aaa;
	}
	span.ext-comment-options {
		float: right;
		color: #aaa;
	}
	");
?>

