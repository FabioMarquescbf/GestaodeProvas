<?php
session_start();

$login = $_POST['login'];
$senha = $_POST['senha'];

//busca no banco por usuarioa.

$result = mysql_query("SELECT * FROM `USUARIO`
WHERE `NOME` = '$login' AND `SENHA`= '$senha'");

if(mysql_num_rows ($result) > 0 )
{
$_SESSION['login'] = $login;
$_SESSION['senha'] = $senha;
header('location:site.php');
}
else{
  unset ($_SESSION['login']);
  unset ($_SESSION['senha']);
  header('location:index.php');

  }

?>