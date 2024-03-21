<?php
require 'vendor/autoload.php';
require_once 'conf/config.php';

$template = new League\Plates\Engine('templates', 'tpl');

$id = 0;

if (isset($_POST['id'])){
    $id = $_POST['id'];
}

$result = \Model\Repository::elections($id);

echo $template->render('elections', [
    'v' => $id,
    'result' => $result
]);