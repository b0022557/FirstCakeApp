<?php
class Jobdescription extends AppModel {
    public $name = 'Jobdescription';

    var $belongsTo = array (
      'Employer' => array (
        'ClassName' => 'Employer'
      ),
      'Statuscode' => array (
        'ClassName' => 'Statuscode'
      )
    );
}
