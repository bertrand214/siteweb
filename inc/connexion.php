<?php

$bdd = new PDO('mysql:host=localhost;dbname=my_blog;charset=utf8', 'root', '');
if(!$bdd){
	die('Impossible de se connecter à MySQL');
}
