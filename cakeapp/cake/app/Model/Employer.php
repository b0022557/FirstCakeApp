<?php
class Employer extends AppModel {
    public $name = 'Employer';

    var $hasMany = array(
        'Jobdescription' => array(
            'className'     => 'Jobdescription',
            'foreignKey'    => 'employers_id',
            'dependent'     => true
        )    
    );  
}
