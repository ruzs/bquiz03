<?php 
include_once "./api/base.php";
for($i=1;$i<10;$i++){
    $data=[];
    $data['name']="預告片".$i;
    $data['img']="03A0".$i.".jpg";
    $data['sh']=1;
    $data['rank']=$i;
    $data['ani']=rand(1,3);
    $Trailer->save($data);
}

$date=['2023-02-11','2023-02-12','2023-02-13','2023-02-10','2023-02-14'];

for($i=1;$i<10;$i++){
    $data=[];
    $data['name']="院線片".$i;
    $data['length']=rand(90,120);
    $data['level']=rand(1,4);
    $data['ondate']=$date[rand(0,4)];
    $data['publish']="發行商".$i;
    $data['director']="導演".$i;
    $data['intro']="院線片 $i 劇情介紹,院線片 $i 劇情介紹,院線片 $i 劇情介紹,院線片 $i 劇情介紹,院線片 $i 劇情介紹";
    $data['trailer']="03B0".$i."v.mp4";
    $data['poster']="03B0".$i.".png";
    $data['sh']=1;
    $data['rank']=$i;
    $Movie->save($data);
}

$date=['2023-02-11','2023-02-12','2023-02-13','2023-02-10','2023-02-14'];

$max_id=$Order->max('id')+1;
for($i=1;$i<10;$i++){
    $data=[];
    $data['num']=date('Ymd') . sprintf("%04d",$max_id+$i-1);
    $data['movie']="院線片".$i;
    $data['date']=$date[rand(0,4)];
    $data['session']=$Order->session[rand(1,5)];
    $data['qt']=rand(1,4);
    for($j=0;$j<$data['qt'];$j++){
        $data['seats'][]=rand(0,19);
    }
    $data['seats']=serialize($data['seats']);

    $Order->save($data);
}