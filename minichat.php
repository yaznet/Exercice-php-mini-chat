<!DOCTYPE html>
<html>
<head>
	<title>TP : MINI-CHAT</title>
</head>
<style>
</style>
<body>
	<form action="minichat_post.php" method="POST">
		<p>
			<label>Pseudo :</label><input type="text" name="pseudo"><br>
			<label>Message :</label><input type="text" name="message"><br>
			<input type="submit" value="Envoyer">
		</p>
	</form>

	<?php

	try
	{
		$bdd = new PDO('mysql:host=localhost;dbname=test;charset=utf8', 'root', 'root');
	}
	catch(Exception $e)
	{
	        die('Erreur : '.$e->getMessage());
	}

	$chat = $bdd->query('SELECT UPPER(pseudo) AS pseudo_majuscule, message, DATE_FORMAT(date_creation, \'%d/%m/%Y à %Hh%imin\') AS date_fr FROM minichat ORDER BY ID DESC LIMIT 0, 10');

	while ($message = $chat->fetch())
	{
		echo '<p>Le ' . $message[date_fr] . ' <strong>' . htmlspecialchars($message['pseudo_majuscule']) . '</strong>' .' : ' . htmlspecialchars($message['message']) . '</p>';
	}
	
	$compteur = $bdd->query('SELECT COUNT(id) AS nb_message FROM minichat');

	$donnees = $compteur->fetch();

	echo '<p>' . 'Il y a eu ' . '<strong>' . $donnees['nb_message'] . '</strong>' . ' messages depuis la creation du chat.' . '</p>';
	$reponse->closeCursor();

	?>
</body>
</html>