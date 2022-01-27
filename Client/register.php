
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
		<h1>Register</h1>
		<label>Nom</label>
		<input type="text" name="Nom" />
        <label>Prenom</label>
		<input type="text" name="Prenom" />
        <label>Cin</label>
		<input type="text" name="Cin" required />
        <label>Email</label>
		<input type="text" name="Email" />
        <label>Adress</label>
		<input type="text" name="Adress" />
        <label>Societer(optionel)</label>
		<input type="text" name="Societer" />
        <label>Tele</label>
		<input type="text" name="Tele" />
		<label>Password</label>
		<input type="text" name="Password" />
		<br>
		<button  class="btn" type="submit" name="login">Log In</button>


	</form>



    <script src="/js/jquery.min.js"></script>
    <script src="/js/popper.js"></script>
    <script src="/js/bootstrap.min.js"></script>
    <script src="/js/main.js"></script>
</body>
</html>