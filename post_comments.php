<?php
$host="localhost";
$username="root";

$databasename="sample";

$connect=mysql_connect($host,$username);
$db=mysql_select_db($databasename);

if(isset($_POST['textarea']) && isset($_POST['nameBox']))
{
  $comment=$_POST['textarea'];
  $name=$_POST['namebox'];
  $insert=mysql_query("insert into comments values('','$name','$comment',CURRENT_TIMESTAMP)");
  
  $id=mysql_insert_id($insert);

  $select=mysql_query("select name,comment,post_time from comments where name='$name' and comment='$comment' and id='$id'");
  
  if($row=mysql_fetch_array($select))
  {
	  $name=$row['name'];
	  $comment=$row['comment'];
      $time=$row['post_time'];
  ?>
      <div class="comment"> 
	    <p class="name">Posted By:<?php echo $name;?></p>
        <p class="comment"><?php echo $comment;?></p>	
	    <p class="time"><?php echo $time;?></p>
	  </div>
  <?php
  }
exit;
}

?>