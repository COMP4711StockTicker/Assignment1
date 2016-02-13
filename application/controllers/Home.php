<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends Application {

    public function index()
    {
        $stock_list = array();
        $player_list = array();

        $this->load->model('Stocks');
        $this->load->model('Players');

        $stock_list = $this->Stocks->get_all();
        $player_list = $this->Players->get_all();

        $this->data['title'] = 'Stock Ticker';
        $this->data['pagebody'] = 'home_body';
        $this->data['stock_list'] = $stock_list;
        $this->data['player_list'] = $player_list;
        $this->data['stocks'] = $this->parser->parse('home/stocks', $this->data, true);
        $this->data['players'] = $this->parser->parse('home/players', $this->data, true);
        $this->render();
    }
}
