<?php
class Employer extends AppModel {
    public $name = 'Employer';

    var $hasMany = array(
        'Jobdescription' => array(
            'className'     => 'Jobdescription',
            'foreignKey'    => 'employer_id',
            'dependent'     => true
        )    
    );  
}
