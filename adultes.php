<?php 
	require_once("fonctions.php"); //cela permet d'importer une fois seulement le fichier
	entete("Learnge"); //on appelle la fonction entete 

 	$serveur = "localhost" ; // par défaut
	$bd = "alphabet" ; // le nom exact de ma base de données
	$login = "root" ; // login de connexion sur phpmyadmin
	$mdp = "root" ; // mot de passe de connexion sur phpmyadmin

	try {
	// Connexion à MySQL avec affichage des résultats en UTF-8
	$sql = new PDO('mysql:host='.$serveur.';dbname='.$bd, $login,
	$mdp, array(PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8")) ;
	}
	catch(PDOException $e) {
	echo "Erreur de connexion à la base de données ".
	$e->getMessage() ;
	die();
	}


	foreach($_GET as $value)
{ 

		$requete = $sql->prepare("SELECT * FROM couleurs WHERE engeo=:engeo");
		$requete->bindParam(':engeo', $value );
		$resultat=$requete->execute();


		//fetch va aller chercher
		$ligne = $requete->fetch(PDO::FETCH_OBJ) ;
		
		echo '<p>'.$ligne->engeo.'</p>';

}



	$file = 'essai.txt';
	// Ouvrir un fichier pour lire un contenu existant
	$current = file_get_contents($file);
	// Ajouter ce qu'un utilisateur tape
	$current = $_GET["essai"];
	// Écrire le résultat dans le fichier
	file_put_contents($file, $current);




	if (empty($_GET['essai'])) {
		echo "<p> Dommage,ce champ est vide !</p>"; 		  		
	}
	else 
		{
		echo  "<p> Bien reçu ton essai, merci ! </p>";
	}



	piedpage(); //on appelle le fonction piedpage
?>