<?php

/**
 * This is the model class for table "coupons_code".
 *
 * The followings are the available columns in table 'coupons_code':
 * @property integer $code_id
 * @property string $code_title
 * @property integer $code_number
 * @property string $code_image
 */
class Promo extends CActiveRecord
{
	/**
	 * Returns the static model of the specified AR class.
	 * @param string $className active record class name.
	 * @return Promo the static model class
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
		return 'coupons_code';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array(' code_title, code_number, code_image, code_effect', 'required'),
			array(' code_number', 'numerical', 'integerOnly'=>true),
			array('code_title', 'length', 'max'=>200),
			array('code_image', 'length', 'max'=>250),
			// The following rule is used by search().
			// Please remove those attributes that should not be searched.
			array('code_id, code_title, code_number, code_image, code_effect', 'safe', 'on'=>'search'),
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
			'code_id' => 'Code',
			'code_title' => 'Code Title',
			'code_number' => 'Code Number',
			'code_image' => 'Code Image',
		);
	}

    public function getPromoArr()
    {
        $criteria=new CDbCriteria;
        $arr=Promo::model()->findAll($criteria);
        foreach($arr as $v){
            $rs[$v->code_id]=$v->code_title;
        }
        return $rs;
    }
/*
    public function getuserpromo()
    {
        $criteria=new CDbCriteria;
        $arr=Promo::model()->findAll($criteria);
        foreach($arr as $v){
            $rs[$v->code_id]=$v->code_title;
        }
        return $rs;
    }

    public function getCusepromo()
    {
        $criteria=new CDbCriteria;
        $arr=Promo::model()->findAll($criteria);
        foreach($arr as $v){
            $rs[$v->code_id]=$v->code_title;
        }
        return $rs;
    }
*/
	/**
	 * Retrieves a list of models based on the current search/filter conditions.
	 * @return CActiveDataProvider the data provider that can return the models based on the search/filter conditions.
	 */
	public function search()
	{
		// Warning: Please modify the following code to remove attributes that
		// should not be searched.

		$criteria=new CDbCriteria;

		$criteria->compare('code_id',$this->code_id);
		$criteria->compare('code_title',$this->code_title,true);
		$criteria->compare('code_number',$this->code_number);
		$criteria->compare('code_image',$this->code_image,true);
        $criteria->compare('code_effect',$this->code_effect,true);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}


}