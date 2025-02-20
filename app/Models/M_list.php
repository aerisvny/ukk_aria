<?php

namespace App\Models;
use CodeIgniter\Model;

class M_list extends Model
{

     protected $table = 'list'; // Tabel utama
    protected $primaryKey = 'id_list'; // Primary key
    protected $allowedFields = ['id_user', 'title', 'description', 'status', 'deadline', 'created_at'];
    public function tambah1($table, $data)
    {
        $builder = $this->db->table($table);
        $insert = $builder->insert($data);

        if ($insert) {
            log_message('debug', 'Data inserted successfully: ' . json_encode($data));
        } else {
            log_message('error', 'Failed to insert data: ' . json_encode($data));
        }

        return $insert;
    }




    public function jointampilwhere($user_id)
    {
        // Builder untuk join tabel list dengan user
        $builder = $this->db->table($this->table)
            ->join('user', 'list.id_user = user.id_user', 'left') // Join tabel user
            ->where('list.id_user', $user_id) // Filter berdasarkan id_user
            ->orderBy('list.id_list', 'DESC') // Urutkan berdasarkan id_list (desc)
            ->select('list.*, user.username'); // Pilih kolom dari list dan username dari user

        // Eksekusi query
        $query = $builder->get();

        // Cek jika query gagal
        if (!$query) {
            log_message('error', 'Query gagal: ' . $this->db->getLastQuery());
            return []; // Kembalikan array kosong jika gagal
        }

        // Kembalikan hasil query
        return $query->getResult();
    }


public function getWhere($table, $where) {
    $query = $this->db->table($table)->getWhere($where);
    if ($query && $query->getNumRows() > 0) {
        return $query->getRowArray(); // Kembalikan data dalam bentuk array
    }
    return null; // Jika tidak ada data, kembalikan null
}
public function getWhereLogin($table, $where) {
    return $this->db->table($table)
    ->where($where)
    ->get()
    ->getRow();
}
public function getActivityLogs() {
    $query = $this->db->table('activity_logs')
    ->join('user', 'activity_logs.user_id = user.id_user', 'left')
    ->select('user.username, activity_logs.activity, activity_logs.description, activity_logs.timestamp')
    ->orderBy('activity_logs.timestamp', 'DESC')
    ->get();

    return $query->getResultArray(); // Kembalikan data sebagai array untuk iterasi di view
}
public function logActivity($user_id, $activity, $description) {
    // Pastikan tabel yang akan di-insert ada
    if (!empty($user_id) && !empty($activity)) {
        $data = [
            'user_id' => $user_id,
            'activity' => $activity,
            'description' => $description,
            'timestamp' => date('Y-m-d H:i:s')
        ];
        // Menyimpan data ke dalam tabel activity_logs
        $this->db->table('activity_logs')->insert($data);
    }
}
public function jointampilRestoreByUserId($id_user)
{
    return $this->db->table('list')
                    ->select('list.*, user.username') // Pilih kolom yang dibutuhkan
                    ->join('user', 'list.id_user = user.id_user') // Join dengan tabel user
                    ->where('list.id_user', $id_user) // Filter berdasarkan id_user
                    ->where('list.deleted_at IS NOT NULL') // Ambil hanya yang dihapus
                    ->get()
                    ->getResult();
}

public function tampil($org)
{
    return $this->db->table($org)->get()->getResult();
}
public function tampilgambar($table)
{
    return $this->db->table($table)->get()->getResult(); // Mengambil semua data dari tabel
}
public function tampillist($id_user)
{
    return $this->where('id_user', $id_user)->findAll();
}
public function joinWhere($table, $tabel2, $on, $where)
{
    return $this->db->table($table)
    ->join($tabel2, $on, 'right')
    ->where($where)
    ->get()
    ->getResult();
}

public function tambah($table,$where)
{
    return $this->db->table($table)->insert($where);
}
public function hapus($kolom,$where)
{
    return $this->db->table($kolom)->delete($where);
}
public function editpw($table, $data, $where)
{
    return $this->db->table($table)->update($data, $where);
}
public function edit($kin,$isi,$where)
{
    return $this->db->table($kin)->update($isi,$where);
}
public function upload($file)
{
    $imageName = $file->getName();
    $file->move(ROOTPATH.'public/img',$imageName);
}
public function uploadgambar($file)
{
    // Define the target path for the uploaded logo
    $targetPath = ROOTPATH . 'public/images/logo.png';

    // Delete the old logo file if it exists
    if (file_exists($targetPath)) {
        unlink($targetPath);
    }

    // Move the uploaded file to the target directory
    $file->move(ROOTPATH . 'public/images', 'logo.png');
    
    return 'logo.png'; // Return the new file name
}


public function editgambar($table, $data, $where)
{
    return $this->db->table($table)->update($data, $where);
}

public function query($query)
{
    return $this->db->query($query)
    ->getResult();
}


}
?>