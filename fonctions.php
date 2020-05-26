<?php
    function entete($Learnge) {
    	echo '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
			<html xmlns="http://www.w3.org/1999/xhtml">

			<head>
				<title> Learnge </title>
				<link href="learnge.css"   rel = "stylesheet"/>
				<meta name="keywords" content="motcle" />
			    <meta name="author" content="site" />
			    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
			</head>
			<body>

			 	<div id="bandeau"><img class="wave" src="wave.jpg"  alt="http://clipart-library.com/images/qcBXgnM4i.png" /></div> 
<br/>
<br/>
	<div id="menu"> 
		<ul>
      		<li> <a href= "first.html"> Accueil </a> </li>
     		<li> <a href= "second.html"> Convertisseur </a></li>
     		<li> <a href= "third.html"> Enfants </a></li>
     		<li> <a href= "forth.html"> Adolescences </a></li>
      		<li> <a href= "last.html"> Inscriptions </a></li>
   		</ul>
	</div>

<br/>
<br/>

	<div id="corps">
			<h1>  Vos résultats: </h1>
	</div>';
			 }

	function piedpage() {
        echo "<div id='piedpage'> © Natia Davitashvili </div> 
            </body>
            </html>";
                }

    function tableau($tableau) {
        echo "<table align='center'>";
        foreach ($tableau as $line) {
            echo "<tr style='border: medium solid #6495ed'><td style='border: medium solid black'>".$line."</td></tr>";
        }
        echo "</table>";
    }




?>
	 