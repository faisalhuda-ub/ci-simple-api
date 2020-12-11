<?php

defined('BASEPATH') OR exit('No direct script access allowed');

require APPPATH . '/libraries/REST_Controller.php';
use Restserver\Libraries\REST_Controller;

class News extends REST_Controller {

    function __construct($config = 'rest') {
        parent::__construct($config);
        $this->load->database();
    }

    //Menampilkan data kontak
    function index_get() {
        $id = $this->get('id');
        if ($id == '') {
            $news = $this->db->get('news')->result();
        } else {
            $this->db->where('id_news', $id);
            $news = $this->db->get('news')->result();
        }
        $this->response($news, 200);
    }

    //Mengirim atau menambah data postingan baru
    function index_post() {
        $data = array(
                    'title'          => $this->post('title'),
                    'description'    => $this->post('description'),
                    'link'    => $this->post('link'),
                    'pubdate'    => $this->post('pubdate'),
                    'creator'    => $this->post('creator')
                );
        $insert = $this->db->insert('news', $data);
        if ($insert) {
            $this->response($data, 200);
        } else {
            $this->response(array('status' => 'fail', 502));
        }
    }

    //Memperbarui data postingan sesuai parameter id
    function index_put() {
        $id = $this->put('id');
        $data = array(
                    'id_news'       => $this->put('id'),
                    'title'          => $this->put('title'),
                    'description'    => $this->put('description'),
                    'link'    => $this->put('link'),
                    'pubdate'    => $this->put('pubdate'),
                    'creator'    => $this->put('creator')
                );
        $this->db->where('id_news', $id);
        $update = $this->db->update('news', $data);
        if ($update) {
            $this->response($data, 200);
        } else {
            $this->response(array('status' => 'fail', 502));
        }
    }

    // menghapus postingan tertentu sesuai parameter id
    function index_delete() {
        $id = $this->delete('id');
        $this->db->where('id_news', $id);
        $delete = $this->db->delete('news');
        if ($delete) {
            $this->response(array('status' => 'success'), 201);
        } else {
            $this->response(array('status' => 'fail', 502));
        }
    }
}
?>