<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Sistem Informasi Koperasi Karyawan - Secure Login</title>
	<meta name="description" content="">
	<meta name="author" content="Dani Ibrahim">

	<!-- Bootstrap core CSS -->
  	<link rel="stylesheet" href="assets/css/bootstrap/bootstrap.css" /> 

  	<!-- Login CSS -->
	<link rel="stylesheet" type="text/css" href="assets/css/login/demo.css" />
    <link rel="stylesheet" type="text/css" href="assets/css/login/login.css" />
	<link rel="stylesheet" type="text/css" href="assets/css/login/animate-custom.css" />
</head>
<body style="background-image:url('assets/images/7.jpg')">
	<div class="container">
            <section>				
                <div id="container_demo" style="margin-top:80px;">
                    <div id="wrapper">
                        <div id="login" class="animate form">
                            <form action="cek_login.php" method="post"> 
                                <h1 style="font-size:20pt;font-family:Segoe UI Light">Sistem Informasi Koperasi Karyawan Indocement</h1> 
                                <p style="font-family:Segoe UI Light"> 
                                    <label for="username" class="uname" data-icon="u" >Username</label>
                                    <input id="username" name="username" required="required" type="text" placeholder="Username"/>
                                </p>
                                <p style="font-family:Segoe UI Light"> 
                                    <label for="password" class="youpasswd" data-icon="p"> Your password </label>
                                    <input id="password" name="password" required="required" type="password" placeholder="Password" /> 
                                </p>
                                <p class="keeplogin" style="font-family:Segoe UI Light"> 
									<input type="checkbox" name="loginkeeping" id="loginkeeping" value="loginkeeping" /> 
									<label for="loginkeeping">Keep me logged in</label>
								</p>
                                <p style="font-family:Segoe UI Light"> 
                                    <input class="btn btn-primary btn-lg btn-block" type="submit" value="Login" /> 
								</p>
                                <!-- <p class="change_link">
									Belum punya Akun?
									<a href="#toregister" class="to_register">Register</a>
								</p> -->
                            </form>
                        </div>
                    </div>
                </div>  
            </section>
        </div>
</body>
</html>