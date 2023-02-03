<?php
include_once "base.php";

// if ($movie['sh']==1) {
//   $movie['sj']==0;
// }else{
//   $movie['sj']==1;
// }
//$movie['sh']=($movie['sh']==1)?0:1;
$movie['sh']=($movie['sh']+1)%2;

$Movie->save($movie);

?>