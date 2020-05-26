
<?php
	require("fonctions.php"); //permettent d'importer une fois seulement un fichier même s'il y'a plusieurs tentatives d'importation du fichier dans la page
	entete("Learnge"); //on appelle le fonction entete  

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

	$requete = $sql->prepare("SELECT * FROM etudiants") ;

	$requete->bindParam(':pseudo', $_GET['pseudo']);
	$requete->bindParam(':nom', $_GET['nom']);
	$requete->bindParam(':generation', $_GET['generation']);
	$requete->bindParam(':pays', $_GET['pays']);

	$resultat = $requete->execute();
	if($ligne = $requete->fetch(PDO::FETCH_OBJ)) {
	echo "<p style='color:#F08080'>" . $ligne->pseudo .'  '. $ligne->nom. ', vous êtes un '.$ligne->generation .' vous habitez en '. $ligne->pays .". Enchanté ! Maintenant on se connait :) </p>" ; 
	}


	piedpage(); //on appelle le fonction piedpage
?>

