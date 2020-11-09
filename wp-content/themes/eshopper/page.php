<?php get_header(); ?>

	<section>
		<div class="container">
			<div class="row">

				<?php if( wc_get_page_ID( 'my-account' ) != get_the_id() && wc_get_page_ID( 'cart' ) != get_the_id() && wc_get_page_ID( 'checkout' ) != get_the_id() ) : ?>

					<div class="col-sm-3">
						<div class="left-sidebar">
							
							<?php if ( is_active_sidebar( 'page-product' ) ) { ?>
							        <?php dynamic_sidebar('page-product'); ?>
							<?php } ?>
				
						</div>
					</div>

				<?php endif; ?>

				<div class="
						<?php
							if ( wc_get_page_ID( 'my-account' ) != get_the_id() && wc_get_page_id( 'cart' ) != get_the_ID() && wc_get_page_id( 'checkout' ) != get_the_ID() ) {
							  echo "col-md-9";
							} else {
							  echo "col-md-12";
							}
						?>					
					">
				
					<div class="blog-post-area">							

							<?php
								/* Start the Loop */
								while ( have_posts() ) : the_post(); ?>

									<div class="single-blog-post">
									<h2 class="title text-center"><?php the_title(); ?></h2>

									<?php if ( wc_get_page_ID( 'my-account' ) != get_the_id() && wc_get_page_ID( 'cart' ) != get_the_id() && wc_get_page_ID( 'checkout' ) != get_the_id() ) { ?>								

										<div class="post-meta">									
										<ul>
											<li><i class="fa fa-user"></i> <?php the_author(); ?></li>
											<li><i class="fa fa-clock-o"></i><?php echo get_post_time( 'g:i a', true, get_the_id(), true ); ?></li>
											<li><i class="fa fa-calendar"></i><?php echo get_post_time( 'F j, Y', true, get_the_id(), true ); ?></li>
										</ul>
										<span>
												<i class="fa fa-star"></i>
												<i class="fa fa-star"></i>
												<i class="fa fa-star"></i>
												<i class="fa fa-star"></i>
												<i class="fa fa-star-half-o"></i>
										</span>
									</div>

								<a href="#">
									<?php									

										  if( has_post_thumbnail() ):
											    echo get_the_post_thumbnail();
											endif; 

										} else {
										  echo " ";
										} ?>
								</a>

								
								<p><?php the_content(); ?></p>
								<!-- <a  class="btn btn-primary" href="">Read More</a> -->

								<?php
									// If comments are open or we have at least one comment, load up the comment template.
									if ( comments_open() || get_comments_number() ) {
										comments_template();
									}

								endwhile; // End of the loop.
							?>
						</div>


					</div>
				</div>
			<?php ?>

			</div>
		</div>
	</section>

<?php get_footer(); ?>