<?php
//https://www.youtube.com/watch?v=Mfx348MARf8

require_once 'wp-load.php';

$url = 'http://localhost/eshopper/wp-json/wp/v2/posts';

$post_create = wp_remote_post( $url, array(

    'headers' => array(
        'Authorization' => 'Basic ' . base64_encode("admin:admin"),
    	),

    'body'    => array(
    	"title"		=> "Wellness Mama",
    	"content"	=> "A mother of six, a journalist, the founder, and a chief wellness mama, Katie Wells started her blog as a repository of information for women and other moms. She is joined by a team of researchers and medical advisors who produce usable content that caters to different topics, ranging from food recipes, natural remedies, practical tips, and many more.",
    	"status"	=>	"publish"
    	)
) );

$body_response = json_decode($post_create['body']);

if(!empty($body_response)){
	echo "The post with the title" . $body_response->title->rendered . "has been created.";
}