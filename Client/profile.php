<?php 
session_start();
if(!isset($_SESSION['Cin'])){
  header("Location:login_client.php");
}else {
  
  $cin  = $_SESSION['Cin'];
  include 'E:\xampp\htdocs\DiagnosticAutomobile_management\db\connection.php';

       $sql  = "SELECT * from client where cin_client  =  '$cin' ";

       $result  = $connection ->query($sql) ->fetchAll(PDO::FETCH_ASSOC);

       if($result){
         foreach ($result as  $value) {
          
        
          $nom_client = $value['nom_client'];
          $prenom_client = $value['prenom_client'];
          $societer_client   = $value['societer_client'];
          $adress_client =   $value['adress_client'];
          $email_client   = $value['email_client'];
          $tele_client = $value['tele_client'];
          $pass_client  = $value['pass_client'];

         }
        }
      }
  

?>
  
<!doctype html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800,900" rel="stylesheet">

  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="css/style.css">
  <link rel="stylesheet" href="css/bootstrap.min.css">

  <title>Acceuil</title>

</head>

<body>
  <header>

  </header>
    <?php
      include 'nav.php';
    ?>
    <!-- Page Content  -->
    <div id="content" class="p-4 p-md-5 pt-5">
     
    <div class="container bootstrap snippets bootdey">
    <h1 class="text-primary">Modifier Profile</h1>
      <hr>
	<div class="row">
      <!-- left column -->
    
      
      <!-- edit form column -->
      <div class="col-md-9 personal-info">
        <div class="alert alert-info alert-dismissable">
          <a class="panel-close close" data-dismiss="alert">×</a> 
          <i class="fa fa-coffee"></i>
          This is an <strong>.alert</strong>. Use this to show important messages to the user.
        </div>
        <h3>Informations Personel</h3>
        
        <form class="form-horizontal" role="form" action="update.php">
          <div class="form-group">
            <label class="col-lg-3 control-label">Nom :</label>
            <div class="col-lg-8">
              <input class="form-control" type="text" value="<?= $nom_client ?>">
            </div>
          </div>
          <div class="form-group">
            <label class="col-lg-3 control-label">Prenom :</label>
            <div class="col-lg-8">
              <input class="form-control" type="text" value="<?= $prenom_client ?>">
            </div>
          </div>
          <div class="form-group">
            <label class="col-lg-3 control-label">Societer :</label>
            <div class="col-lg-8">
              <input class="form-control" type="text" value="<?= $societer_client ?>">
            </div>
          </div>
          <div class="form-group">
            <label class="col-lg-3 control-label">Adress  :</label>
            <div class="col-lg-8">
              <input class="form-control" type="text" value="<?= $adress_client ?>">
            </div>
          </div>
          </div>
          <div class="form-group">
            <label class="col-lg-3 control-label">Email:</label>
            <div class="col-lg-8">
              <input class="form-control" type="text" value="<?= $email_client ?>">
            </div>
          </div>
          </div>
          <div class="form-group">
            <label class="col-lg-3 control-label">Tel :</label>
            <div class="col-lg-8">
              <input class="form-control" type="text" value="<?= $tele_client ?>">
            </div>
          </div>
          </div>
          <div class="form-group">
            <label class="col-lg-3 control-label">Password:</label>
            <div class="col-lg-8">
              <input class="form-control" type="text" value="<?= $pass_client ?>">
            </div>
          </div>
          <button  style="color: black;" type="submit" name="update">Update</button>
         </form>
      </div>
  </div>
</div>
<hr>
    </div>

  <script src="js/jquery.min.js"></script>
  <script src="js/popper.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/main.js"></script>
</body>

</html>