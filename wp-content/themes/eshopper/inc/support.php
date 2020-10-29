<?php 

function eshopper_post_thumbnails() {
	add_theme_support('woocommerce');                //Declare WooCommerce support in your theme ~~~~~~~~~~~~~~~~~~
    add_theme_support( 'post-thumbnails' );          //Add featured image setting in the dashboard ~~~~~~~~~~~~~~~~~~~~~~
}
add_action( 'after_setup_theme', 'eshopper_post_thumbnails' );


//Register Nav Menus ~~~~~~~~~~~~~~~~~~~~~
function register_my_menus() {
  register_nav_menus(
    array(
      'header-menu' => __( 'Header Menu' ),
      'service' => __( 'Service' ),
      'quock-shop' => __( 'Quock Shop' ),
      'policies' => __( 'Policies' ),
      'about-shopper' => __( 'About Shopper' )
    )
  );
}
add_action( 'init', 'register_my_menus' );



// Custom post type for Front page Banner ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

function eshopper_banner_custom_post() {
	  $labels = array(
	    'name'               => _x( 'Banner', 'post type general name' ),
	    'singular_name'      => _x( 'Banner', 'post type singular name' ),
	    'add_new'            => _x( 'Add New', 'banner' ),
	    'add_new_item'       => __( 'Add New Banner' ),
	    'edit_item'          => __( 'Edit Banner' ),
	    'new_item'           => __( 'New Banner' ),
	    'all_items'          => __( 'All Banners' ),
	    'view_item'          => __( 'View Banner' ),
	    'search_items'       => __( 'Search Banners' ),
	    'not_found'          => __( 'No products found' ),
	    'not_found_in_trash' => __( 'No products found in the Trash' ), 
	    //'parent_item_colon'  => ’,
	    'menu_name'          => 'Banners'
	  );

	  $args = array(
	    'labels'        => $labels,
	    'description'   => 'Holds our products and product specific data',
	    'public'        => true,
	    'menu_position' => 5,
	    'supports'      => array( 'title', 'editor', 'thumbnail', 'excerpt', 'comments' ),
	    'has_archive'   => true,
	  );
	  register_post_type( 'banners', $args ); 
}

add_action( 'init', 'eshopper_banner_custom_post' );


// Options Page by ACF ~~~~~~~~~~~~~~~~~~~~
if( function_exists('acf_add_options_page') ) {
	
	acf_add_options_page(array(
		'page_title' 	=> 'Theme General Settings',
		'menu_title'	=> 'Theme Settings',
		'menu_slug' 	=> 'theme-general-settings',
		'capability'	=> 'edit_posts',
		'redirect'		=> false
	));
	
	acf_add_options_sub_page(array(
		'page_title' 	=> 'Theme Header Settings',
		'menu_title'	=> 'Header',
		'parent_slug'	=> 'theme-general-settings',
	));
	
	acf_add_options_sub_page(array(
		'page_title' 	=> 'Theme Footer Settings',
		'menu_title'	=> 'Footer',
		'parent_slug'	=> 'theme-general-settings',
	));
	
}


//Remove breadcrumb action ~~~~~~~~~~~~~~~~~~~~~
remove_action('woocommerce_before_main_content', 'woocommerce_breadcrumb', 20);

//Remove Result Count action ~~~~~~~~~~~~~~~~~~~~~
remove_action('woocommerce_before_shop_loop', 'woocommerce_result_count', 20);

//Remove Catalog Ordering/Shorting action ~~~~~~~~~~~~~~~~~~~~~
remove_action('woocommerce_before_shop_loop', 'woocommerce_catalog_ordering', 30);

//Remove Product Archive rating action ~~~~~~~~~~~~~~~~~~~~~
remove_action('woocommerce_after_shop_loop_item_title', 'woocommerce_template_loop_rating', 5);

//Remove Product Archive rating action ~~~~~~~~~~~~~~~~~~~~~
//remove_action('woocommerce_after_shop_loop_item', 'woocommerce_template_loop_add_to_cart', 10);

//Remove Archive product Default Sidebar ~~~~~~~~~~~~~~~~~~~~~
remove_action('woocommerce_sidebar', 'woocommerce_get_sidebar', 10);


/**
 * Show cart contents / total Ajax
 */
add_filter( 'woocommerce_add_to_cart_fragments', 'woocommerce_header_add_to_cart_fragment' );

function woocommerce_header_add_to_cart_fragment( $fragments ) {
	global $woocommerce;

	ob_start();

	?>
	<a class="cart-customlocation" href="<?php echo esc_url(wc_get_cart_url()); ?>" title="<?php _e('View your shopping cart', 'woothemes'); ?>"><?php echo sprintf(_n('%d item', '%d items', $woocommerce->cart->cart_contents_count, 'woothemes'), $woocommerce->cart->cart_contents_count);?> – <?php echo $woocommerce->cart->get_cart_total(); ?></a>
	<?php
	$fragments['a.cart-customlocation'] = ob_get_clean();
	return $fragments;
}

//Remove woocommerce show product thumbnails ~~~~~~~~~~~~~~~~~~~~~
//remove_action( 'woocommerce_product_thumbnails', 'woocommerce_show_product_thumbnails', 20 );


function eshoper_add_carosoul_product_page(){

	global $product;
	$attachment_ids = $product->get_gallery_image_ids();
	
	if ( $attachment_ids && $product->get_image_id() ) :
		
	?>

		<div id="similar-product" class="carousel slide" data-ride="carousel">			
			  <!-- Wrapper for slides -->
			    <div class="carousel-inner">
			    	<?php
			    		$i=0;						
							foreach ( $attachment_ids as $attachment_id ) : 
									$image_link = wp_get_attachment_url( $attachment_id );									
								?>
								<div class="item <?php if( $i==0 ) {echo 'active';}?> ">
								  <a href=""><img src="<?php echo $image_link; ?>" alt=""></a>
								</div>
							<?php
							$i++;
							endforeach; ?>
				</div>

			  <!-- Controls -->
			  <a class="left item-control" href="#similar-product" data-slide="prev">
				<i class="fa fa-angle-left"></i>
			  </a>
			  <a class="right item-control" href="#similar-product" data-slide="next">
				<i class="fa fa-angle-right"></i>
			  </a>
		</div>
	<?php endif; }

add_action( 'woocommerce_product_thumbnails', 'eshoper_add_carosoul_product_page');


/**
	 * Hook: woocommerce_single_product_summary.
	 *
	 * @hooked woocommerce_template_single_title - 5
	 * @hooked woocommerce_template_single_rating - 10
	 * @hooked woocommerce_template_single_price - 10
	 * @hooked woocommerce_template_single_excerpt - 20
	 * @hooked woocommerce_template_single_add_to_cart - 30
	 * @hooked woocommerce_template_single_meta - 40
	 * @hooked woocommerce_template_single_sharing - 50
	 * @hooked WC_Structured_Data::generate_product_data() - 60
	 * 
	 * do_action( 'woocommerce_single_product_summary' );
*/

// Add SKU Template in Single Product page ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
function eshopper_get_sku_after_title(){

	global $product;
		$sku = $product->get_sku();
		$sku_num = ( $sku ? $sku : 'N/A' );
	?>

	<p class="custom_sku">
		<?php esc_html_e( 'Web ID: ', 'eshopper' ); echo $sku_num; ?>
	</p>
<?php
}
add_action( 'woocommerce_single_product_summary', 'eshopper_get_sku_after_title', 6 );


// Remove Template Single Excerpt ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
remove_action( 'woocommerce_single_product_summary', 'woocommerce_template_single_excerpt', 20 );

function eshoper_single_product_avail(){
	global $product;
	$isstock = ( $product->is_in_stock() ? 'In Stock' : 'Out of Stock' );
	echo '<p>';
	_e( '<b>Availability:</b>: ', 'eshopper' ); echo $isstock;
	echo "</p>";
}
add_action( 'woocommerce_single_product_summary', 'eshoper_single_product_avail', 39);



// Add Brand in Single Product page Description ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
function add_brand_to_product_page(){
	$all_terms = wp_get_post_terms( get_the_id(), 'brand' );

	foreach ($all_terms as $term) {
		if ($term->name) {
			echo "<b>Brand: </b>" . $term->name;
		}
	}
}
add_action( 'woocommerce_single_product_summary', 'add_brand_to_product_page', 45 );


// Add Social Share Button ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
function custom_social_share(){
	?>
		<a href=""><img src="<?php echo get_theme_file_uri() . '/images/product-details/share.png'; ?>" class="share img-responsive" alt=""></a>
	<?php
}

add_action( 'woocommerce_single_product_summary', 'custom_social_share', 50);



// Add a custom product data tab in product page ~~~~~~~~~~~~~~~~~~~~~~~~~~~~

function eshopper_woo_new_product_tab( $tabs ) {
	
	// Adds Company Profile ~~~~
	
	$tabs['compaany_profile_tab'] = array(
		'title' 	=> __( 'Company Profile', 'woocommerce' ),
		'priority' 	=> 50,
		'callback' 	=> 'woo_new_product_tab_company_profile_content'
	);


	// Adds Tags ~~~~
	
	$tabs['tags_tab'] = array(
		'title' 	=> __( 'Tags', 'woocommerce' ),
		'priority' 	=> 50,
		'callback' 	=> 'woo_new_product_tab_tags_content'
	);

	return $tabs;

}
function woo_new_product_tab_company_profile_content() {

	// The new tab content
	$brandcontents = wp_get_post_terms( get_the_id(), 'brand' );

	foreach ($brandcontents as $brandcontent) {

		$get_term_id = get_term_meta($brandcontent->term_id, 'cat_term_img', true );

		if ($brandcontent) {

			echo "<img src='". $get_term_id . "' alt='' width='80px'; height='auto'/> </br>";
			echo "<b>Brand: </b>" . $brandcontent->name . "</br>";
			echo "<p> " . $brandcontent->description . "</p>";
		}
	
	}
}
add_filter( 'woocommerce_product_tabs', 'eshopper_woo_new_product_tab' );


// Callback Function of  tab content~~~~~~~~~

function woo_new_product_tab_tags_content() {
	echo "<p>";

	// The Tags content
	$alltags = wp_get_post_terms( get_the_id(), 'product_tag' );
		// echo "<pre>";
		// var_dump($alltags);
		foreach ($alltags as $alltag) {
			echo "<b>" . $alltag->name . ", </b>";
		}
	echo "<p>";
}



// Reorder product data tabs ~~~~~~~~~~~~~~~~~~~

function eshopper_reorder_tabs( $tabs ) {

	$tabs['description']['priority'] = 5;			// Description second	
	$tabs['compaany_profile_tab']['priority'] = 10;			// Description second	
	$tabs['tags_tab']['priority'] = 15;			// Description second	
	$tabs['reviews']['priority'] = 20;			// Reviews first	
	$tabs['additional_information']['priority'] = 25;	// Additional information third

	return $tabs;
}
add_filter( 'woocommerce_product_tabs', 'eshopper_reorder_tabs', 98 );

// remove default pagination ~~~~~~~~~~~~~~~~~~~
remove_action( 'woocommerce_after_shop_loop', 'woocommerce_pagination', 10 );


// Add custom pagination ~~~~~~~~~~~~~~~~~~~
function eshopper_custom_pagination($numpages = '', $pagerange = '', $paged='') {

  if (empty($pagerange)) {
    $pagerange = 2;
  }
  global $paged;
  if (empty($paged)) {
    $paged = 1;
  }
  if ($numpages == '') {
    global $wp_query;
    $numpages = $wp_query->max_num_pages;
    if(!$numpages) {
        $numpages = 1;
    }
  }

  $pagination_args = array(
    'base'            => get_pagenum_link(1) . '%_%',
    'format'          => 'page/%#%',
    'total'           => $numpages,
    'current'         => $paged,
    'show_all'        => False,
    'end_size'        => 1,
    'mid_size'        => $pagerange,
    'prev_next'       => True,
    'prev_text'       => __('«'),
    'next_text'       => __('»'),
    'type'            => 'array',
    'add_args'        => false,
    'add_fragment'    => ''
  );

 $paginate_links = paginate_links($pagination_args);

 if (is_array($paginate_links)) {
   echo "<ul class='pagination'>";
   //echo "<span class='page-numbers page-num'>Page " . $paged . " of " . $numpages . "</span> ";
   foreach ( $paginate_links as $page ) {
     echo "<li>" . $page . "</li>";
   }
   echo '</ul>';
 }
}
//add_action( 'woocommerce_after_shop_loop', 'eshopper_custom_pagination', 10 );

