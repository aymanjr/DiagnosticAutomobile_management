
    <?php 
    include 'db\connection.php';
            session_start();
            
            if(isset($_POST['login'])){
                if(empty($_POST['username']) or empty($_POST['password'])  ){
                    
                    echo"<center> <h1>Username ,  Pass peux pas etre Vide .... !</h1> </center>";
                }else {

                    $Username = trim($_POST['username']);
                    $Pass = $_POST['password'];
    
                    $querry = $connection->prepare("SELECT * FROM users WHERE username_user=? and password_user = ? ");
                    $querry->execute(array($Username,$Pass));
                    $control = $querry->fetch(PDO::FETCH_OBJ);

                    if($control){
                        $_SESSION['username']= $Username;
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
		<label>Username</label>
		<input type="text" name="username" />
		<label>Password</label>
		<input type="password" name="password" />
		<br>
		<button  class="btn" type="submit" name="login">Log In</button>


	</form>



    <script src="/js/jquery.min.js"></script>
    <script src="/js/popper.js"></script>
    <script src="/js/bootstrap.min.js"></script>
    <script src="/js/main.js"></script>
</body>
</html>