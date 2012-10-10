<?php

/**
 * This is the model class for table "deals_order".
 *
 * The followings are the available columns in table 'deals_order':
 * @property integer $order_id
 * @property string $order_no
 * @property integer $order_deals_id
 * @property integer $order_quantity
 * @property integer $order_total
 * @property string $order_time
 * @property integer $order_status
 */
class DealsOrder extends CActiveRecord
{
	/**
	 * Returns the static model of the specified AR class.
	 * @param string $className active record class name.
	 * @return DealsOrder the static model class
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
		return 'deals_order';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('order_no, order_deals_id, order_quantity, order_total, order_time, order_status,order_user', 'required'),
			array('order_deals_id, order_quantity, order_total, order_status', 'numerical', 'integerOnly'=>true),
			array('order_no', 'length', 'max'=>100),
			// The following rule is used by search().
			// Please remove those attributes that should not be searched.
			array('order_id, order_no, order_deals_id, order_quantity, order_total, order_time, order_status', 'safe', 'on'=>'search'),
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
			'order_id' => 'Order',
			'order_no' => 'Order No',
			'order_deals_id' => 'Order Deals',
			'order_quantity' => 'Order Quantity',
			'order_total' => 'Order Total',
			'order_time' => 'Order Time',
			'order_status' => 'Order Status',
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

		$criteria->compare('order_id',$this->order_id);
		$criteria->compare('order_no',$this->order_no,true);
		$criteria->compare('order_deals_id',$this->order_deals_id);
		$criteria->compare('order_quantity',$this->order_quantity);
		$criteria->compare('order_total',$this->order_total);
		$criteria->compare('order_time',$this->order_time,true);
		$criteria->compare('order_status',$this->order_status);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}


    public function getstu($stu)
    {
        switch ($stu)
        {
            case 1:
                $str='Paid';
                break;
            case 2:
                $str='finish';
            break;
            default:
                $str='no pay';
        }
        return $str;
    }

    public function getstuall($stu,$id=null)
    {
        switch ($stu)
        {
            case 1:
                $str='finish';
                break;
            default:
                //$str='<a ref="#">go to pay</a> | <a href="'.$this->createUrl("//dealsOrder/delete&id=".$id).'">cancel</a> ';
                $str='<a ref="#">go to pay</a> | <a href="javascript:void(0)" onclick=del('.$id.')>cancel</a> ';

        }
        return $str;
    }

    public function finduser($id)
    {
        $rs=DealsOrder::model()->findByPK($id);
        return $rs->order_user;
    }
}