<?php

class DealsImageController extends Controller
{
	/**
	 * @var string the default layout for the views. Defaults to '//layouts/column2', meaning
	 * using two-column layout. See 'protected/views/layouts/column2.php'.
	 */
	public $layout='//layouts/column2';

	/**
	 * @return array action filters
	 */
	public function filters()
	{
		return array(
			'accessControl', // perform access control for CRUD operations
		);
	}

	/**
	 * Specifies the access control rules.
	 * This method is used by the 'accessControl' filter.
	 * @return array access control rules
	 */
	public function accessRules()
	{
		return array(
			array('allow',  // allow all users to perform 'index' and 'view' actions
				'actions'=>array('index','view'),
				'users'=>array('*'),
			),
			array('allow', // allow authenticated user to perform 'create' and 'update' actions
				'actions'=>array('create','update'),
				'users'=>array('@'),
			),
			array('allow', // allow admin user to perform 'admin' and 'delete' actions
				'actions'=>array('admin','delete','jsCreate'),
				'users'=>array('admin'),
			),
			array('deny',  // deny all users
				'users'=>array('*'),
			),
		);
	}

	/**
	 * Displays a particular model.
	 * @param integer $id the ID of the model to be displayed
	 */
	public function actionView($id)
	{
		$this->render('view',array(
			'model'=>$this->loadModel($id),
		));
	}

	/**
	 * Creates a new model.
	 * If creation is successful, the browser will be redirected to the 'view' page.
	 */
	public function actionCreate()
	{
		$model=new DealsImage;

		// Uncomment the following line if AJAX validation is needed
		// $this->performAjaxValidation($model);

		if(isset($_POST['DealsImage']))
		{
			$model->attributes=$_POST['DealsImage'];
			if($model->save())
				$this->redirect(array('view','id'=>$model->image_id));
		}

		$this->render('create',array(
			'model'=>$model,
		));
	}



	/**
	 * Updates a particular model.
	 * If update is successful, the browser will be redirected to the 'view' page.
	 * @param integer $id the ID of the model to be updated
	 */
	public function actionUpdate($id)
	{
		$model=$this->loadModel($id);

		// Uncomment the following line if AJAX validation is needed
		// $this->performAjaxValidation($model);

		if(isset($_POST['DealsImage']))
		{
			$model->attributes=$_POST['DealsImage'];
			if($model->save())
				$this->redirect(array('view','id'=>$model->image_id));
		}

		$this->render('update',array(
			'model'=>$model,
		));
	}

	/**
	 * Deletes a particular model.
	 * If deletion is successful, the browser will be redirected to the 'admin' page.
	 * @param integer $id the ID of the model to be deleted
	 */
	public function actionDelete($id)
	{
		if(Yii::app()->request->isPostRequest)
		{
			// we only allow deletion via POST request
			$this->loadModel($id)->delete();

			// if AJAX request (triggered by deletion via admin grid view), we should not redirect the browser
			if(!isset($_GET['ajax']))
				$this->redirect(isset($_POST['returnUrl']) ? $_POST['returnUrl'] : array('admin'));
		}
		else
			throw new CHttpException(400,'Invalid request. Please do not repeat this request again.');
	}

	/**
	 * Lists all models.
	 */
	public function actionIndex()
	{
		$dataProvider=new CActiveDataProvider('DealsImage');
		$this->render('index',array(
			'dataProvider'=>$dataProvider,
		));
	}

	/**
	 * Manages all models.
	 */
	public function actionAdmin()
	{
		$model=new DealsImage('search');
		$model->unsetAttributes();  // clear any default values
		if(isset($_GET['DealsImage']))
			$model->attributes=$_GET['DealsImage'];

		$this->render('admin',array(
			'model'=>$model,
		));
	}

	/**
	 * Returns the data model based on the primary key given in the GET variable.
	 * If the data model is not found, an HTTP exception will be raised.
	 * @param integer the ID of the model to be loaded
	 */
	public function loadModel($id)
	{
		$model=DealsImage::model()->findByPk($id);
		if($model===null)
			throw new CHttpException(404,'The requested page does not exist.');
		return $model;
	}

	/**
	 * Performs the AJAX validation.
	 * @param CModel the model to be validated
	 */
	protected function performAjaxValidation($model)
	{
		if(isset($_POST['ajax']) && $_POST['ajax']==='deals-image-form')
		{
			echo CActiveForm::validate($model);
			Yii::app()->end();
		}
	}


    public function actionjsCreate()
    {/*
            $name = $_FILES["tValue"]["name"];
            if(move_uploaded_file($_FILES["tValue"]["tmp_name"],'images/deals/'.$name))
            {
                echo "<img src='images/deals/".$name."' >";
                echo "<script type='text/javascript'>window.parent.addContent('".$name."');</script>";
            }
        //备份backpinmenta
*/

        if($_FILES["file"]["error"]>0)
        {
            if(isset($_POST['fname']))
                $pics=$_POST['fname'];

            if($pics!==''){
                $picarr=Deals::model()->str2arr($pics);
                foreach($picarr as $s){
                    echo "<div class='img_div' >";
                    echo "<img class='img_list' height='250' src='".$s."' >";
                    echo "</div>";
                }
                echo '<textarea type="text" id=ifpicstr style="display:none" >'.$pics.'</textarea>';
            }
        }else{

        if(isset($_POST['fname']))
            $pics=$_POST['fname'];


        $dir = str_replace('/protected','',Yii::app()->basePath).'/images/deals/';

        $_FILES['file']['type'] = strtolower($_FILES['file']['type']);

        if ($_FILES['file']['type'] == 'image/png'
            || $_FILES['file']['type'] == 'image/jpg'
            || $_FILES['file']['type'] == 'image/gif'
            || $_FILES['file']['type'] == 'image/jpeg'
            || $_FILES['file']['type'] == 'image/pjpeg')
        {
            // setting file's mysterious name
            $file = $dir.md5(date('YmdHis')).'.jpg';
            $imgurl=Yii::app()->baseUrl.'/images/deals/'.md5(date('YmdHis')).'.jpg';
            // copying
            copy($_FILES['file']['tmp_name'], $file);

            $fileArray=array();
            $file_josn='';
            if ($file != "." && $file != ".."&&strpos($file,".")) {
                $fileArray['thumb']=$imgurl;
                $fileArray['image']=$imgurl;
                $fileArray['title']='';
                $fileArray['folder']='';
                $file_josn=json_encode($fileArray);
            }

            echo "<div class='img_div' ><img class='img_list' height='250' src='".$imgurl."'></div>";
            echo '<textarea type="text" id=ifpicstr style="display:none" >'.$pics.'</textarea>';

            echo "<script type='text/javascript'>window.parent.addContent('".$imgurl."');</script>";


        }
    }


    }
}
