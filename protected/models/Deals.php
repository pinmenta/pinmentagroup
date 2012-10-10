<?php

/**
 * This is the model class for table "deals".
 *
 * The followings are the available columns in table 'deals':
 * @property integer $deals_id
 * @property integer $category_id
 * @property integer $tax_id
 * @property string $title
 * @property string $description
 * @property string $price
 * @property string $language
 * @property string $specifications
 * @property integer $count
 * @property integer $like
 * @property string $detail
 * @property integer $status
 * @property string $start_time
 * @property string $end_time
 * @property integer $original
 * @property string $promo_code
 */
class Deals extends CActiveRecord
{
	/**
	 * Returns the static model of the specified AR class.
	 * @param string $className active record class name.
	 * @return Deals the static model class
	 */

    public $deals_image=null;
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}

	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'deals';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('category_id,  title,  detail, start_time, end_time, promo_code', 'required'),
			array('category_id,  status, original', 'numerical', 'integerOnly'=>true),
			array('title, price, language', 'length', 'max'=>45),
			array('promo_code', 'length', 'max'=>300),
			array('description, specifications', 'safe'),
			// The following rule is used by search().
			// Please remove those attributes that should not be searched.
			array('deals_id, category_id,  title, description, price, language, specifications, detail, status, start_time, end_time, original, promo_code', 'safe', 'on'=>'search'),
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
            'category' => array(self::BELONGS_TO, 'Category', 'category_id'),

        );
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'deals_id' => 'Deals',
			'category_id' => 'Category',
			'title' => 'Title',
			'description' => 'Description',
			'price' => 'Price',
			'language' => 'Language',
			'specifications' => 'Specifications',
			'detail' => 'Detail',
			'status' => 'Status',
			'start_time' => 'Start Time',
			'end_time' => 'End Time',
			'original' => 'Original',
			'promo_code' => 'Promo Code',
		);
	}


    public function str2arr($str) {
        return preg_split('/\s*,\s*/',trim($str),-1,PREG_SPLIT_NO_EMPTY);//将字符串转换成数组
    }

    public function arr2str($arr) {
        return implode(',',$arr);
    }

    public function gettitle($id) {
        $arr=Deals::model()->findAllByPk($id);
        return $arr[0]->title;
    }

    public function getprice($id) {
        $arr=Deals::model()->findAllByPk($id);
        return $arr[0]->price;
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

		$criteria->compare('deals_id',$this->deals_id);
		$criteria->compare('category_id',$this->category_id);
		$criteria->compare('title',$this->title,true);
		$criteria->compare('description',$this->description,true);
		$criteria->compare('price',$this->price,true);
		$criteria->compare('language',$this->language,true);
		$criteria->compare('specifications',$this->specifications,true);
		$criteria->compare('detail',$this->detail,true);
		$criteria->compare('status',$this->status);
		$criteria->compare('start_time',$this->start_time,true);
		$criteria->compare('end_time',$this->end_time,true);
		$criteria->compare('original',$this->original);
		$criteria->compare('promo_code',$this->promo_code,true);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}
}