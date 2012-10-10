<?php

/**
 * This is the model class for table "deals_image".
 *
 * The followings are the available columns in table 'deals_image':
 * @property integer $image_id
 * @property string $image_file
 * @property integer $image_deals_id
 */
class DealsImage extends CActiveRecord
{
	/**
	 * Returns the static model of the specified AR class.
	 * @param string $className active record class name.
	 * @return DealsImage the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}

	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'deals_image';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('image_file, image_deals_id', 'required'),
			array('image_deals_id', 'numerical', 'integerOnly'=>true),
			array('image_file', 'length', 'max'=>300),
			// The following rule is used by search().
			// Please remove those attributes that should not be searched.
			array('image_id, image_file, image_deals_id', 'safe', 'on'=>'search'),
		);
	}

	/**
	 * @return array relational rules.
	 */
	public function relations()
	{
		// NOTE: you may need to adjust the relation name and the related
		// class name for the relations automatically generated below.
		return array(
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'image_id' => 'Image',
			'image_file' => 'Image File',
			'image_deals_id' => 'Image Deals',
		);
	}

	/**
	 * Retrieves a list of models based on the current search/filter conditions.
	 * @return CActiveDataProvider the data provider that can return the models based on the search/filter conditions.
	 */
	public function search()
	{
		// Warning: Please modify the following code to remove attributes that
		// should not be searched.

		$criteria=new CDbCriteria;

		$criteria->compare('image_id',$this->image_id);
		$criteria->compare('image_file',$this->image_file,true);
		$criteria->compare('image_deals_id',$this->image_deals_id);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}


    public function imgdeal($image,$filefolder,$id=null)
    {
        if (is_object($image) && get_class($image)==='CUploadedFile')
        {
            $imgfile='/images/'.$filefolder.$image;  //请根据自己的需求生成相应的路径，但是要记得和下面保存路径保持一致
        }
        else
        {   if($id)
            {   $rs=DealsImage::model()->findAllByPk($id);
                $imgfile=$rs->code_image;
            }
            else
            $imgfile='/images/NoPic.jpg';
        }
        return $imgfile;

    }

    public function getImg($id)
    {
        $imgarr=array();
        $criteria = new CDbCriteria;
        $criteria->addCondition("image_deals_id=".$id);
        $criteria->order = 'image_Index ASC';
        $arr=DealsImage::model()->findAll($criteria);
        foreach($arr as $v)
        {
            $imgarr[$v->image_id]=$v->image_file;
        }
        return $imgarr;
    }

    public function creatimg($file,$dealId)
    {
        $model=new DealsImage;
        $model->image_file=$file;
        $model->image_deals_id=$dealId;
            if($model->save())
                echo 'success save';

    }

    public function delimg($id)
    {
        $criteria = new CDbCriteria;
        $criteria->addCondition("image_deals_id=".$id);
        $arr=DealsImage::model()->findAll($criteria);
        foreach($arr as $v)
        {
            DealsImage::model()->deleteByPk($v->image_id);
        }
    }

}