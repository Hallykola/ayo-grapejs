<?php
include_once('db.php');
 header('Content-type: application/json');

if(isset($_REQUEST['base'])){
    $id= $_REQUEST['base'];

//print_r($id);
$sql = "SELECT * FROM `data_raw` WHERE `id`= ?";
$statement = $conn->prepare($sql);
$statement->bind_param('i',$id);
$statement->execute();
$result = $statement->get_result();
$data = $result->fetch_assoc();
//echo json_encode($data['data']);
//echo $data['data'];

 $response['id'] = $id;
 $response['gjs-assets'] = $data['assets'] ;
 $response['gjs-components'] = $data['components'];
 $response['gjs-css'] = $data['css'];
 $response['gjs-html'] = $data['html'];
 $response['gjs-styles'] = $data['styles'];
 
 $json_response = json_encode($response);
 echo $json_response;
}
elseif(isset($_REQUEST['id'])){

    $id= $_REQUEST['id'];

//print_r($id);
$sql = "SELECT * FROM `data_raw` WHERE `id`= ?";
$statement = $conn->prepare($sql);
$statement->bind_param('i',$id);
$statement->execute();
$result = $statement->get_result();
$data = $result->fetch_assoc();

 $response['id'] = $id;
 $response['gjs-assets'] = $data['assets'] ;
 $response['gjs-components'] = $data['components'];
 $response['gjs-css'] = $data['css'];
 $response['gjs-html'] = $data['html'];
 $response['gjs-styles'] = $data['styles'];
 
 $json_response = json_encode($response);
 echo $json_response;
}else{
    $sql = "SELECT * FROM `data_raw` ";
    $statement = $conn->prepare($sql);
    $statement->execute();
    $data = $statement->get_result()->num_rows;

    $response['id'] = $data+1;
 $response['gjs-assets'] = "''" ;
 $response['gjs-components'] = "''";
 $response['gjs-css'] = "''";
 $response['gjs-html'] = "''";
 $response['gjs-styles'] = "''";
 
 $json_response = json_encode($response);
 echo $json_response;
}

?>