<?php

// uncomment the following to define a path alias
// Yii::setPathOfAlias('local','path/to/local-folder');

// This is the main Web application configuration. Any writable
// CWebApplication properties can be configured here.
return array(
    'basePath' => dirname(__FILE__) . DIRECTORY_SEPARATOR . '..',
    'name' => 'PinmentaShop',
    'language' => 'en',

    // preloading 'log' component
    'preload' => array('log'),

    // autoloading model and component classes
    'import' => array(
        'application.models.*',
        'application.components.*',
        'ext.giix.components.*', // giix components
        'application.modules.user.models.*',
        'application.modules.shop.models.*',
        'application.modules.shop.components.*',
       // 'application.extensions.editor.*',
       // 'application.extensions.ckeditor.*',
        'application.extensions.fckeditor.*',
        'application.modules.promo.*',
        'application.modules.promo.models.*',
        //'application.modules.user.components.*',
    ),

    'modules' => array(
        // uncomment the following to enable the Gii tool
        'promo'=>array(
            'class'=> 'application.modules.promo.PromoModule',
        ),
        'user' => array(
            'debug' => false,
            'userTable' => 'user',
            'translationTable' => 'translation',
        ),

        'profile' => array(
            'privacySettingTable' => 'privacysetting',
            'profileFieldTable' => 'profile_field',
            'profileTable' => 'profile',
            'profileCommentTable' => 'profile_comment',
            'profileVisitTable' => 'profile_visit',
        ),


        'avatar' =>array(

        ),
        'registration' => array(

        ),


        'gii' => array(
            'class' => 'system.gii.GiiModule',
            'generatorPaths' => array(
			'ext.giix.generators', // giix generators
		    ),
            'password' => 'pass4pinmenta',
            // If removed, Gii defaults to localhost only. Edit carefully to taste.
            'ipFilters' => array('127.0.0.1', '::1'),
        ),

        'shop' => array('debug' => 'true'),
        'comment'=>array(
            'class'=>'ext.comment-module.CommentModule',
            'commentableModels'=>array(
                // define commentable Models here (key is an alias that must be lower case, value is the model class name)
                'products'=>'Products'
            ),
            // set this to the class name of the model that represents your users
            'userModelClass'=>'YumUser',
            // set this to the username attribute of User model class
            'userNameAttribute'=>'username',
            // set this to the email attribute of User model class
            'userEmailAttribute'=>'email',
            // you can set controller filters that will be added to the comment controller {@see CController::filters()}
//          'controllerFilters'=>array(),
            // you can set accessRules that will be added to the comment controller {@see CController::accessRules()}
//          'controllerAccessRules'=>array(),
            // you can extend comment class and use your extended one, set path alias here
//          'commentModelClass'=>'comment.models.Comment',
        ),

        'starRank' => array(
            'class' => 'application.modules.PcStarRank.PcStarRankModule'
        ),



    ),

    // application components
    'components' => array(
        'cache' => array('class' => 'system.caching.CDummyCache'),
        'user'=>array(
            // enable cookie-based authentication
            //'class' => 'WebUser',
            'class' => 'application.modules.user.components.YumWebUser',
            'allowAutoLogin'=>true,
            'loginUrl' => array('//user/user/login'),

        ),
        // uncomment the following to enable URLs in path-format
        /*
        'urlManager' => array(
            'urlFormat' => 'path',
            'showScriptName' => false,
            'caseSensitive' => false,
            'rules' => array(
                '<action>' => 'site/<action>',
                '<controller:\w+>/<id:\d+>' => '<controller>/view',
                '<controller:\w+>/<action:\w+>/<id:\d+>' => '<controller>/<action>',
                '<controller:\w+>/<action:\w+>' => '<controller>/<action>',
            ),
        ),
        */


        'db' => array(
            // 'connectionString' => 'sqlite:'.dirname(__FILE__).'/../data/testdrive.db',
            'connectionString' => 'mysql:host=localhost;dbname=pinmenta',
            'emulatePrepare' => true,
            'username' => 'root',
            'password' => 'root',
            'charset' => 'utf8',
            'tablePrefix' => '',
        ),
        //配置授权管理器（Authorization Manager）
        'authManager'=>array(
            'class'=>'CDbAuthManager',
            'connectionID'=>'db',
        ),
        'errorHandler' => array(
            // use 'site/error' action to display errors
            'errorAction' => 'site/error',
        ),
        /*
        'log' => array(
            'class' => 'CLogRouter',
            'routes' => array(
                array(
                    'class' => 'CFileLogRoute',
                    'levels' => 'error, warning',
                ),
                // uncomment the following to show log messages on web pages

                    array(
                        'class'=>'CWebLogRoute',
                    ),

            ),
        ),
        */
        /*
        'messages' => array(
            // Pending on core: http://code.google.com/p/yii/issues/detail?id=2624
            'extensionBasePaths' => array(
                'giix' => 'ext.giix.messages', // giix messages directory.
            ),
        ),
        */
    ),

    // application-level parameters that can be accessed
    // using Yii::app()->params['paramName']
    'params' => array(
        // this is used in contact page
        'adminEmail' => 'webmaster@example.com',
    ),
);