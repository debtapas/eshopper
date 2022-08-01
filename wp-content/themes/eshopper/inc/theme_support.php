<?php
// https://docs.woocommerce.com/document/third-party-custom-theme-compatibility/

function eshopper_post_thumbnails() {
    add_theme_support('woocommerce');         //Declare WooCommerce support in your theme ~~~~~~~~~~~~~~~~~~
    add_theme_support( 'post-thumbnails' );   //Add featured image setting in the dashboard ~~~~~~~~~~~~~~~~~~~~~~
}
add_action( 'after_setup_theme', 'eshopper_post_thumbnails' );


// register_sidebar widget ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
function eshoper_widgets_init() {
    register_sidebar( array(
        'name'          => __( 'Shop Page Sidebar', 'theme-slug' ),
        'id'            => 'sidebar-shop',
        'description'   => __( 'Widgets in this area will be shown on shop and product category pages.', 'theme-slug' ),
        'before_widget' => '<li id="%1$s" class="widget %2$s">',
        'after_widget'  => '</li>',
        'before_title'  => '<h2 class="widgettitle">',
        'after_title'   => '</h2>',
    ) );

    register_sidebar( array(
        'name'          => __( 'Single Product Sidebar', 'theme-slug' ),
        'id'            => 'single-product',
        'description'   => __( 'Widgets in this area will be shown on the single product page.', 'theme-slug' ),
        'before_widget' => '<li id="%1$s" class="widget %2$s">',
        'after_widget'  => '</li>',
        'before_title'  => '<h2 class="singleproductwidgettitle">',
        'after_title'   => '</h2>',
    ) );

    register_sidebar( array(
        'name'          => __( 'Page Sidebar', 'theme-slug' ),
        'id'            => 'page-product',
        'description'   => __( 'Widgets in this area will be shown on page.', 'theme-slug' ),
        'before_widget' => '<li id="%1$s" class="widget page-widget %2$s">',
        'after_widget'  => '</li>',
        'before_title'  => '<h2 class="pagewidgettitle">',
        'after_title'   => '</h2>',
    ) );
}
add_action( 'widgets_init', 'eshoper_widgets_init' );