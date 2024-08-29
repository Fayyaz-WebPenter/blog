<?php
include "header.php";
session_start();
if(isset($_SESSION['user_data'])){
    header('location:http://localhost/blog/admin/index.php');
    exit;
   }?>
<div class="container">
    <div class="row">
        <div class="col-xl-5 col-md-4 m-auto p-5 bg-info"  style="margin-top:3rem !important";>
            <p class="text-center">Blog! login Your Account</p>
            <form action="" method="POST">
            <div class="mb-3">
                    <input type="text" name="username" placeholder="Username" class="form-control" aria-label="Email" required>
                </div>
            <div class="mb-3">
                    <input type="email" name="email" placeholder="Email" class="form-control" aria-label="Email" required>
                </div>
                <div class="mb-3">
                    <input type="password" name="password" placeholder="Password" class="form-control" aria-label="Password" required>
                </div>
                <div class="mb-3">
                    <input type="submit" name="login" class="btn btn-primary" value="Login">
                </div>
                <?php
                if(isset($_SESSION['login_error'])){
                    echo $_SESSION['login_error'];
                    unset($_SESSION['login_error']);
                }
                ?>
            </form>
        </div>
    </div>
</div>
<?php

include "config.php";
if(isset($_POST['login'])){
    $username=$_POST['username'];
    $email=$_POST['email'];
    $password=$_POST['password'];
   $sql="SELECT * FROM user WHERE username='$username' AND email='$email' AND password='$password'";
   $result=mysqli_query($conn,$sql);
   $data = mysqli_num_rows($result);
   if($data > 0){
    $fetch=mysqli_fetch_array($result);
    $user_data=array($fetch['userid'],$fetch['username'],$fetch['role']);
    $_SESSION['user_data'] = $user_data;
       header("Location: admin/index.php");
       exit();
   } else {
       $_SESSION['login_error'] = "Invalid Credentials";
       header("Location: login.php"); 
       exit();
   }
}
include "footer.php";
?>