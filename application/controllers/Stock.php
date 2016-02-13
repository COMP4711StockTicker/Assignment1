<?php
/**
 * Created by PhpStorm.
 * User: Matt
 * Date: 2016-02-12
 * Time: 3:37 PM
 */
defined('BASEPATH') OR exit('No direct script access allowed');

class Stock extends Application {

    public function index()
    {
        $stock_list = array();

        $this->load->database();

        $query = $this->db->query('SELECT * FROM stocks');
        foreach ($query->result() as $row)
        {
            array_push($stock_list, $row);
        }


        $this->data['title'] = 'Trade Market';
        $this->data['pagebody'] = 'stock_body';
        $this->data['stock_list'] = $stock_list;
        $this->data['trades'] = $this->parser->parse('stock/trades', $this->data, true);
        $this->render();
    }
}