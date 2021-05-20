<?php
/**
 * Created by PhpStorm.
 * User: WTS
 * Date: 5/18/2021
 * Time: 6:13 AM
 */
$data = $_POST['data'];
echo $data;
if (count($data) == 0) {
    return null;
}
ob_start();
$df = fopen("output.csv", 'w');
fputcsv($df, array_keys(reset($data)));
foreach ($data as $row) {
    fputcsv($df, $row);
}
fclose($df);
return ob_get_clean();