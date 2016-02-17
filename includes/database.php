<?php
class database{
	public function get_connection(){
		$mysqli = new mysqli("localhost", "root", "designz@5", "airl");/*host, db username, db password, db name*/
		if($mysqli->connect_error){
			die('Connect Error (' . mysqli_connect_errno() . ') '. mysqli_connect_error());
		}
	   return $mysqli;
	}
}
