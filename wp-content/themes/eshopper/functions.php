<?php
include( get_template_directory() . '/inc/support.php' );
include( get_template_directory() . '/inc/enqueue.php' );
include( get_template_directory() . '/inc/theme_support.php' );
include( get_template_directory() . '/inc/brand.php' );


// Disable Gutenberg without a Plugin ~~~~~~~~~~~~~~~~~~~~~
add_filter( 'use_block_editor_for_post', '__return_false' );



//https://www.youtube.com/watch?v=p2zsIJYBOEg&t=186s
function eshopper_custom_comments($comment, $args, $depth) {

   $GLOBALS['comment'] = $comment; ?>

   <li class="media <?php comment_class(); ?>" id="li-comment-<?php comment_ID() ?>">

	     <div id="comment-<?php comment_ID(); ?>">
	      <a class="pull-left">
	         <?php echo get_avatar($comment,$size='121',$default='<path_to_url>' ); ?>
	 
	         <?php printf(__('<cite class="fn">%s</cite> <span class="says">says:</span>'), get_comment_author_link()) ?>
	      </a>
	      <?php if ($comment->comment_approved == '0') : ?>
	         <em><?php _e('Your comment is awaiting moderation.') ?></em>
	         <br />
	      <?php endif; ?>
	 
	      <div class="comment-meta commentmetadata">
	          <a href="<?php echo htmlspecialchars( get_comment_link( $comment->comment_ID ) ) ?>">
	              <?php printf(__('%1$s at %2$s'), get_comment_date(),  get_comment_time()) ?>
	          </a>
	          <?php edit_comment_link(__('(Edit)'),'  ','') ?>
	      </div>
	 
	      <?php comment_text() ?>
	 
	      <a class="btn btn-primary reply">
			
			<?php comment_reply_link(array_merge( $args, array(
				'reply_text' => __('<i class="fa fa-reply"></i> Replay', 'textdomain'),
				'depth' => $depth,
				'max_depth' => $args['max_depth']
			))); ?>

	      </a>

	     </div>
    </li>	
<?php }

/**
* 1.Edit my account menu order
*/
function my_account_menu_order() {
    $menuOrder = array(
       'dashboard' => __( 'Dashboard', 'woocommerce' ),
       'orders' => __( 'Orders', 'woocommerce' ),
       'downloads' => __( 'Download', 'woocommerce' ),
       'edit-address' => __( 'Addresses', 'woocommerce' ),
       'edit-account' => __( 'Account Details', 'woocommerce' ),
       'rewards' => __( 'Your Rewards', 'woocommerce' ),
       'customer-logout' => __( 'Logout', 'woocommerce' ),
  );
 return $menuOrder;
}
add_filter ( 'woocommerce_account_menu_items', 'my_account_menu_order' );
/**
* 2.Register new endpoints to use inside My Account page.
*/
     add_action( 'init', 'my_account_new_endpoints' );
     function my_account_new_endpoints() {
     add_rewrite_endpoint( 'rewards', EP_ROOT | EP_PAGES );
}
/**
* 3.Get new endpoint content
*/
// Rewards
 add_action( 'woocommerce_account_rewards_endpoint', 'rewards_endpoint_content' );
    function rewards_endpoint_content() {
 get_template_part('/woocommerce/myaccount/my-account-rewards');
}


//1// https://www.youtube.com/watch?v=mzSTO3HtoPw
//2//https://www.youtube.com/watch?v=HafkLf1EPdw
//https://codex.wordpress.org/Customizing_the_Login_Form


// Customization of Login Form
function my_custom_login_error_msg($error){
	//code for custom error messages
	global $errors;

	//empty_password, invalid_username, incorrect_password,  empty_username
	//$error_code = $errors->get_error_codes();
	$error_code = $errors->get_error_codes();

	$error_msg = '';
	if(in_array('empty_password', $error_code)){
		$error_msg = "You have no value in password field";
	}
	if(in_array('invalid_username', $error_code)){
		$error_msg = "Invalid username DETECTED";
	}

	if(in_array('incorrect_password', $error_code)){
		$error_msg = "Incorrect password found in your field";
	}
	return $error_msg;

}
add_filter("login_errors", "my_custom_login_error_msg");

function my_log_in_custom_msg(){
	// Login message to show to users login page
	return "<p style='text-align: center;font-size: 16px;'>A free e-commerce bootstrap template based on Bootstrap</p>";
}
add_filter("login_message", "my_log_in_custom_msg");


function custom_link_to_logo(){
	// code to attach url to our logo
	return "yahoo.com";

}
add_filter("login_headerurl", "custom_link_to_logo");


function my_custom_link(){
	//append custom url link in footer
	echo "<p style = 'text-aling'><a href='www.google.com'>Google</a></p>";
}
add_action("login_footer", "my_custom_link");



// Customize wordpress login form 

function my_custom_logo(){
	//code to change logo
	$logo_style = "<style type='text/css'>";
	$logo_style .= ".login h1 a {
            background-image: url('".get_stylesheet_directory_uri()."/images/home/logo.png') !important; }";
	$logo_style .= "</style>";

	echo $logo_style;
}

add_action( "login_head", "my_custom_logo" );