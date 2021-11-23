<?php
class DB
{
    public $con;
    private $severName = 'localhost';
    private $databaseName = 'duan1_nhom3';
    private $userName = 'root';
    private $password = '';
    function __construct()
    {
        $this->con = new mysqli($this->severName, $this->userName, $this->password, $this->databaseName);
        if ($this->con->connect_errno) {
            die('Kết nối thất bại');
        }
    }
    public function getData($sql)
    {
        $datas = $this->con->query($sql);
        return $data = $datas->fetch_all();
    }
    public function setData($sql)
    {
        $isSuccess = $this->con->query($sql);
        if ($isSuccess) {
            return true;
        } else {
            return false;
        }
    }
    public function getValue($sql)
    {
        $datas = $this->con->query($sql);
        $data = $datas->fetch_array();
        $data = $data[0];
        return $data;
    }

    public function getDataOne($sql)
    {
        $datas = $this->con->query($sql);
        return $datas->fetch_assoc();
    }
}
