<html>
<head>
<?php
	session_start();
	include "db_config.php";
?>

	<title>Juragan Kos</title>

  <!--CSS-->
  <link rel="stylesheet" href="css/bootstrap.min.css">
  <link href="css/style.css" rel="stylesheet">

  <!--JS-->
  <script src="js/jquery.js"></script>
  <script src="js/bootstrap.js"></script>

</head>

<body>

   	<!-- Jika tidak login -->
	<?php
        if(empty($_SESSION['member_username'])) {
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
					<li class="menuItem"><a href="listkamar.php">List Kosan</a></li>
					<li class="menuItem"><a href="signup.php">Register</a></li>
					<li class="menuItem"><a href="login.php">Login</a></li>
				</ul>
			</div>
		</div>
	</nav>

	<!-- Jika Member Login -->
	<?php
		}else 
		if(!empty($_SESSION['member_username']))
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
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>

				<a class="navbar-brand" href="index.php">JuraganKos</a>
			</div>

			<div class="collapse navbar-collapse navbar-right" id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav">				
					<li class="menuItem"><a href="index.php">List Kosan</a></li>	            
                	<li class="dropdown">
                    	<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                    		<i class="fa fa-user-times fa-fw"></i>
	                  		<?php echo ucwords($member_username); ?>
	                  		<span class="glyphicon glyphicon-user"></span>
                    	</a>
               			<ul class="dropdown-menu">
                			<li>
                    	    	<a href="logout.php">
                    			<i class="fa fa-sign-out fa-fw"></i>
                        		Logout
                        		</a>
                   			</li>
                    		<li>
                        		<a href="">
                        		<i class="fa fa-pencil fa-fw"></i>
                        		???
                        		</a>
                    		</li>
                		</ul>
                	</li>
                </ul>	
			</div>

		</div>
	</nav>
	<br>
	<div class="col-md-2">
		<div class="row"></div>
		<ul class="nav nav-pills nav-stacked">
			<li class="active"><a href="dashboard.php"><span class="glyphicon glyphicon-home"></span>  Dashboard</a></li>
			
			<li><a href="kosan.php"><span class="glyphicon glyphicon-briefcase"></span>  Data Kosan</a></li>
			<li><a href="pemilik.php"><span class="glyphicon glyphicon-briefcase"></span>  Data Pemilik</a></li>
			<li><a href="member.php"><span class="glyphicon glyphicon-briefcase"></span>  Data Member</a></li>
			
			<li><a href="logout.php"><span class="glyphicon glyphicon-log-out"></span>  Logout</a></li>			
		</ul>
	</div>

<div class="col-md-10">

	<?php
	 }
	?>
