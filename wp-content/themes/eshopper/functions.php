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
	         
	      </a>
	      <div class="media-body">
			<ul class="sinlge-post-meta">
				<li><i class="fa fa-user"></i><?php printf(__('%s'), get_comment_author_link()) ?></li>
				<li><i class="fa fa-clock-o"></i><?php echo get_post_time( 'g:i a' ); ?></li>
				<li><i class="fa fa-calendar"></i><?php echo get_post_time( 'F j, Y' ); ?></li>
			</ul>
			<p><?php comment_text(); ?></p>
			
			<!-- Reply button of comment section -->
				<?php 
                comment_reply_link( 
                    array_merge( 
                        $args, 
                        array( 
                            //'add_below' => $add_below, 
                            // 'depth'     => $depth, 
                            // 'max_depth' => $args['max_depth'],
                            'reply_text' => __('<i class="fa fa-reply"></i> Replay</a>', 'textdomain'),
                        ) 
                    ) 
                ); ?>
       
		</div>
	      <?php if ($comment->comment_approved == '0') : ?>
	         <em><?php _e('Your comment is awaiting moderation.') ?></em>
	         <br />
	      <?php endif; ?>
	     </div>
    </li>	
<?php }