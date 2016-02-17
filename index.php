<?php
/* get all locations*/
require_once('includes/config.php');
require_once(ROOT.'/lib/locations.php');

$obj_loc = new locations();
$results = $obj_loc->get_location();

/* loop through the results*/
foreach($results as $result){
	echo '<a href="template.php?location_id='.$result['location_id'].'">'.$result['city'].'</a><br />';
}
