
<?php
	require_once("fonctions.php"); //permettent d'importer une fois seulement un fichier même s'il y'a plusieurs tentatives d'importation du fichier dans la page
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

	$requete = $sql->prepare("SELECT * FROM geo WHERE fr_value=:geo_value");
	$requete->bindParam(':geo_value', $_GET['geo_value']);
	$resultat=$requete->execute();


	while($ligne = $requete->fetch(PDO::FETCH_OBJ)) {

	echo '<p>'. $ligne->geo_value.'</p>';
	}

	piedpage(); //on appelle le fonction piedpage
?>

