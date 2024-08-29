<?php
$page=basename($_SERVER['PHP_SELF'],'.php');
include 'config.php';
$sqli1 = "SELECT * FROM category";
$runs = mysqli_query($conn, $sqli1);

?>



<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="style.css">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css" integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">

    <title>Blog Website</title>
  </head>
  <body>
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container">
  <a class="navbar-brand" href="#">Blog</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarColor02" aria-controls="navbarColor02" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarColor02">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item ">
        <a class="nav-link <?php if($page=='index'){
    echo "active";
}else{
    echo "";
} ?>" href="index.php">Home
          <span class="sr-only">(current)</span>
        </a>
      </li>
      
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">Category</a>
        <div class="dropdown-menu">
        <?php
           while ($asoc = mysqli_fetch_assoc($runs)) {
                        ?>
          <a class="dropdown-item" href="category.php?id=<?php  echo $asoc['cat_id'];  ?>"><?php echo $asoc['cat_name']; ?></a>
          <?php
             }
          ?>
        </div>
      </li>
      <li class="nav-item ">
        <a class="nav-link <?php if($page=='login'){
    echo "active";
}else{
    echo "";
} ?>" href="login.php">Login
        </a>
     
    </ul>
    <?php
    if(isset($_GET['keywords'])){
     $key=$_GET['keywords'];
    }else{
     $key="";
    }
    ?>
    <form class="form-inline my-2 my-lg-0" action="search.php" method="get">
      <input class="form-control mr-sm-2" type="text" name="keywords" required maxlength="70" autocomplete="off" placeholder="Search" value="<?php echo  $key ?>">
      <button class="btn btn-secondary my-2 my-sm-0" type="submit">Search</button>
    </form>
  </div>
  </div>
</nav>
