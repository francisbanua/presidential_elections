<?php
require 'vendor/autoload.php';
require_once 'conf/config.php';

$template = new League\Plates\Engine('templates', 'tpl');

$id = 0;

if (isset($_POST['id'])){
    $id = $_POST['id'];
}



$result = \Model\Repository::elections($id);
$result1 = \Model\Repository::elections1($id);

// Read the mapdata2.js file
$mapdata_file = 'mapdata2.js';
$mapdata_content = file_get_contents($mapdata_file);

// Decode the JavaScript object into a PHP associative array
$mapdata_array = json_decode(preg_replace('/.+?=\s*(\{.+\})\s*;/s', '$1', $mapdata_content), true);

// Iterate through the query results and update the state_specific part
foreach ($result as $r) {
    // Determine image_url and description based on the party
    $image_url = "https://upload.wikimedia.org/wikipedia/commons/f/f3/Green.PNG";
    $description = "Voted " . $r['Party'];
    if ($r['Party'] === 'REPUBLICAN') {
        $image_url = "https://simplemaps.com/static/img/stripes/red.svg";
    } elseif ($r['Party'] === 'DEMOCRAT') {
        $image_url = "https://simplemaps.com/static/img/stripes/blue.svg";
    }

    // Update the state_specific part
    $mapdata_array['state_specific'][$r['Po']] = [
        'name' => $r['State'],
        'image_url' => $image_url,
        'description' => $description
    ];
}

// Convert the updated PHP array back to JavaScript object string
$updated_mapdata_content = "var mapdata = " . json_encode($mapdata_array, JSON_PRETTY_PRINT) . ";";

// Save the updated content back to the mapdata2.js file
file_put_contents($mapdata_file, $updated_mapdata_content);

echo $template->render('elections', [
    'result' => $result,
    'result1' => $result1

]);