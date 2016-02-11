<?php
/**
 * Created by PhpStorm.
 * User: Sam Salvail
 * Date: 2016-02-11
 * Time: 3:12 PM
 */

defined('BASEPATH') OR exit('No direct script access allowed');

class Portfolio extends Application {

    public function index()
    {
        $this->data['title'] = 'Portfolio';
        $this->data['pagebody'] = 'portfolio_body';
        $this->render();
    }
}