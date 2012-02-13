<?php
class Student extends AppModel {
    public $name = 'Student';

   var $hasAndBelongsToMany = array (
     'Course' => array (
       'className' => 'Course'
     )
   );
}
