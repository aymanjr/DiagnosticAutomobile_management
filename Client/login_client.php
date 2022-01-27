
    <?php 
    include 'E:\xampp\htdocs\DiagnosticAutomobile_management\db\connection.php';
            session_start();
            
            if(isset($_POST['login'])){
                if(empty($_POST['Cin']) or empty($_POST['Password'])  ){
                    
                    echo"<center> <h1>Cin ,  Pass peux pas etre Vide .... !</h1> </center>";
                }else {

                    $Cin = trim($_POST['Cin']);
                    $Pass = $_POST['Password'];
    
                    $querry = $connection->prepare("SELECT * FROM Client WHERE cin_client=? and pass_client = ? ");
                    $querry->execute(array($Cin,$Pass));
                    $control = $querry->fetch(PDO::FETCH_OBJ);

                    if($control){
                        $_SESSION['Cin']= $Cin;
                       header("Location:index.php");
                       // echo $_SESSION['username'];

                    }else{
                       echo"<script>alert('incorrect username ou password' )</script>";
                    }

                }

            
            }

    ?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
     <link rel="stylesheet" href="./css/login_style.css">
    <title>Diagnosstic System</title>
</head>
<body>

    <form action="" method="POST">
		<h1>Login</h1>
		<label>CIN</label>
		<input type="text" name="Cin" />
		<label>Password</label>
		<input type="password" name="Password" />
		<br>
		<button  class="btn" type="submit" name="login">Log In</button>

          <br>
        Nouvelle Client register ici : <a href="register.php">Register</a>
	</form>



    <script src="/js/jquery.min.js"></script>
    <script src="/js/popper.js"></script>
    <script src="/js/bootstrap.min.js"></script>
    <script src="/js/main.js"></script>
</body>
</html>