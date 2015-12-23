<?php
include_once 'inc/connexion.php'; 

$post = array();
$error = array();

if(!empty($_POST)){
	foreach($_POST as $key => $value){
		$post[$key] = trim(strip_tags($value));
	}

	if(empty($post['title'])){
		$error[] = 'Le titre ne peut être vide';
	}
	if(empty($post['img'])){
		$error[] = 'L\'image ne peut être vide';
	}
	if(empty($post['article'])){
		$error[] = 'L\'article ne peut être vide';
	}

	if(count($error) > 0){
		$errorShow = true;
	}
	else {

		$insertArt = $bdd->prepare('INSERT INTO articles (title, img, content, date) VALUES (:title, :img, :content, NOW())');
		$insertArt->bindValue(':title', $post['title'], PDO::PARAM_STR);
		$insertArt->bindValue(':img', $post['img'], PDO::PARAM_STR);
		$insertArt->bindValue(':content', $post['article'], PDO::PARAM_STR);

		if($insertArt->execute()){
			$formSuccess = true;
			$id_article = $bdd->lastInsertId();
		}
		else {
			$errorShow = true;
			$error[] = 'Une erreur est survenue...!';
		}

	}


}
?>
<?php include_once 'inc/header.php'; ?>
	<main>

		<?php if(isset($errorShow) && $errorShow): ?>
			<div class="errorContent"><?php echo implode('<br>', $error); ?></div>
		<?php endif; ?>
		<?php if(isset($formSuccess) && $formSuccess): ?>
			<div class="successContent">
				Votre article a été publié ! <a href="read.php?id=<?php echo $id_article; ?>" class="link">&raquo; Voir à l'article</a>
			</div>
		<?php endif; ?>


		<form method="POST">

			<label for="title">Titre</label>
			<input type="text" id="title" name="title" placeholder="Votre titre">

			<br>

			<label for="img">Image</label>
			<input type="text" id="img" name="img" placeholder="Votre image">

			<br>


			<label for="article">Contenu</label>
			<textarea name="article" cols="40" rows="10"></textarea>

			<br>


			<input type="submit" value="Envoyer">

		</form>

	</main>
<?php include_once 'inc/footer.php'; ?>