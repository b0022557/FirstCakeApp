<?php
class Jobapplication extends AppModel {
    public $name = 'Jobapplication';

    var $belongsTo = array (
      'Student' => array (
        'ClassName' => 'Student'
      ),
      'Jobdescription' => array (
        'ClassName' => 'Jobdescription'
      ),
      'Statuscode' => array (
        'ClassName' => 'Statuscode'
      )
    );
}
