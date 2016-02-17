<?php
ini_set('display_errors', 1);
$root = dirname(__DIR__);
$config_file = $root.'/includes/config.php';
$database_file = $root.'/includes/database.php';
require_once($config_file);
require_once($database_file);

class locations{
	public $mysqli, $link;
	public function __construct(){
		/*get the db connection*/
		$this->mysqli = new database();
		$this->link = $this->mysqli->get_connection();
	}
	/* get all locations*/
	public function get_location(){
		/* If we have to retrieve large amount of data we use MYSQLI_USE_RESULT */
		$sql = mysqli_query($this->link, "SELECT location_id, city FROM tbl_locations");
		$results = array();
		if($sql->num_rows > 0){
			while($row = $sql->fetch_assoc()){
				$results[] = $row;
			}
		}
		return $results;
	}
	/* get single locations details*/
	public function get_location_detail($location_id){
		$sql = mysqli_query($this->link, "SELECT title, city, state_id, zip, lat, log, description, loc_image FROM tbl_locations where location_id = '$location_id'");
		$results = array();
		if($sql->num_rows > 0){
			$results = $sql->fetch_assoc();
		}
		return $results;
	}
}

