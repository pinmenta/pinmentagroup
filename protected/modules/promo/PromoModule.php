<?php
/**
 * Created by JetBrains PhpStorm.
 * User: root
 * Date: 9/11/12
 * Time: 3:58 PM
 * To change this template use File | Settings | File Templates.
 */

Yii::setPathOfAlias('PromoModule' , dirname(__FILE__));


class PromoModule extends CWebModule {

    public function init() {
        $this->setImport(array(
            'application.modules.promo.controllers.*',
            'application.modules.promo.models.*',
        ));
    }

    public function beforeControllerAction($controller, $action)
    {
        if(parent::beforeControllerAction($controller, $action))
        {
            return true;
        }
        else
            return false;
    }

}
