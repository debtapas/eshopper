<?php
// https://www.youtube.com/watch?v=laTRQMBNTiw

require_once 'wp-load.php';

$url = 'http://localhost/eshopper/wp-json/wp/v2/posts/177?force=true';

$post_delete = wp_remote_post( $url, array(
	"method"	=> "DELETE",
    'headers' => array(
        'Authorization' => 'Basic ' . base64_encode("admin:admin"),
    	)
) );
echo "<pre>";
print_r($post_delete);
die();


// $body_response = json_decode($post_delete['body']);

// if(empty($body_response)){
// 	echo "The post with the title" . $body_response->title->rendered . "has been deleted permanantly.";
// }