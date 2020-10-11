<?php
class Database{
 
    // specify your own database credentials
    private $host = " sql12.freesqldatabase.com";
    private $db_name = " sql12370063";
    private $username = " sql12370063";
    private $password = "kYSL6Vl86w";
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
