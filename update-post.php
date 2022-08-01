<?php
// https://www.youtube.com/watch?v=gvh7goFfeR4

require_once 'wp-load.php';

$url = 'http://localhost/eshopper/wp-json/wp/v2/posts/178';

$post_update = wp_remote_post( $url, array(

    'headers' => array(
        'Authorization' => 'Basic ' . base64_encode("admin:admin"),
    	),

    'body'    => array(
    	"title"		=> "Wellness Mama updated value once again",
    	"content"	=> "A mother of six, a journalist, the founder, and a chief wellness mama, Katie Wells started her blog as a repository of information for women and other moms.",
    	"status"	=>	"publish"
    	)
) );

$body_response = json_decode($post_update['body']);

if(!empty($body_response)){
	echo "The post with the title" . $body_response->title->rendered . "has been updated.";
}