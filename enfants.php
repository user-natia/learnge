<?php
    require_once("fonctions.php"); //permettent d'importer une fois seulement 
    entete("Learnge"); //on appelle le fonction entete 

//on a un tableau vide qui va par la suite sera allimenter 
$tableau = array();

    if (empty($_GET["reponse"])) {
        echo "<p>Vous avez rentrez aucune resultat, revenez à l'arrierre et essayez à nouveau</p>"; 
    }
    elseif ($_GET["reponse"] == "მაღალი") {
        echo "<p style='color:gold'  >".$_GET["reponse"] ." veut vraiment dire un grand</p>";
        array_push($tableau, "დიდი", "მოსული", "ახოვანი");
        echo '<p><img src="grand.jpg" alt="cela est grand" width="300" height="225"/></p>';
    }
    elseif ($_GET["reponse"] == "დაბალი") {
        echo "<p style='color:darkkhaki'>".$_GET["reponse"] ." veut vraiment dire un petit</p>";
        array_push($tableau, "ციცქნა", "პაწია", "პაწაწუნა");
        echo '<p><img src="petit.jpg" alt="cela est petit"width="300" height="225"/></p>';
    }
    else {
        echo "<p style='color:darkgreen'>".$_GET["reponse"] ." veut vraiment dire un moyen.</p>";
        array_push($tableau, "ნორმალური", "ჩვეულებრივი", "შუათანა");
        echo '<p><img src="moyen.jpg" alt="cela est normal" width="300" height="225"/></p>';
    }

   
    echo "<h2>Synonymes :</h2>";
     // on appelle le fonction tableau
    tableau ($tableau);


    piedpage(); //on appelle le fonction piedpage
?>