<?php
include_once 'inc/connexion.php'; 

$post = array();
$error = array();

if(!empty($_POST)){
	foreach($_POST as $key => $value){
		$post[$key] = trim(strip_tags($value));
	}

	if(empty($post['id_article']) && !is_numeric($post['id_article'])){
		$error[] = 'Aucun ID d\'article fourni ou celui-ci est incorrect';
	}

	if(empty($post['pseudo'])){
		$error[] = 'Le pseudo ne peut être vide';
	}
	if(empty($post['commentaire'])){
		$error[] = 'Le commentaire ne peut être vide';
	}

	if(count($error) > 0){
		$errorShow = true;
	}
	else {

		$insertUser = $bdd->prepare('INSERT INTO users (nickname, date_registered) VALUES (:pseudo, NOW())');
		$insertUser->bindValue(':pseudo', $post['pseudo'], PDO::PARAM_STR);

		if($insertUser->execute()){
			$user_id = $bdd->lastInsertId(); // Récupère le dernièr ID insérer de la dernière requête

			$insertCom = $bdd->prepare('INSERT INTO comments (comment, id_article, id_user, date) VALUES (:comment, :id_article, :id_user, NOW())');
			$insertCom->bindValue(':comment', $post['commentaire'], PDO::PARAM_STR);
			$insertCom->bindValue(':id_article', $post['id_article'], PDO::PARAM_INT);
			$insertCom->bindValue(':id_user', $user_id, PDO::PARAM_INT);

			if($insertCom->execute()){
				$formSuccess = true;
			}

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
				Votre commentaire a été publié ! <a href="read.php?id=<?php echo $_GET['idArticle']; ?>" class="link">&raquo; Retour à l'article</a>
			</div>
		<?php endif; ?>


		<form method="POST">
			<input type="hidden" name="id_article" value="<?php echo $_GET['idArticle']; ?>">

			<label for="pseudo">Pseudo</label>
			<input type="text" name="pseudo" placeholder="Votre pseudo">

			<br>

			<label for="commentaire">Commentaire</label>
			<textarea name="commentaire" cols="40" rows="10"></textarea>

			<br>


			<input type="submit" value="Envoyer">

		</form>

	</main>
<?php include_once 'inc/footer.php'; ?>