<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends Application {

    public function index()
    {
        $this->data['title'] = 'Stock Ticker';
        $this->data['pagebody'] = 'home_body';
        $this->render();
//        $data = array('page'    => 'Home'
//                     ,'content' =>'home/content');
//        $this->load->view('master',$data);
    }
}
