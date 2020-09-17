<?php include 'includes/session.php'; ?>
<?php
 $output = '';
 if(!isset($_GET['code'])){
  $output .= '
   <div class="alert alert-danger">
                <h4><i class="icon fa fa-warning"></i> Error!</h4>
                Code to activate account not found.
            </div>
            <h4>You may <a href="signup.php">Signup</a> or back to <a href="index.php">Homepage</a>.</h4>
  '; 
 }
 else{
  $conn = $pdo->open();
  $vkey=$_GET['code'];
  $stmt = $conn->prepare("SELECT * FROM users WHERE activate_code='$vkey' AND status=0");
  $stmt->execute(['code'=>$_GET['code']]);
  $row = $stmt->fetch();
  //if($row['numrows'] > 0){
   if($row['status']){
    $output .= '
     <div class="alert alert-danger">
                  <h4><i class="icon fa fa-warning"></i> Error!</h4>
                  Account already activated.
              </div>
              <h4>You may <a href="login.php">Login</a> or back to <a href="index.php">Homepage</a>.</h4>
    ';
   }
   else{
    try{
     $stmt = $conn->prepare("UPDATE users SET status=1 WHERE activate_code='$vkey'");
     $stmt->execute();
     $output .= '
      <div class="alert alert-success">
                   <h4><i class="icon fa fa-check"></i> Success!</h4>
                   Account activated - Email: <b>'.$row['email'].'</b>.
               </div>
               <h4>You may <a href="login.php">Login</a> or back to <a href="index.php">Homepage</a>.</h4>
     ';
    }
    catch(PDOException $e){
     $output .= '
      <div class="alert alert-danger">
                   <h4><i class="icon fa fa-warning"></i> Error!</h4>
                   '.$e->getMessage().'
               </div>
               <h4>You may <a href="signup.php">Signup</a> or back to <a href="index.php">Homepage</a>.</h4>
     ';
    }
   }
  //}
  /*else{
   $output .= '
    <div class="alert alert-danger">
                 <h4><i class="icon fa fa-warning"></i> Error!</h4>
                 Cannot activate account. Wrong code.
             </div>
             <h4>You may <a href="signup.php">Signup</a> or back to <a href="index.php">Homepage</a>.</h4>
   ';
  }*/
  $pdo->close();
 }
?>
<?php include 'includes/header.php'; ?>
<body class="hold-transition skin-blue layout-top-nav">
<div class="wrapper">
 <?php include 'includes/navbar.php'; ?>
  
   <div class="content-wrapper">
     <div class="container">
       <!-- Main content -->
       <section class="content">
         <div class="row">
          <div class="col-sm-9">
           <?php echo $output; ?>
          </div>
          <div class="col-sm-3">
           <?php include 'includes/sidebar.php'; ?>
          </div>
         </div>
       </section>
      
     </div>
   </div>
  
   <?php include 'includes/footer.php'; ?>
</div>
<?php include 'includes/scripts.php'; ?>
</body>
</html>

