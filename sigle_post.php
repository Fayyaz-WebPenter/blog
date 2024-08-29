<?php include 'header.php';
include 'config.php';
$id=$_GET['id'];
if(empty($id)){
    header("location:http://localhost/blog/index.php");
}
$sql="SELECT * FROM blog WHERE blog_id='$id'";
$runq=mysqli_query($conn,$sql);
$post=mysqli_fetch_assoc($runq);
 ?>
<div class="container mt-2">
    <div class="row">
        <div class="col-lg-8">
            <div class="card-shadow">
                <div class="card-body" >
                    <div id="single_img">
                    <?php $img1=$post['blog_image'] ?>
                        <a href="admin/uploads/<?php echo $img1; ?>">
                        <img src="admin/uploads/<?php echo $img1; ?>">
                        </a>
                    </div>
                    <hr>
                    <div>
                        <h5><?php echo $post['blog_title']; ?></h5>
                        <p> <?php echo strip_tags($post['blog_body']);?></p>
                    </div>
                </div>
            </div>
        </div>
        <?php include 'sidebar.php' ?>
    </div>
</div>
<?php include 'footer.php' ?>