<?php
session_start();
$conn=new mysqli("localhost","root","","smartcycle_ai");
if($conn->connect_error) die("Database connection failed: ".$conn->connect_error);
$conn->set_charset("utf8mb4");
function e($v){return htmlspecialchars((string)$v,ENT_QUOTES,"UTF-8");}
function money($v){return "₹".number_format((float)$v,2);}
function go($u){header("Location: $u");exit;}
if(!isset($_SESSION["user_id"]) && basename($_SERVER["PHP_SELF"])!=="login.php") go("login.php");
?>