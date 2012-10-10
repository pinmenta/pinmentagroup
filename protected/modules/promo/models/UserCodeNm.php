<?php

/**
 * This is the model class for table "user_code_nm".
 *
 * The followings are the available columns in table 'user_code_nm':
 * @property string $userId
 * @property string $codeId
 * @property integer $codeCount
 */
class UserCodeNm extends CActiveRecord
{
	/**
	 * Returns the static model of the specified AR class.
	 * @param string $className active record class name.
	 * @return UserCodeNm the static model class
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
		return 'user_code_nm';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('userId, codeId, codeCount', 'required'),
			array('codeCount', 'numerical', 'integerOnly'=>true),
			array('userId, codeId', 'length', 'max'=>11),
			// The following rule is used by search().
			// Please remove those attributes that should not be searched.
			array('userId, codeId, codeCount', 'safe', 'on'=>'search'),
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
			'userId' => 'User',
			'codeId' => 'Code',
			'codeCount' => 'Code Count',
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

		$criteria->compare('userId',$this->userId,true);
		$criteria->compare('codeId',$this->codeId,true);
		$criteria->compare('codeCount',$this->codeCount);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}
}