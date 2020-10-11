<?php 
class Contact{
    private $host="ec2-54-160-18-230.compute-1.amazonaws.com";
    private $user="orsivuswylgniq";
    private $pass="d415e10f95921f099e2c5d4f5ff18051f4f7670a039c170f19c48e0bef91fbfb";
    private $db="dent6chqe4s7h";
    public $mysqli;
    
    public function __construct() {
        return $this->mysqli=new mysqli($this->host, $this->user, $this->pass, $this->db);
    }
    
    public function contact_us($data){
        $fname=$data['name'];
        $lname=$data['surname'];
        $email=$data['email'];
        $phone=$data['phone'];
        $message=$data['message'];
        $q="insert into contact_us set first_name='$fname', last_name='$lname', email='$email', phone='$phone', message='$message'";
       $data= $this->mysqli->query($q);
       if($data==true){
           $body="One message received ,contact us. details are below..<br> first_name='$fname', last_name='$lname', email='$email', phone='$phone', message='$message'";
           return $this->sent_mail("midhatfatima711@gmail.com", "Message received from Midhat", $body);
       }
    }
    
    public function sent_mail($to,$subject,$body){
$mailFromName="MidhatFatima";
$mailFrom="midhatfatima711@gmail.com";
/////////////////////////////////////////////////////////////
//Mail Header
$mailHeader = 'MIME-Version: 1.0'."\r\n";
$mailHeader .= "From: $mailFromName <$mailFrom>\r\n";
$mailHeader .= "Reply-To: $mailFrom\r\n";
$mailHeader .= "Return-Path: $mailFrom\r\n";
//$mailHeader .= "CC: $mailCC\r\n";
//$mailHeader .= "BCC: $mailBCC\r\n";
$mailHeader .= 'X-Mailer: PHP'.phpversion()."\r\n";
$mailHeader .= 'Content-Type: text/html; charset=utf-8'."\r\n";
/////////////////////////////////////////////////////////////
//Email to Admin
if(mail($to, $subject, $body, $mailHeader)){
 return true;
 }else{
return false;
 }
    }
}


?>
