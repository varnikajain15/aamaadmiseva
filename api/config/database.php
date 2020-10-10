<?php
class Database{
 
    // specify your own database credentials
    private $host = "ec2-54-160-18-230.compute-1.amazonaws.com";
    private $db_name = "dent6chqe4s7h";
    private $username = "orsivuswylgniq";
    private $password = "d415e10f95921f099e2c5d4f5ff18051f4f7670a039c170f19c48e0bef91fbfb";
    public $conn;
 
    // get the database connection
    public function getConnection(){
 
        $this->conn = null;
 
        try{
            $this->conn = new PDO("mysql:host=" . $this->host . ";dbname=" . $this->db_name, $this->username, $this->password);
            $this->conn->exec("set names utf8");
        }catch(PDOException $exception){
            echo "Connection error: " . $exception->getMessage();
        }
 
        return $this->conn;
    }
}
?>