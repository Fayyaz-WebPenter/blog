<?php include 'config.php';
$sqli1 = "SELECT * FROM category";
$runs = mysqli_query($conn, $sqli1);
$sqli2 = "SELECT * FROM blog ORDER BY publish_date limit 3";
$runs1 = mysqli_query($conn, $sqli2);
?>

<div class="col-lg-4">
    <div class="card">
        <div class="card-body d-flex right-section">
            <div id="categories">
                <h6>Categories</h6>
                <ul>
                    <?php
                    while ($asoc = mysqli_fetch_assoc($runs)) {
                        ?>
                        <li><a href="category.php?id=<?php  echo $asoc['cat_id'];  ?>" class="text-success font-weight-bold"><?php echo $asoc['cat_name']; ?></a></li>
                        <?php
                    }
                    ?>
                </ul>
            </div>
            <div id="posts">
                <h6>Recent Posts</h6>
                <ul>
                <?php
                    while ($asoc1 = mysqli_fetch_assoc($runs1)) {
                        ?>
                    <li><a href="sigle_post.php?id=<?php echo $asoc1['blog_id']; ?>" class="text-success font-weight-bold"><?php echo $asoc1['blog_title']; ?></a></li>
                    <?php
                    }
                    ?>
                </ul>
            </div>
        </div>
    </div>
</div>
