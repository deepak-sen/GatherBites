<?php
	include '../includes/conn.php';
	session_start();

	if(!isset($_SESSION['admin1']) || trim($_SESSION['admin1']) == ''){
		header('location: ../index.php');
		exit();
	}

	$conn = $pdo->open();

	$stmt = $conn->prepare("SELECT * FROM admin WHERE id=:id");
	$stmt->execute(['id'=>$_SESSION['admin1']]);
	$admin1 = $stmt->fetch();

	$pdo->close();

?>