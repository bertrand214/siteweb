<?php include_once 'inc/connexion.php'; ?>
<?php include_once 'inc/header.php'; ?>
	<main>

		<?php 
			// On séléctionne 5 articles (LIMIT) que l'on tri par date DESCendante (ORDER BY)
			$req = $bdd->prepare('SELECT * FROM articles WHERE id = :id_article');
			$req->bindValue(':id_article', $_GET['id'], PDO::PARAM_INT);
			if($req->execute()){
				$article = $req->fetch(PDO::FETCH_ASSOC);
			}
			else {
				echo '<div class="error">Une erreur est survenue. Veuillez réessayer plus tard.</div>';
			}
		?>


		<?php 
			// Si $articles contient notre contenu, on affiche le tout
			if(isset($article) && !empty($article)): 
		?>
		  	<article>
		  		<h1><?php echo $article['title']; ?></h1>
		  		<img src="<?php echo $article['img']; ?>" class="caption">
			  	<p><?php echo $article['content']; ?></p>
		  	</article>

		  	<div class="commentaires">
			  	<?php
			  		$reqCom = $bdd->prepare('SELECT * FROM comments WHERE id_article = :id_article');
			  		$reqCom->bindValue(':id_article', $article['id'], PDO::PARAM_INT);
			  		if($reqCom->execute()){
			  			$commentaires = $reqCom->fetchAll(PDO::FETCH_ASSOC);
			  		}

			  		if(isset($commentaires) && !empty($commentaires)):
		  				foreach($commentaires as $comment):

		  					$commentDate = date('d/m/Y H:i', strtotime($comment['date']));

		  					$reqUser = $bdd->prepare('SELECT nickname FROM users WHERE id = :id_user');
			  				$reqUser->bindValue(':id_user', $comment['id_user'], PDO::PARAM_INT);
			  				if($reqUser->execute()){
		  						$user = $reqUser->fetch(PDO::FETCH_ASSOC);
		  						$commentBy = $user['nickname'];
			  				}

			  				if(!isset($user) || empty($user)){
			  					$commentBy = 'Anonyme';
			  				}
				?>
					<div class="comment">
						<p class="author">Publié par <?php echo $commentBy; ?> le <?php echo $commentDate; ?></p>
						<p class="content"><?php echo nl2br($comment['comment']); ?></p>
					</div>

				<?php
		  				endforeach; // On ferme la boucle des commentaires
			  		endif; 
			  	?>
			  	<p class="text-center">
			  		<a href="comment.php?idArticle=<?php echo $article['id']; ?>" class="link">
			  			&raquo; Publier un commentaire &laquo;
			  		</a>
		  	</div>


		<?php else: ?>
			<div class="error">Aucun article correspondant n'a été trouvé.</div>
		<?php endif; ?>

	</main>
<?php include_once 'inc/footer.php'; ?>