	<footer id="footer"><!--Footer-->
		<div class="footer-top">
			<div class="container">
				<div class="row">
					<div class="col-sm-2">
						<div class="companyinfo">
							<h2><span>e</span>-shopper</h2>
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,sed do eiusmod tempor</p>
						</div>
					</div>
					<div class="col-sm-7">
						<div class="col-sm-3">
							<div class="video-gallery text-center">
								<a href="#">
									<div class="iframe-img">
										<img src="<?php echo get_theme_file_uri(). '/images/home/iframe1.png';?>" alt="" />
									</div>
									<div class="overlay-icon">
										<i class="fa fa-play-circle-o"></i>
									</div>
								</a>
								<p>Circle of Hands</p>
								<h2>24 DEC 2014</h2>
							</div>
						</div>
						
						<div class="col-sm-3">
							<div class="video-gallery text-center">
								<a href="#">
									<div class="iframe-img">
										<img src="<?php echo get_theme_file_uri(). '/images/home/iframe2.png';?>" alt="" />
									</div>
									<div class="overlay-icon">
										<i class="fa fa-play-circle-o"></i>
									</div>
								</a>
								<p>Circle of Hands</p>
								<h2>24 DEC 2014</h2>
							</div>
						</div>
						
						<div class="col-sm-3">
							<div class="video-gallery text-center">
								<a href="#">
									<div class="iframe-img">
										<img src="<?php echo get_theme_file_uri(). '/images/home/iframe3.png';?>" alt="" />
									</div>
									<div class="overlay-icon">
										<i class="fa fa-play-circle-o"></i>
									</div>
								</a>
								<p>Circle of Hands</p>
								<h2>24 DEC 2014</h2>
							</div>
						</div>
						
						<div class="col-sm-3">
							<div class="video-gallery text-center">
								<a href="#">
									<div class="iframe-img">
										<img src="<?php echo get_theme_file_uri(). '/images/home/iframe4.png';?>" alt="" />
									</div>
									<div class="overlay-icon">
										<i class="fa fa-play-circle-o"></i>
									</div>
								</a>
								<p>Circle of Hands</p>
								<h2>24 DEC 2014</h2>
							</div>
						</div>
					</div>
					<div class="col-sm-3">
						<div class="address">
							<img src="<?php echo get_theme_file_uri(). '/images/home/map.png';?>" alt="" />
							<p>505 S Atlantic Ave Virginia Beach, VA(Virginia)</p>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<div class="footer-widget">
			<div class="container">
				<div class="row">
					<div class="col-sm-2">
						<div class="single-widget">
							<h2>Service</h2>
								<?php
								wp_nav_menu(
									array(									
										'theme_location'       => 'service',
										'menu'                 => '',
								        'container'            => 'ul',							        
										'container_class'      => '',
								        'container_id'         => '',
								        'container_aria_label' => '',
								        'menu_class'           => 'nav nav-pills nav-stacked',
								        'menu_id'              => '',
								        'echo'                 => true,
								        'fallback_cb'          => 'wp_page_menu',
								        'before'               => '',
								        'after'                => '',
								        'link_before'          => '',
								        'link_after'           => '',
								        'items_wrap'           => '<ul id="%1$s" class="%2$s">%3$s</ul>',
								        'item_spacing'         => 'preserve',
								        'depth'                => 0,
								        'walker'               => ''
										)
									);
								?>
						</div>
					</div>
					<div class="col-sm-2">
						<div class="single-widget">
							<h2>Quock Shop</h2>
							<?php
								wp_nav_menu(
									array(									
										'theme_location'       => 'quock-shop',
										'menu'                 => '',
								        'container'            => 'ul',							        
										'container_class'      => '',
								        'container_id'         => '',
								        'container_aria_label' => '',
								        'menu_class'           => 'nav nav-pills nav-stacked',
								        'menu_id'              => '',
								        'echo'                 => true,
								        'fallback_cb'          => 'wp_page_menu',
								        'before'               => '',
								        'after'                => '',
								        'link_before'          => '',
								        'link_after'           => '',
								        'items_wrap'           => '<ul id="%1$s" class="%2$s">%3$s</ul>',
								        'item_spacing'         => 'preserve',
								        'depth'                => 0,
								        'walker'               => ''
										)
									);
								?>
						</div>
					</div>
					<div class="col-sm-2">
						<div class="single-widget">
							<h2>Policies</h2>
							<?php
								wp_nav_menu(
									array(									
										'theme_location'       => 'policies',
										'menu'                 => '',
								        'container'            => 'ul',							        
										'container_class'      => '',
								        'container_id'         => '',
								        'container_aria_label' => '',
								        'menu_class'           => 'nav nav-pills nav-stacked',
								        'menu_id'              => '',
								        'echo'                 => true,
								        'fallback_cb'          => 'wp_page_menu',
								        'before'               => '',
								        'after'                => '',
								        'link_before'          => '',
								        'link_after'           => '',
								        'items_wrap'           => '<ul id="%1$s" class="%2$s">%3$s</ul>',
								        'item_spacing'         => 'preserve',
								        'depth'                => 0,
								        'walker'               => ''
										)
									);
								?>
						</div>
					</div>
					<div class="col-sm-2">
						<div class="single-widget">
							<h2>About Shopper</h2>
							<?php
								wp_nav_menu(
									array(									
										'theme_location'       => 'about-shopper',
										'menu'                 => '',
								        'container'            => 'ul',							        
										'container_class'      => '',
								        'container_id'         => '',
								        'container_aria_label' => '',
								        'menu_class'           => 'nav nav-pills nav-stacked',
								        'menu_id'              => '',
								        'echo'                 => true,
								        'fallback_cb'          => 'wp_page_menu',
								        'before'               => '',
								        'after'                => '',
								        'link_before'          => '',
								        'link_after'           => '',
								        'items_wrap'           => '<ul id="%1$s" class="%2$s">%3$s</ul>',
								        'item_spacing'         => 'preserve',
								        'depth'                => 0,
								        'walker'               => ''
										)
									);
								?>
						</div>
					</div>
					<div class="col-sm-3 col-sm-offset-1">
						<div class="single-widget">
							<h2>About Shopper</h2>
							<form action="#" class="searchform">
								<input type="text" placeholder="Your email address" />
								<button type="submit" class="btn btn-default"><i class="fa fa-arrow-circle-o-right"></i></button>
								<p>Get the most recent updates from <br />our site and be updated your self...</p>
							</form>
						</div>
					</div>
					
				</div>
			</div>
		</div>
		
		<div class="footer-bottom">
			<div class="container">
				<div class="row">
					<p class="pull-left">Copyright © 2013 E-SHOPPER Inc. All rights reserved.</p>
					<p class="pull-right">Designed by <span><a target="_blank" href="http://www.themeum.com">Themeum</a></span></p>
				</div>
			</div>
		</div>
		
	</footer><!--/Footer--> 

    
    <?php wp_footer(); ?>
</body>
</html>