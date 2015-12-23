<?php

/**
 *
 * Tronque une chaine de caractères
 * @param $string (string) la chaine de caractères à tronquer
 * @param $length (int) le nombre de caractères à afficher
 * @return la chaine découpée
 */
function cutString($string, $length = 200){

	// Si notre chaine de caractère fait plus de 200 caractères (param $length)
	if(strlen($string) > $length){
		$newString = mb_substr($string, 0, $length); // Coupe la chaine de caractères
		$last_space = strrpos($newString, ' '); // Recherche le dernier espace afin d'éviter de couper au milieu d'un mot
		$newString = mb_substr($newString, 0, $last_space).'...'; // Découpe la chaine au dernier espace et rajoute '...'
	}
	// Sinon retourne la chaine complète
	else {
		return $string; // Au premier "return" la fonction s'arrète
	}

	return $newString; // Retourne la chaine tronquée
}