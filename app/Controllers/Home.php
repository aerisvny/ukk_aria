<?php

namespace App\Controllers;
use App\Models\M_list;
use CodeIgniter\Database\Config;

class Home extends BaseController
{
    public function __construct()
    {
        $this->M_list = new M_list();
    }
    public function dashboard()   
    {
        if(session()->get('level')>0){ 
            $model= new M_list;
            $user_id = session()->get('id');
        $data['jes'] = $model->tampilgambar('toko'); 


        $model->logActivity($user_id, 'dashboard', 'User in dashboard page');
        echo view('header');
        echo view('menu', $data); 
        echo view('dashboard'); 
    }else{
        return redirect()->to('http://localhost:8080/home/login');
    }
}
public function login()
{
    echo view('header');
    echo view('login');

}

public function aksi_login() {
    $u = $this->request->getPost('username');
    $p = $this->request->getPost('pw');

    $model = new M_list();

    $where = [
        'username' => $u,
        'pw' => md5($p)
    ];

    $cek = $model->getWhereLogin('user', $where);

    if ($cek) {
        // Set session jika login berhasil
        session()->set('id', $cek->id_user);
        session()->set('username', $cek->username);
        session()->set('level', $cek->level);

        return redirect()->to('home/dashboard');
    } else {
        // Redirect ke halaman login jika gagal
        return redirect()->to(base_url('home/login'));
    }
}
public function activity_log() {   
    if (session()->get('level') > 0) {
        $model = new M_list();
        $logs = $model->getActivityLogs();
        $data['logs'] = $logs;

        $where = array(
            'id_toko' => 1
        );
        $setting = $model->getWhere('toko', $where);
        $data['jes'] = $model->tampilgambar('toko');

        $data['setting'] = $setting ? $setting : []; 
        echo view('header');
        echo view('menu', $data);
        return view('activity_log', $data);
    } else {
        return redirect()->to('http://localhost:8080/home/login');
    }
}

public function logout() {
    $user_id = session()->get('id');
    
    if ($user_id) {
        $model = new M_list();
        $model->logActivity($user_id, 'logout', 'User logged out.');
    }

    session()->destroy();
    return redirect()->to('http://localhost:8080/home/login');
}


public function user()
{
    if (session()->get('level')> 0) {
        $model = new M_list();
        $data['jel'] = $model->tampil('user');
        $data['jes'] = $model->tampilgambar('toko');
        
        $id = 1; 
        $where = array('id_toko' => $id);

        $data['user'] = $model->getWhere('toko', $where);
        $user_id = session()->get('id');
        $model->logActivity($user_id, 'user', 'User in user page');

        echo view('header');
        echo view('menu', $data);
        echo view('user', $data);
    } else {
        return redirect()->to(base_url('home/login'));
    }
}

public function t_user()
{
    $model= new M_list;
    $user_id = session()->get('id');
    $data['jes'] = $model->tampilgambar('toko');
    
    $data['jel']= $model->tampil('user');
    $model->logActivity($user_id, 'tambah user', 'User in tambah user page');
    echo view('header');
    echo view('menu', $data);
    echo view('t_user',$data);
}

public function aksi_t_user()
{
    $user_id = session()->get('id');
    $a = $this->request->getPost('username');
    $b = md5($this->request->getPost('pass'));
    $u = $this->request->getPost('level');

    $sis = array(
        'level' => $u,
        'username' => $a,
        'pw' => $b
    );

    $model = new M_list;
    $model->tambah('user', $sis);

    $model->logActivity($user_id, 'user', 'User added a new account');  

    return redirect()->to('http://localhost:8080/home/user');
}

public function h_user($id)
{
    $model = new M_list();
    $id_user = session()->get('id');
    $kil = array('id_user' => $id);
    $model->hapus('user', $kil);
    $model->logActivity($id_user, 'user', 'User deleted a user data.');
    return redirect()->to(base_url('home/user'));
}

public function aksi_reset($id)
{
    $model = new M_list();
    $user_id = session()->get('id');

    $where= array('id_user'=>$id);

    $isi = array(

        'pw' => md5('dream123')      

    );
    $model->editpw('user', $isi,$where);
    $model->logActivity($user_id, 'user', 'User reset a password');  

    return redirect()->to('home/user');
}

public function aksi_e_user()
{
    $model = new M_list;
    $user_id = session()->get('id');
    $username = $this->request->getPost('username');
    $password = md5($this->request->getPost('pw'));  
    $level = $this->request->getPost('level');
    $id = $this->request->getPost('id_user');

    $where = ['id_user' => $id];
    $data = [
        'username' => $username,
        'pw' => $password,
        'level' => $level
    ];

    $model->edit('user', $data, $where);
    $model->logActivity($user_id, 'user', 'User updated a user data');

    return redirect()->to(base_url('home/user'))->with('success', 'User updated successfully');
}

public function register()
{
    $model= new M_list;
    $data['jel']= $model->tampil('user');
    echo view('header');
    echo view('register',$data);
}
public function aksi_t_register()
{
    $a= $this->request->getPost('nama');
    $b= md5($this->request->getPost('pass'));
    $sis= array(
        'level'=>'2',
        'username'=>$a,
        'pw'=>$b);
    $model= new M_list;
    $model->tambah('user',$sis);
    return redirect()-> to ('http://localhost:8080/home/login');
}

public function setting()
{
    if (session()->get('level') > 0) {
        $model = new M_list();
        $user_id = session()->get('id');
        $data['jes'] = $model->tampilgambar('toko'); 
        $model->logActivity($user_id, 'setting', 'User in setting page');
        
        echo view('header');
        echo view('menu', $data); 
        echo view('setting', $data); 
    } else {
        return redirect()->to('http://localhost:8080/home/login');
    }
}

public function aksietoko()
{
    $model = new M_list();
    $user_id = session()->get('id');
    $nama = $this->request->getPost('nama');
    $id = $this->request->getPost('id');
    $uploadedFile = $this->request->getFile('foto');

    $where = array('id_toko' => $id);

    $isi = array(
        'nama_toko' => $nama
    );

    if ($uploadedFile && $uploadedFile->isValid() && !$uploadedFile->hasMoved()) {
        $foto = $model->uploadgambar($uploadedFile); 
        $isi['logo'] = $foto;
    }

    $model->logActivity($user_id, 'user', 'User changed the profile company');
    $model->editgambar('toko', $isi, $where);

    return redirect()->to('home/setting');
}


public function list()
{
    $model = new M_list;
    $user_id = session()->get('id');
    $data['jes'] = $model->tampilgambar('toko');

    $deadlineFilter = $this->request->getVar('deadline');
    $data['deadlineFilter'] = $deadlineFilter;

    $query = "SELECT * FROM list WHERE id_user = '$user_id' AND deleted_at IS NULL";
    if ($deadlineFilter) {
        $query .= " AND DATE(deadline) = '$deadlineFilter'";
    }
    $data['jel'] = $model->query($query);

    echo view('header');
    echo view('menu', $data);
    echo view('list', $data);
}



public function aksi_t_list()
{

    $model = new M_list();
    $user_id = session()->get('id');

    $data = [
        'id_user'     => session()->get('user_id'),
        'title'       => $this->request->getPost('title'),
        'description' => $this->request->getPost('description'),
        'status'      => 'pending',
        'deadline'    => $this->request->getPost('deadline'),
        'created_at'  => date('Y-m-d H:i:s'), 
        'id_user' => $user_id
    ];

    if ($model->tambah('list', $data)) {
        return redirect()->to(base_url('home/list'))->with('success', 'To-Do berhasil ditambahkan!');
    } else {
        return redirect()->to(base_url('home/list'))->with('error', 'Gagal menambahkan To-Do.');
    }
}

public function update_t_list($id)
{
    $model = new M_list();
    $user_id = session()->get('id');

    $data = [
        'title'       => $this->request->getPost('title'),
        'description' => $this->request->getPost('description'),
        'status'      => $this->request->getPost('status'),
        'deadline'    => $this->request->getPost('deadline'),
        'id_user' => $user_id
    ];

    if ($model->editgambar('list', $data, ['id_list' => $id])) {
        return redirect()->to(base_url('home/list'))->with('success', 'To-Do berhasil diperbarui!');
    } else {
        return redirect()->to(base_url('home/list'))->with('error', 'Gagal memperbarui To-Do.');
    }
}

public function update_status_failed($id_list)
{
    $this->db->table('todo_list')
             ->where('id_list', $id_list)
             ->update(['status' => 'failed']);
    
    return $this->response->setJSON(['success' => true]);
}


public function h_list1($id)
{
    $model = new M_list();
    $id_user = session()->get('id');
    $kil = array('id_list' => $id);
    $model->hapus('list', $kil);
    $model->logActivity($id_user, 'list', 'User menghapus data to do list.');
    return redirect()->to(base_url('home/list'));
}

public function history()
{
    if (session()->get('level') > 0) {
        $model = new M_list;
        $user_id = session()->get('id'); 

        $data['jes'] = $model->tampilgambar('toko');

        $data['jel'] = $model->jointampilhistory($user_id);
        $model->logActivity($user_id, 'user', 'User accessed the history page');

        // Tampilkan view
        echo view('header');
        echo view('menu', $data);
        echo view('history', $data);
    } else {
        return redirect()->to('http://localhost:8080/home/login');
    }
}


public function h_list($id)
{
    $model= new M_list;
    $user_id = session()->get('id');
    $kil= array('id_list'=>$id);
    $isi= array(
        'deleted_at'=>date('Y-m-d H:i:s'));
    $model->edit('list',$isi,$kil);
    $model->logActivity($user_id, 'list', 'User deleted a list');
    return redirect()-> to('http://localhost:8080/home/list');
}

public function restore()
{
    if (session()->get('level') > 0) {
        $model = new M_list;
        $user_id = session()->get('id'); 

        $data['jes'] = $model->tampilgambar('toko');

        $data['jel'] = $model->jointampilRestoreByUserId($user_id);

        $model->logActivity($user_id, 'user', 'User accessed the restore page');

        echo view('header');
        echo view('menu', $data);
        echo view('restore', $data);
    } else {
        return redirect()->to('http://localhost:8080/home/login');
    }
}


public function aksi_restore($id)
{
    $user_id = session()->get('id');
    $model = new M_list();

    $where= array('id_list'=>$id);
    $isi = array(
        'deleted_at'=>NULL
    );
    $model->edit('list', $isi,$where);
    $model->logActivity($user_id, 'restore', 'User restore a data');  

    return redirect()->to('home/restore');
}

public function mark_complete($id)
{
    $model = new M_list(); 
    $data = [
        'status' => 'complete' 
    ];

    if ($model->editgambar('list', $data, ['id_list' => $id])) {
        return redirect()->to(base_url('home/list'))->with('success', 'Task marked as complete!');
    } else {
        return redirect()->to(base_url('home/list'))->with('error', 'Failed to mark task as complete.');
    }
}


}
