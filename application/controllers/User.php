<?php
/**
 * Created by PhpStorm.
 * User: Matt
 * Date: 2016-04-17
 * Time: 10:43 PM
 */
defined('BASEPATH') OR exit('No direct script access allowed');

class User extends Application {

    public function index() {

        $this->load->model('Users');

        $this->data['title'] = 'Game Play';
        $this->data['pagebody'] = 'gameplay';
        $this->data['menu'] = $this->parser->parse('menu/loggedin', $this->data, true);

        $this->render();

    }

}