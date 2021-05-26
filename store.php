<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);
header('Content-type: application/json');
include_once('db.php');
$rawdata = file_get_contents("php://input");
$data = json_encode($rawdata);

$cleandata = json_decode($rawdata,true);
print_r($cleandata);
if(isset($cleandata['id'])){
$id = $cleandata['id'];
}
$assets = $cleandata['gjs-assets'] ;
$components = $cleandata['gjs-components'] ;
$css =  $cleandata['gjs-css'] ;
$html = $cleandata['gjs-html'] ;
$styles =  $cleandata['gjs-styles'];
 
if (isset($id)){
    $sql = 
    "UPDATE `data_raw` SET `data`= ?,`assets`= ?,`components`=?,`css`= ?,`html`=?,`styles`=? WHERE `id` = ?";
    $statement= $conn->prepare($sql);
    $statement->bind_param('ssssssi',$rawdata,$assets,$components,$css,$html,$styles,$id);
    $statement->execute();
}else{
    $sql = "INSERT INTO `data_raw` (`data`,`html`,`components`,`assets`,`css`,`styles`) VALUES (?,?,?,?,?,?)  ";
    $statement= $conn->prepare($sql);
    $statement->bind_param('ssssss',$rawdata,$html,$components,$assets,$css,$styles);
    $statement->execute();
}

?>