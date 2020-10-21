<?php

function add_theme_scripts() {
  wp_enqueue_style( 'style', get_stylesheet_uri() ); 
  wp_enqueue_style( 'main-css', get_template_directory_uri() . '/css/main.css', array(), '1.1', 'all');
  wp_enqueue_style( 'bootstrap-css', get_template_directory_uri() . '/css/bootstrap.min.css', array(), '1.1', 'all');
  wp_enqueue_style( 'font-awesome-min-css', get_template_directory_uri() . '/css/font-awesome.min.css', array(), '1.1', 'all');
  wp_enqueue_style( 'prettyPhoto-css', get_template_directory_uri() . '/css/prettyPhoto.css', array(), '1.1', 'all');
  wp_enqueue_style( 'price-range-css', get_template_directory_uri() . '/css/price-range.css', array(), '1.1', 'all');
  wp_enqueue_style( 'animate-css', get_template_directory_uri() . '/css/animate.css', array(), '1.1', 'all');
  wp_enqueue_style( 'responsive-css', get_template_directory_uri() . '/css/responsive.css', array(), '1.1', 'all');

  wp_enqueue_script( 'jquery-js', get_template_directory_uri() . '/js/jquery.js', array(), '1.0.0', true );
  wp_enqueue_script( 'bootstrap-min-js', get_template_directory_uri() . '/js/bootstrap.min.js', array(), '1.0.0', true );
  wp_enqueue_script( 'jquery-scrollUp-min-js', get_template_directory_uri() . '/js/jquery.scrollUp.min.js', array(), '1.0.0', true );
  wp_enqueue_script( 'price-range-js', get_template_directory_uri() . '/js/price-range.js', array(), '1.0.0', true );
  wp_enqueue_script( 'jquery-prettyPhoto-js', get_template_directory_uri() . '/js/jquery.prettyPhoto.js', array(), '1.0.0', true );
  wp_enqueue_script( 'main-js', get_template_directory_uri() . '/js/main.js', array(), '1.0.0', true );

 }

add_action( 'wp_enqueue_scripts', 'add_theme_scripts' );

