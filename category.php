<?php
include "header.php";
include "config.php";
$id=$_GET['id'];
if(empty($id)){
header('location:http://localhost/blog/index.php');
}
$sql="SELECT * FROM blog LEFT JOIN category ON blog.category=category.cat_id
LEFT JOIN user ON  blog.auther_id=user.userid WHERE cat_id='$id' ORDER BY blog.publish_date DESC";
$run=mysqli_query($conn,$sql);
$row=mysqli_num_rows($run);
?>
<div class="container mt-2">
	<div class="row">
		<div class="col-lg-8">
            <?php 
            if($row>0){
                 while($result=mysqli_fetch_assoc($run)){
                    ?>
			<div class="card shadow">
				<div class="card-body d-flex blog_flex">
					<div class="flex-part1">
						<a href="sigle_post.php?id=<?php echo $result['blog_id'];?>"> <?php $img=$result['blog_image'] ?>
                            <img src="admin/uploads/<?php echo $img; ?>"> </a>
					</div>
					<div class="flex-grow-1 flex-part2">
						  <a href="sigle_post.php?id=<?php echo $result['blog_id'];?>" id="title"><?php echo ucfirst($result['blog_title']);?></a>
						<p>
						  <a href="sigle_post.php?id=<?php echo $result['blog_id'];?>" id="body">
                          <?php echo strip_tags(substr($result['blog_body'],0,100))."...";?>
						  </a> <span><br>
                          <a href="sigle_post.php?id=<?php echo $result['blog_id'];?>" class="btn btn-sm btn-outline-primary">Continue Reading
                          </a></span>
                        </p>
						<ul>
							<li class="mx-2"><a href=""> <span>
                                <i class="fa fa-pencil-square-o" aria-hidden="true"></i></span><?php echo $result['username'];?></a>
							</li>
							<li class="mx-2">
								<a href=""> <span><i class="fa fa-calendar-o" aria-hidden="true"></i></span> <?php $tim=$result['publish_date']; echo date('d-M-Y',strtotime($tim));
                                
                                ?> </a>
							</li>
							<li>
								<a href=""> <span><i class="fa fa-tag" aria-hidden="true"></i></span> <?php echo $result['cat_name'];?> </a>
						    </li>
						</ul>
					</div>
				</div>
			</div>
            <?php
                    }
                }
                ?>
		</div>
        <?php
        include "sidebar.php";
        ?>
	</div>
</div>
<?php
include "footer.php";
?>