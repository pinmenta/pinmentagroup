<?php

class PromoController extends Controller
{
	/**
	 * @var string the default layout for the views. Defaults to '//layouts/column2', meaning
	 * using two-column layout. See 'protected/views/layouts/column2.php'.
	 */
    public $ccview='application.modules.promo.view.promo';

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
				'actions'=>array('create','update','getPromo','getuserpromo'),
				'users'=>array('@'),
			),
			array('allow', // allow admin user to perform 'admin' and 'delete' actions
				'actions'=>array('admin','delete'),
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
		$this->render($this->ccview.'/view',array(
			'model'=>$this->loadModel($id),
		));
	}

	/**
	 * Creates a new model.
	 * If creation is successful, the browser will be redirected to the 'view' page.
	 */
	public function actionCreate()
	{
		$model=new Promo;
		// Uncomment the following line if AJAX validation is needed
		// $this->performAjaxValidation($model);

		if(isset($_POST['Promo']))
		{
			$model->attributes=$_POST['Promo'];
            $image=CUploadedFile::getInstance($model,'code_image');
            $model->code_image=DealsImage::imgdeal($image,'promo/');

			if($model->save())
                if ($model->code_image!='/images/NoPic.jpg')
                {
                    $image->saveAs('images/promo/'.$image);//路径必须真实存在，并且如果是linux系统，必须有修改权限
                }
				$this->redirect(array('view','id'=>$model->code_id));

		}

		$this->render($this->ccview.'/create',array(
			'model'=>$model,
		));

	}

    public function object_to_array($obj){
        $_arr = is_object($obj) ? get_object_vars($obj) : $obj;
        foreach ($_arr as $key => $val){
            $val = (is_array($val) || is_object($val)) ? $this->object_to_array($val) : $val;
            $arr[$key] = $val;
        }
        return $arr;
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

		if(isset($_POST['Promo']))
		{
			$model->attributes=$_POST['Promo'];
            $image=CUploadedFile::getInstance($model,'code_image');
            $model->code_image=DealsImage::imgdeal($image,'promo/',$id);

            if($model->save())
                if ($model->code_image!='/images/NoPic.jpg')
                {
                    $image->saveAs('images/promo/'.$image);//路径必须真实存在，并且如果是linux系统，必须有修改权限
                }
				$this->redirect(array('admin','id'=>$model->code_id));
		}

		$this->render($this->ccview.'/update',array(
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
		$dataProvider=new CActiveDataProvider('Promo');
		$this->render($this->ccview.'/index',array(
			'dataProvider'=>$dataProvider,
		));
	}

	/**
	 * Manages all models.
	 */
	public function actionAdmin()
	{
		$model=new Promo('search');
		$model->unsetAttributes();  // clear any default values
		if(isset($_GET['Promo']))
			$model->attributes=$_GET['Promo'];

		$this->render($this->ccview.'/admin',array(
			'model'=>$model,
		));
	}

    public function actiongetPromo()
    {
        if(isset($_POST['userid'])){
            if(isset($_POST['promoid'])){
                $uid=$_POST['userid'];
                $pid=$_POST['promoid'];
                $up=UserCodeNm::model()->findBySql("select codeCount from user_code_nm where userId = :userId and codeId = :codeId", array(':userId' => $uid,':codeId'=>$pid));
                    if($up==null){

                        UserCodeNm::model()->getDbConnection()->createCommand(
                            "INSERT INTO user_code_nm VALUES (".$uid.",".$pid.",'1','0');"
                        )->execute(array('userId' => $uid,'codeId' => $pid));

                        echo 'add new promo';
                    }else{
                        UserCodeNm::model()->getDbConnection()->createCommand(
                            "UPDATE user_code_nm SET codeCount = codeCount+1 where userId=".$uid.' and codeId='.$pid
                        )->execute((array('codeCount'=>'2')));
                        foreach($up as $v){
                            if($v){
                            echo 'you have this promo '.($v+1).'pic';
                            }
                        }

                       // echo 'now you have'.$up->attributes[0]['codeCount'];
                    }



            }else{
                echo'lost promoid';
            }
        }else{
            echo 'login!!';
        }

    }

	/**
	 * Returns the data model based on the primary key given in the GET variable.
	 * If the data model is not found, an HTTP exception will be raised.
	 * @param integer the ID of the model to be loaded
	 */
	public function loadModel($id)
	{
		$model=Promo::model()->findByPk($id);
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
		if(isset($_POST['ajax']) && $_POST['ajax']==='promo-form')
		{
			echo CActiveForm::validate($model);
			Yii::app()->end();
		}
	}
}
