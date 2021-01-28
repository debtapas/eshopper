<?php
	/*
		Template Name: Datatable
	*/
get_header();?>

<div class="container">
	<div class="row">
		<table>
		    <thead>
		    	<?php
		    		global $wpdb;
		    		$post_title = $wpdb->get_results( "SELECT * FROM books" );
		    	?>
		        <tr>
		            <th>Column 1</th>
		        </tr>
		    </thead>

		    <tbody>
		    	<tr>

			    <?php
			    		global $wpdb;
			    		//$post_title = $wpdb->get_col( "SELECT post_title from wp_posts" );
				    		//echo "<pre>"; 
						    //print_r($post_title);
			    		$all_posts = $wpdb->get_results( "SELECT * from wp_posts" );
			    			
			    			
			    		echo "<pre>";
			    		print_r($all_posts);
			    		//print_r($all_posts[0]->post_name);

			    		foreach ($all_posts as $print) {
			    			echo '<br>'. $print->post_name;
			    		}
			    		//print_r($all_posts);
			    ?>
			   </tr>
		    
		    </tbody>

		    
		</table>		
	</div>
</div>

<?php get_footer();?>