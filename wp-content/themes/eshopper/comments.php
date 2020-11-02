<?php
/**
 * The template for displaying Comments.
 *
 * The area of the page that contains comments and the comment form.
 *
 * @package WordPress
 * @subpackage Twenty_Thirteen
 * @since Twenty Thirteen 1.0
 */
 
/*
 * If the current post is protected by a password and the visitor has not yet
 * entered the password we will return early without loading the comments.
 */
?>

					<div class="response-area">
						
						<?php 

						if( have_comments() ) : ?>
							<h2><?php comments_number('NO RESPONSES', 'ONE RESPONSES', '% RESPONSES'); ?></h2>
							
							<ul class="media-list">
								<?php wp_list_comments( 
									'callback=eshopper_custom_comments' ); ?>
							</ul>
							
						<?php endif; ?>					
							
					</div><!--/Response-area-->
					<div class="replay-box">
						<div class="row">	
<!-- 
Function Reference/comment form ~~~~~~~~~
https://developer.wordpress.org/reference/hooks/comment_form_fields/ ~~~~~~~~~~~~~~~~
http://man.hubwiz.com/docset/WordPress.docset/Contents/Resources/Documents/codex.wordpress.org/Function_Reference/comment_form.html ~~~~~~~
 -->
								<?php		
									$commenter = wp_get_current_commenter();
									$req = get_option( 'require_name_email' );
									$aria_req = ( $req ? " aria-required='true'" : '' );
									$consent = empty( $commenter['comment_author_email'] ) ? '' : ' checked="checked"';


									$fields =  array(
									  'author' =>
									    '<div class="col-sm-4">	<div class="blank-arrow"><label for="author">' . __( 'Your Name', 'domainreference' ) . ( $req ? '</div><span class="required">*</span>' : '*' ) . '</label>' .
									    '<input id="author" name="author" placeholder="write your name..." type="text" value="' . esc_attr( $commenter['comment_author'] ) . '" size="30"' . $aria_req . ' />',

									  'email' =>
									    '<div class="blank-arrow"><label for="email">' . __( 'Email Address', 'domainreference' ) .
									    ( $req ? '</div><span class="required">*</span>' : '*' ) . '</label>' . '<input id="email" name="email" placeholder="your email address..." type="email" value="' . esc_attr(  $commenter['comment_author_email'] ) . '" size="30"' . $aria_req . ' />',

									  'url' =>
									    '<div class="blank-arrow"><label for="url">' . __( 'Web Site', 'domainreference' ) . '</label>' .
									    '</div><input id="url" name="url" placeholder="Your website ..." type="text" value="' . esc_attr( $commenter['comment_author_url'] ) . '" size="30" /></div>',

									  // 'fields' => apply_filters( 'comment_form_default_fields', $fields ),
									);

										$args = array(
												// 'id_form'           => 'commentform',
												// 'class_form'      => 'comment-form',
												// 'id_submit'         => 'submit',
												// 'class_submit'      => 'submit',
												// 'name_submit'       => 'submit',
												// 'title_reply_to'    => __( 'Leave a Reply to %s' ),
												// 'cancel_reply_link' => __( 'Cancel Reply' ),
												// 'label_submit'      => __( 'Post Comment' ),
												// 'format'            => 'xhtml',
												'title_reply'       => __( '<h2>Leave a replay</h2>' ),

												'fields'       => $fields,

												'comment_field' =>  '<div class="col-sm-8"><div class="text-area"><div class="blank-arrow"><label for="comment">' . _x( 'Your Name', 'noun' ) . '</label></div><textarea id="comment" name="comment" cols="45" rows="11" aria-required="true">' . '</textarea></div></div>',

												'comment_notes_before' => '<p class="comment-notes"> </p>',
												'comment_notes_after' => '<p class="form-allowed-tags"> </p>',										
											  );

										comment_form($args);
								?>							
						</div> <!-- row -->
					</div><!--/Repaly Box-->