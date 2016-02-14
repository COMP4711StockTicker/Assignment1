<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Login extends Application {

    public function index()
    {
        $this->data['title'] = 'Login';
        $this->data['pagebody'] = 'login_body';
        $this->render();
    }

    public function action(){
       // $this->input->post();
       // var_dump($this->input->post);
        var_dump($this->input->get('username'));
        echo $this->input->get('password');
    }
}