<?php
/* get all locations*/

if(isset($_GET['location_id']) && !empty($_GET['location_id'])){
	$location_id = $_GET['location_id'];
	require_once('includes/config.php');
	require_once(ROOT.'/lib/locations.php');

	$obj_loc = new locations();
	$results = $obj_loc->get_location_detail($location_id);
	//print_r($results);
	echo '<a href="index.php">Back to List</a><br /><br />';
	echo 'Title:'.$results['title'].'<br /><br />';
	echo 'City:'.$results['city'].'<br /><br />';
	echo 'Zip:'.$results['zip'].'<br /><br />';
	echo 'Lat:'.$results['lat'].'<br /><br />';
	echo 'Log:'.$results['log'].'<br /><br />';
	echo 'Description:'.$results['description'].'<br /><br />';
	echo '<img src="'.$results['loc_image'].'"><br /><br />';
	?>
<div id="googleMap" style="width:800px;height:500px;"></div>
<script>
	var marker;
	function initMap() {
	  var map = new google.maps.Map(document.getElementById('googleMap'), {
		zoom: 13,
		center: {lat: <?php echo $results['lat'];?>, lng: <?php echo $results['log'];?>}
	  });

	  marker = new google.maps.Marker({
		map: map,
		draggable: true,
		animation: google.maps.Animation.DROP,
		position: {lat: <?php echo $results['lat'];?>, lng: <?php echo $results['log'];?>}
	  });
	  marker.addListener('click', toggleBounce);
	}

	function toggleBounce() {
	  if (marker.getAnimation() !== null) {
		marker.setAnimation(null);
	  } else {
		marker.setAnimation(google.maps.Animation.BOUNCE);
	  }
	}
</script>
<script src="http://maps.googleapis.com/maps/api/js?callback=initMap"></script>
<?php
}
