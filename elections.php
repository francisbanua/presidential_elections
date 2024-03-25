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

$mapdata_file = 'mapdata2.js';
$mapdata_content = file_get_contents($mapdata_file);

$mapdata_array = json_decode(preg_replace('/.+?=\s*(\{.+\})\s*;/s', '$1', $mapdata_content), true);

foreach ($result as $r) {
    $image_url = "https://upload.wikimedia.org/wikipedia/commons/f/f3/Green.PNG";
    $description = $r['Percentage'] . "% voted " . $r['Candidate'] . " (" . $r['Party'] . ")";
    if (strpos($r['Party'], 'REPUB') !== false) {
        $image_url = "https://simplemaps.com/static/img/stripes/red.svg";
    } elseif (strpos($r['Party'], 'DEMOC') !== false) {
        $image_url = "https://simplemaps.com/static/img/stripes/blue.svg";
    }

    $mapdata_array['state_specific'][$r['Po']] = [
        'name' => $r['State'],
        'image_url' => $image_url,
        'description' => $description
    ];
}

$updated_mapdata_content = "var mapdata = " . json_encode($mapdata_array, JSON_PRETTY_PRINT) . ";";

file_put_contents($mapdata_file, $updated_mapdata_content);

echo $template->render('elections', [
    'result' => $result,
    'result1' => $result1
]);