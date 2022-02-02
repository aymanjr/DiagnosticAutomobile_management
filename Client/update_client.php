<?php 
   session_start();
   if(!isset($_SESSION['Cin'])){
     header("Location:login_client.php");
   }else {
     
     $cin  = $_SESSION['Cin'];

     if(isset($_POST['update'])){
        include 'E:\xampp\htdocs\DiagnosticAutomobile_management\db\connection.php';
        
        $nom_client = $_POST['nom_client'];
        $prenom_client =  $_POST['prenom_client'];
        $societer_client   =  $_POST['societer_client'];
        $adress_client =    $_POST['adress_client'];
        $email_client   =  $_POST['email_client'];
        $tele_client = $_POST['tele_client'];
        $pass_client  =  $_POST['pass_client'];

        $sql = " UPDATE `client` SET `nom_client`= '$nom_client',
        `prenom_client`='$prenom_client',
        `societer_client`='$societer_client',`adress_client`='$adress_client',
        `email_client`='$email_client',`tele_client`='$tele_client',
        `pass_client`='$pass_client' WHERE cin_client = '$cin'";


       if ($connection->prepare($sql)->execute()) {
       header("Location:profile.php");
       
       } 

       
         

     }




   };


?>