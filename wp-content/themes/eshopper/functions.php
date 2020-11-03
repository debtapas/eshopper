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

     <!-- <ul class="media-list">
							<li class="media">
								<div class="media-body">
									<ul class="sinlge-post-meta">
										<li><i class="fa fa-user"></i>Janis Gallagher</li>
										<li><i class="fa fa-clock-o"></i> 1:33 pm</li>
										<li><i class="fa fa-calendar"></i> DEC 5, 2013</li>
									</ul>
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.  Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>

									<a class="btn btn-primary" href=""><i class="fa fa-reply"></i>Replay</a>
								</div>
							</li>
						</ul>	 -->		
<?php }