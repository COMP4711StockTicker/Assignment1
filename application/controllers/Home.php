<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends CI_Controller {

    public function index()
    {

        $data = array('page'    => 'Home'
                     ,'content' =>'home/content');
        $this->load->view('master',$data);
    }
    public function stocks()
    {
    }
    public function players()
    {

    }
}
