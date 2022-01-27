<?php
	session_start();
	require_once 'db/connection.php';
 
	if(ISSET($_POST['Register'])){
		if($_POST['nom'] != "" || $_POST['prenom'] != "" || $_POST['cin'] != "" || $_POST['Email'] != "" 
         || $_POST['Adress'] != "" || $_POST['Tele'] != "" || $_POST['Password'] != "" ){
			try{
				$nom  = $_POST['Nom'];
				$prenom = $_POST['Prenom'];
				$cin = $_POST['Cin'];
				$Email = $_POST['Email'];
				$Adress = $_POST['Adress'];
				$tele = $_POST['Tele'];
                if(empty($_POST['Societer'])){
                    $Societer = 'null';
                }else{
                    $Societer = $_POST['Societer'];
                }
				$Password = $_POST['Password'];
				// md5 encrypted
				// $password = md5($_POST['password']);
				
				$connection->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
				$sql = "INSERT INTO `client`(`nom_client`, `prenom_client`, `cin_client`, `societer_client`, 
                `adress_client`, `email_client`, `tele_client`,
                 `pass_client`)
                  VALUES ('$nom','$prenom','$cin','$Societer','$Adress','$Email','$tele','$Password')";
				$connection->exec($sql);
			}catch(PDOException $e){
				echo $e->getMessage();
			}
			$_SESSION['message']=array("text"=>"Client a ete bien cree","alert"=>"info");
			$connection = null;
			header('location:index.php');
		}else{
			echo "
				<script>alert('entrer tout les champ et merci ! ')</script>
				<script>window.location = 'register.php'</script>
			";
		}
	}
?>