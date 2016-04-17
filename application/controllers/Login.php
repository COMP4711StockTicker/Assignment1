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
        // load
        $this->load->model('Users');

        // variables
        $user               = new Users();
        $username           = $_POST['username'];
        $password           = hash('md5', $_POST['password']);
        $current_user       = $user->login($username, $password);

        if ($user != null){
            $_SESSION['current_user'] = $current_user;
            var_dump($current_user);
            $sess_array = array(
                'id' => $current_user[0]->id,
                'username' => $current_user[0]->username
            );
            $this->session->set_userdata('logged_in', $sess_array);
            redirect('/');
        }
        else {
            redirect('login');
        }
    }
    public function logout(){
        $this->session->unset_userdata('logged_in');
        session_destroy();
        redirect('login');
    }
}