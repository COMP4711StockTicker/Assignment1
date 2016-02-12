<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends Application {

    public function index()
    {
        $stock_list = array();
        $player_list = array();

        $this->load->database();

        $query = $this->db->query('SELECT * FROM stocks');
        foreach ($query->result() as $row)
        {
            array_push($stock_list, $row);
        }

        $query = $this->db->query('SELECT * FROM players');
        foreach ($query->result() as $row)
        {
            array_push($player_list, $row);
        }


        $this->data['title'] = 'Stock Ticker';
        $this->data['pagebody'] = 'home_body';
        $this->data['stock_list'] = $stock_list;
        $this->data['player_list'] = $player_list;
        $this->data['stocks'] = $this->parser->parse('home/stocks', $this->data, true);
        $this->data['players'] = $this->parser->parse('home/players', $this->data, true);
        $this->render();
//        $data = array('page'    => 'Home'
//                     ,'content' =>'home/content');
//        $this->load->view('master',$data);
    }
}
