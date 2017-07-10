<html>
<head>
<?php
	session_start();
	include "db_config.php";
?>

	<title>Juragan Kos</title>
	<!-- CSS -->
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<link href="css/style.css" rel="stylesheet">
</head>
<body>

	<?php
        if(empty($_SESSION['member_username'])) {
    ?>
   	<!-- NavBar Sebagai Guest-->
	<nav class="navbar-default" role="navigation">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				
				<a class="navbar-brand" href="index.php">JuraganKos</a>
			</div>

			<div class="collapse navbar-collapse navbar-right navbar-ex1-collapse">
				<ul class="nav navbar-nav">
					<li class="menuItem"><a href="">List Kosan</a></li>
					<li class="menuItem"><a href="signup.php">Register</a></li>
					<li class="menuItem"><a href="login.php">Login</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<?php
		} else if(!empty($_SESSION['member_username']))
            {
            	$member_username = $_SESSION['member_username'];
                $query_validasi = mysqli_query($link,"SELECT * FROM member WHERE member_username = '$member_username'");
                $fetch = mysqli_fetch_assoc($query_validasi);
                extract($fetch);
                $member_nama = $fetch['member_username'];
    ?>
    	<nav class="navbar-default" role="navigation">
			<div class="container">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
				<a class="navbar-brand" href="index.php">JuraganKos</a>
				</div>
			<div class="collapse navbar-collapse navbar-right navbar-ex1-collapse">
				<ul class="nav navbar-nav">				
					<li class="menuItem"><a href="">List Kosan</a></li>
					<ul class="nav navbar-nav navbar-right">
                		<li class="dropdown">
	                    	<a href="logout.php"">
	                    		<i class="fa fa-user-times fa-fw"></i>
	                    		<?php echo ucwords($member_username); ?>
	                    		<span class="glyphicon glyphicon-user"></span>
	                    	</a>
                		</li>
                	</ul>
                </ul>	
			</div>
		</nav>
	<?php }
	?>