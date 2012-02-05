<?php
class StudentsController extends AppController {
    public $name = 'Students';
    public $helpers = array('Html', 'Form');

    public function index() {
        $this->set('students', $this->Student->find('all'));
    }
}
