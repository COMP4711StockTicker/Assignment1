<?php
/**
 * Created by PhpStorm.
 * User: Sam Salvail
 * Date: 2016-02-12
 * Time: 5:21 PM
 */
class Transactions extends MY_Model {

    public $code;
    public $name;
    public $category;
    public $value;

    public function __construct()
    {
        // Call the CI_Model constructor
        parent::__construct();
    }

    public function get_all(){
        $query = $this->db->get('transactions');
        return $query->result();
    }

    public function get_player_stock($name)
    {
        $sql = 'SELECT * FROM holdings WHERE player = ?;';
        $query = $this->db->query($sql, array($name));

        return $query->result();
    }

    public function get_player_history($name)
    {
        $sql = 'SELECT * FROM transactions WHERE player = ?;';
        $query = $this->db->query($sql, array($name));

        return $query->result();
    }
}